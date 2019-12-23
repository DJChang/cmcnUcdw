
# 하나틔 컬럼에서 문자열 형식의 컬럼을 날짜형식으로 바꿔주는 함수
col_to_date <- function(column, format = "%Y%m%d"){
  column <- as.Date(as.character(column), format = format)
  return(column)
}


# 이미 컬럼 이름을 영어로 변환한 경우 하나의 데이터 프레임을 불러와서 날짜 변환
df_to_date <- function(cdw_data){
  for (i in 1:length(names(cdw_data))){
    if (grepl(pattern = "date|month", x = names(cdw_data)[i])){
      expr_to_eval <- paste0("cdw_data$",names(cdw_data)[i], " <- col_to_date(","cdw_data$",names(cdw_data)[i],")")
      eval(parse(text = expr_to_eval))
    }
  }
  return(cdw_data)
}
