#하나의 진단명에서 첫번째 부분만 추출하기
#ZZZ는 CMC 임시코드
diag_to_1st_class <- function(diag_code){
  ifelse(grepl(pattern = "^\\w+\\d+|^ZZZ",  x = diag_code),
         strsplit(x = diag_code, split = "\\.")[[1]][1],
         stop("not a diagnosis code"))
}
