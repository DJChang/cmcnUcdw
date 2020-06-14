library(readr)
library(dplyr)
library(stringr)
library(lubridate)

# CDW 데이터테이블과 컬럼표 가져오기 -  2020-06-06
# 갱신되면 업데이트 할 것
.cdw_col_name <- readr::read_rds("data/cdw_col_name.rds")
# write_excel_csv(.cdw_col_name, "data/cdw_col_name.csv")
# .cdw_col_name <- readr::read_csv("data/cdw_col_name.csv")
# readr::write_rds(.cdw_col_name, "data/cdw_col_name.rds")
# View(.cdw_col_name)

# 파일정보와 컬럼 명을 넣으면 타겟 변수명 내는 함수
.target_col_name <- function(origin_df, table_type, cdw_col_name){
  ret <- filter(origin_df,
                file == table_type,
                csv_cdw_col == cdw_col_name)
  return(ret$target_col)
}

#.target_col_name(.cdw_col_name,"VTLS", "키") #함수 테스트


# 파일명 정보 가져오기
.csv_file_names <- read_rds("data/csv_file_names.rds")
.file_names <- str_c(.csv_file_names, collapse = "|")

# read_csv() 이용 ------------------------------------------------
cdw_read_csv <- function(file_name, encoding = "CP949"){
  # csv확장자 확인
  if (!endsWith(file_name, ".csv")) {
    if(!endsWith(file_name, ".zip")) {
      stop('not a csv or zip file')
    }
  }
    # 원래 파일 구조 그대로 가지고 있는지 확인 - 데이터 테이블 확인용
  if (!str_detect(file_name, .file_names )){
    stop('not seems to be a CMC nU CDW file, are you using the original file name?')
  }

  # 데이터 테이블 파악하기
  table_type <- str_extract(file_name, .file_names)

  # 컬럼 이름을 영문으로 바꿔주기
  temp_tibble <- readr::read_csv(file_name, locale = locale(encoding = encoding),
                                 guess_max = 10000)

  # 컬럼 이름에서 빈칸 없애기
  temp_tibble_col_names <- names(temp_tibble) %>% str_remove_all(" ")

  # .cdw_col_name 이름에서 빈칸 없애기

  cdw_col_name <- .cdw_col_name
  cdw_col_name$csv_cdw_col %>% str_remove_all(" ") -> cdw_col_name$csv_cdw_col

  new_col_names <- c()
  for (col_name in temp_tibble_col_names) {
    new_col_names <- c(new_col_names, .target_col_name(cdw_col_name, table_type, col_name))
  }
  names(temp_tibble) <- new_col_names

  # 날짜 변수 날짜 타입으로 변경해주기
  temp_tibble %>% mutate_at(vars(ends_with("date")),
                            funs(as.character)) %>%
    mutate_at(vars(ends_with("date")),
              funs(lubridate::as_date)) -> temp_tibble
  return(temp_tibble)
  }

# cdw_read_csv("data/csv_org_16834_subT_samle_ACPT.zip") # 함수 테스트 OK
# cdw_read_csv("data/csv_org_16834_subT_samle_COHT.zip") # 함수 테스트 OK
# cdw_read_csv("data/csv_org_16834_subT_samle_DIAG.zip") # 함수 테스트 OK
# cdw_read_csv("data/csv_org_16834_subT_samle_DRUG.zip") # 함수 테스트 OK
# cdw_read_csv("~/Dropbox/R_Projects/rplus_lecture/liver_safety_temp_ENDO.csv") # 안됨
# cdw_read_csv("data/csv_org_16834_subT_samle_FUNC.zip") # 함수 테스트 OK
# cdw_read_csv("data/csv_org_16834_subT_samle_OPNT.zip") # 함수 테스트 OK
# cdw_read_csv("data/csv_org_16834_subT_samle_OPRS.zip") # 함수 테스트 OK
# cdw_read_csv("data/csv_org_16834_subT_samle_PATH.zip") # 함수 테스트 OK
# cdw_read_csv("data/csv_org_16834_subT_samle_PRCP.zip") # 함수 테스트 OK
# cdw_read_csv("data/csv_org_16834_subT_samle_RADI.zip") # 함수 테스트 OK
# cdw_read_csv("data/csv_org_16834_subT_samle_SPDO.zip") # 안됨
# cdw_read_csv("data/csv_org_16834_subT_samle_VA0800000848.zip") # 함수 테스트 OK
# cdw_read_csv("data/csv_org_16834_subT_samle_VTLS.zip") # 함수 테스트 OK


# read.csv( ) 이용 ----------------------------------------------------------

cdw_read.csv <- function(file_name, sep = ",",
                         quote = "\"",
                         fileEncoding = "CP949",
                         stringsAsFactors = FALSE){
  # csv확장자 확인
  if (!endsWith(file_name, ".csv")) {
      stop('not a csv file')
  }

  # 원래 파일 구조 그대로 가지고 있는지 확인 - 데이터 테이블 확인용
  if (!str_detect(file_name, .file_names )){
    stop('not seems to be a CMC nU CDW file, are you using the original file name?')
  }

  # 데이터 테이블 파악하기
  table_type <- str_extract(file_name, .file_names)

  # 컬럼 이름을 영문으로 바꿔주기
  temp_tibble <- read.csv(file_name, sep = sep,
                          quote = quote,
                          fileEncoding = fileEncoding,
                          stringsAsFactors = FALSE) %>% tibble()

  # 컬럼 이름에서 빈칸 없애기
  temp_tibble_col_names <- names(temp_tibble) %>% str_replace_all("\\.|X", "_")

  # .cdw_col_name 이름에서 빈칸과 다른 문자 없애기

  cdw_col_name <- .cdw_col_name
  cdw_col_name$csv_cdw_col %>% str_replace_all("[ ]|\\(|\\)|/|\\.", "_") -> cdw_col_name$csv_cdw_col

  new_col_names <- c()
  for (col_name in temp_tibble_col_names) {
    new_col_names <- c(new_col_names, .target_col_name(cdw_col_name, table_type, col_name))
  }
  names(temp_tibble) <- new_col_names

  # 날짜 변수 날짜 타입으로 변경해주기
  temp_tibble %>% mutate_at(vars(ends_with("date")),
                            funs(as.character)) %>%
    mutate_at(vars(ends_with("date")),
              funs(lubridate::as_date)) -> temp_tibble
  return(temp_tibble)
}
#
# cdw_read.csv("data/subT_samle_ACPT_장동진.csv")
# cdw_read.csv("data/subT_samle_COHT_장동진.csv")
# cdw_read.csv("data/subT_samle_DIAG_장동진.csv")
# cdw_read.csv("data/subT_samle_DRUG_장동진.csv")
# cdw_read.csv("data/subT_samle_ENDO_장동진.csv")
# cdw_read.csv("~/Dropbox/R_Projects/rplus_lecture/liver_safety_temp_ENDO.csv")
# cdw_read.csv("data/subT_samle_FUNC_장동진.csv")
# cdw_read.csv("data/subT_samle_OPNT_장동진.csv")
# cdw_read.csv("data/subT_samle_OPRS_장동진.csv")
# cdw_read.csv("data/subT_samle_PATH_장동진.csv")
# cdw_read.csv("data/subT_samle_PRCP_장동진.csv")
# cdw_read.csv("data/subT_samle_RADI_장동진.csv")
# cdw_read.csv("data/subT_samle_SPDO_장동진.csv")
# cdw_read.csv("data/subT_samle_VA0800000848_장동진.csv")

