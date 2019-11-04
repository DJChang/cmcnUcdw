# CSV 파일을 불러오고 컬럼명을 바꾸는 함수
# CSV파일을 로딩하면 해당 파일의 정보를 파일명에서 파악
# 해당파일의 컬럼명을 바꿔줌
# 날짜 형식을 바꿔줌

convert_csv <- function(file, stringsAsFactors = FALSE, fileEncoding = "CP949"){
  data_type <- strsplit(file,split = "_")[[1]]
  data_type <- data_type[length(data_type)-1]
  col_name_for_data_type <- col_info %>% filter(CSV_file_name == data_type) %>% select(CSV_col_name, target)
  cdw_data <- read.csv(file, fileEncoding = fileEncoding, stringsAsFactors = stringsAsFactors)
  csv_col_names <- names(cdw_data)

  for (i in 1:length(csv_col_names))
    if (csv_col_names[i] %in% col_name_for_data_type$CSV_col_name){
      csv_col_names[i] <- col_name_for_data_type$target[which(col_name_for_data_type$CSV_col_name == csv_col_names[i])]
    }

  names(cdw_data) <- csv_col_names

  for (i in 1:length(names(cdw_data))){
    if (grepl(pattern = "date|month", x = names(cdw_data)[i])){
      expr_to_eval <- paste0("cdw_data$",names(cdw_data)[i], " <- col_to_date(","cdw_data$",names(cdw_data)[i],")")
      eval(parse(text = expr_to_eval))
    }
  }
  return(cdw_data)
}


# 폴더내에서 yyyy-mm-dd로 끝나는 파일을 골라서 로딩하기
# 같은 종류의 데이터를 하나의 폴더에 두지 말 것
# CSV 파일 중 노트류의 기록이 있는 경우 잘 안될 수 있음(인코딩 깨져서)

load_all_csv <- function(stringsAsFactors = FALSE, fileEncoding = "CP949"){
  file_list <- list.files(path='.', pattern="\\d{2}-\\d{2}\\.csv$")
  for (file in file_list){
    assign(strsplit(file, split = c("_"))[[1]][6],
           convert_csv(file,stringsAsFactors = stringsAsFactors, fileEncoding = fileEncoding),
           envir = .GlobalEnv)
  }
}
