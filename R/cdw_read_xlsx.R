.xlsx_target_col_name <-  function(origin_df, table_type, cdw_col_name){
  ret <- dplyr::filter(origin_df,
                       sheet_name == table_type,
                       xlsx_cdw_col == cdw_col_name)
  return(ret$target_col)
}


# cdw_read_xlsx -----------------------------------------------------------
cdw_read_xlsx <- function(xlxs_file, sheet = 1){
    # 엑셀파일이지 확인하기
  if (!endsWith(xlsx_file, "xlsx")) {
    stop('not an xlsx file')
  }

  # 엑셀 파일 불러오기
  temp_tibble <- readxl::read_xlsx(xlsx_file, sheet = sheet)

  # 시트정보 가져오기
  sheet_names <- readxl::excel_sheets(xlsx_file) %>%
    str_remove("^\\d+\\.") %>%
    str_remove("-\\d+$") %>%
    str_remove("\\(0800000848\\)")

  table_type <- sheet_names[sheet]

  # 컬럼 이름에서 빈칸 없애기
  temp_tibble_col_names <- names(temp_tibble) %>%
    str_remove_all(" ")

  # .cdw_col_name 이름에서 빈칸 없애기

  cdw_col_name <- .cdw_col_name
  cdw_col_name$xlsx_cdw_col %>%
    str_remove_all(" ") -> cdw_col_name$xlsx_cdw_col

  new_col_names <- c()
  for (col_name in temp_tibble_col_names) {
    new_col_names <- c(new_col_names,
                       .xlsx_target_col_name(cdw_col_name, table_type, col_name))
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
# xlsx_file = "~/Dropbox/R_Projects/rplus_lecture/enc_16398_subT_samle.xlsx"
# sheet = 1
#
# # 엑셀파일이지 확인하기
# if (!endsWith(xlsx_file, "xlsx")) {
#     stop('not an xlsx file')
# }
#
# # 엑셀 파일 불러오기
# temp_tibble <- readxl::read_xlsx(xlsx_file, sheet = 1)
#
# # 시트정보 가져오기
# sheet_names <- readxl::excel_sheets(xlsx_file) %>%
#   str_remove("^\\d+\\.") %>%
#   str_remove("-\\d+$") %>%
#   str_remove("\\(0800000848\\)")
#
# table_type <- sheet_names[sheet]
#
# # 컬럼 이름에서 빈칸 없애기
# temp_tibble_col_names <- names(temp_tibble) %>%
#   str_remove_all(" ")
#
# # .cdw_col_name 이름에서 빈칸 없애기
#
# cdw_col_name <- .cdw_col_name
# cdw_col_name$xlsx_cdw_col %>%
#   str_remove_all(" ") -> cdw_col_name$xlsx_cdw_col
#
# new_col_names <- c()
# for (col_name in temp_tibble_col_names) {
#   new_col_names <- c(new_col_names,
#                      .xlsx_target_col_name(cdw_col_name, table_type, col_name))
# }
# names(temp_tibble) <- new_col_names
#
#
#
# # 날짜 변수 날짜 타입으로 변경해주기
# temp_tibble %>% mutate_at(vars(ends_with("date")),
#                           funs(as.character)) %>%
#   mutate_at(vars(ends_with("date")),
#             funs(lubridate::as_date)) -> temp_tibble
#
#
# # test --------------------------------------------------------------------
# cdw_read_xlsx(xlsx_file, sheet = 7)
#

