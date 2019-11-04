# xlsx 파일 불러오기
# sheet를 0으로 지정하면 모든 시트 부르고, 지정하면 해당 시트를 부르기
# xlsx 파일의 sheet 갯수를 알아내서 일단 로딩하기

load_xlsx_sheets <- function(xlsxFile, sheet_n = 0){
  sheets <- readxl::excel_sheets(xlsxFile)
  sheets_var <- gsub(x = sheets, pattern = "^\\d+\\.", replacement = "")
  sheets_var <- gsub(x = sheets_var, pattern = "-", replacement = "_")
  sheets_var <- gsub(x = sheets_var, pattern = "\\(0800000848\\)", replacement = "")
  data_types <- unique(col_info$xlsx_sheet_name)

  if (sheet_n == 0) {
    for (i in 1:length(sheets)){
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

