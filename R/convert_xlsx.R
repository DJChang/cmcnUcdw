# xlsx 파일 불러오기
# sheet를 0으로 지정하면 모든 시트 부르고, 지정하면 해당 시트를 부르기
# xlsx 파일의 sheet 갯수를 알아내서 일단 로딩하기

load_xlsx_sheets <- function(xlsxFile, sheet_n = 0){
  sheets_var <- readxl::excel_sheets(xlsxFile) %>%
    gsub(pattern = "^\\d+\\.", replacement = "") %>%
    gsub(pattern = "-", replacement = "_") %>%
    gsub(pattern = "\\(0800000848\\)", replacement = "") %>%
    gsub(pattern = "코호트", replacement = "COHT") %>%
    gsub(pattern = "수진정보", replacement = "ACPT") %>%
    gsub(pattern = "기초임상정보", replacement = "VTLS") %>%
    gsub(pattern = "진단정보", replacement = "DIAG") %>%
    gsub(pattern = "수술정보", replacement = "OPRS") %>%
    gsub(pattern = "수술기록", replacement = "OPNT") %>%
    gsub(pattern = "처방정보", replacement = "PRCP") %>%
    gsub(pattern = "투약정보", replacement = "DRUG") %>%
    gsub(pattern = "진단검사", replacement = "SPDO") %>%
    gsub(pattern = "병리정보", replacement = "PATH") %>%
    gsub(pattern = "영상정보", replacement = "RADI") %>%
    gsub(pattern = "기능정보", replacement = "FUNC") %>%
    gsub(pattern = "내시경정보", replacement = "ENDO") %>%
    gsub(pattern = "안과검사", replacement = "VA")

  data_types <- unique(col_info$xlsx_sheet_name)

  if (sheet_n == 0) {
    for (i in 1:length(sheets_var)){
      assign(sheets_var[i], read.xlsx(xlsxFile, sheet = i), envir = .GlobalEnv)

      for (data_type in data_types){
        if (grepl(pattern = data_type, x = sheets_var[i])) {
          col_name_for_data_type <- col_info %>% filter(xlsx_sheet_name == data_type) %>% select(xlsx_col_name, target)
        }
      }
      xlsx_col_names <- names(eval(parse(text = sheets_var[i])))

      for (j in 1:length(xlsx_col_names)){
        if (xlsx_col_names[j] %in% col_name_for_data_type$xlsx_col_name){
          xlsx_col_names[j] <- col_name_for_data_type$target[which(col_name_for_data_type$xlsx_col_name == xlsx_col_names[j])]
        }
      }
      eval(parse(text = paste0("names(", parse(text = sheets_var[i]),") <<- xlsx_col_names")))
      eval(parse(text = paste0(parse(text = sheets_var[i]), " <- df_to_date(",parse(text = sheets_var[i]),")")), envir = .GlobalEnv)
    }
  } else {
    assign(sheets_var[sheet_n],read.xlsx(xlsxFile, sheet = sheet_n), envir = .GlobalEnv)
    for (data_type in data_types){
      if (grepl(pattern = data_type, x = sheets_var[sheet_n])) {
        col_name_for_data_type <- col_info %>% filter(xlsx_sheet_name == data_type) %>% select(xlsx_col_name, target)
      }
    }
    xlsx_col_names <- names(eval(parse(text = sheets_var[sheet_n])))

    for (j in 1:length(xlsx_col_names)){
      if (xlsx_col_names[j] %in% col_name_for_data_type$xlsx_col_name){
        xlsx_col_names[j] <- col_name_for_data_type$target[which(col_name_for_data_type$xlsx_col_name == xlsx_col_names[j])]
      }
    }
    eval(parse(text = paste0("names(", parse(text = sheets_var[sheet_n]),") <<- xlsx_col_names")))
    eval(parse(text = paste0(parse(text = sheets_var[sheet_n]), " <- df_to_date(",parse(text = sheets_var[sheet_n]),")")), envir = .GlobalEnv)

  }
}

