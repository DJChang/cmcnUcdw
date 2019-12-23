#CMC nU CDW의 컬럼명 정보

col_info <- readr::read_csv("original_col_name,CSV_file_name,CSV_col_name,xlsx_sheet_name,xlsx_col_name,target
연구번호,ACPT,연구번호,수진정보,연구번호,id
환자이름,ACPT,환자이름,수진정보,환자이름,pt_name
진료과,ACPT,진료과,수진정보,진료과,visit_dept
주치의,ACPT,주치의,수진정보,주치의,visit_doctor
퇴원과,ACPT,퇴원과,수진정보,퇴원과,discharge_dept
입원(진료)일,ACPT,입원.진료.일,수진정보,입원(진료)일,visit_date
퇴원일,ACPT,퇴원일,수진정보,퇴원일,discharge_date
진료구분(I/O/E),ACPT,진료구분.I.O.E.,수진정보,진료구분(I/O/E),visit_location
접수구분(병초/과초/재진...),ACPT,접수구분.병초.과초.재진....,수진정보,접수구분(병초/과초/재진...),visit_type
연구번호,COHT,연구번호,코호트,연구번호,id
환자이름,COHT,환자이름,코호트,환자이름,Pt_name
생년월,COHT,생년월,코호트,생년월,birth_month
성별,COHT,성별,코호트,성별,sex
사망여부,COHT,사망여부,코호트,사망여부,is_expired
사망일자,COHT,사망일자,코호트,사망일자,expire_date
최종추적일자,COHT,최종추적일자,코호트,최종추적일자,last_visit_date
연구번호,DIAG,연구번호,진단정보,연구번호,id
환자이름,DIAG,환자이름,진단정보,환자이름,pt_name
최초진단나이,DIAG,최초진단나이,진단정보,최초진단나이,age_at_first_diag
진단일자,DIAG,진단일자,진단정보,진단일자,diag_date
최초진단일자,DIAG,최초진단일자,진단정보,최초진단일자,first_diag_date
진료과,DIAG,진료과,진단정보,진료과,diag_dept
진단코드,DIAG,진단코드,진단정보,진단코드,diag_code
진단명,DIAG,진단명,진단정보,진단명,diag_name
진단한글명,DIAG,진단한글명,진단정보,진단한글명,diag_name_kor
진료구분(I/O/E),DIAG,진료구분.I.O.E.,진단정보,진료구분(I/O/E),diag_visit_location
nU최초진단일자,DIAG,nU최초진단일자,진단정보,nU최초진단일자,firt_diag_date_on_nU
중증최초등록일자,DIAG,중증최초등록일자,진단정보,중증최초등록일자,severe_reg_date
희귀난치/중증화상 최초등록일자,DIAG,희귀난치.중증화상.최초등록일자,진단정보,희귀난치/중증화상.최초등록일자,rare_reg_date
진단상태(확정/Rule Out),DIAG,진단상태.확정.Rule.Out.,진단정보,진단상태(확정/Rule.Out),diag_satus
진단분류(주진단/부진단),DIAG,진단분류.주진단.부진단.,진단정보,진단분류(주진단/부진단),diag_class
연구번호,DRUG,연구번호,투약정보,연구번호,id
환자이름,DRUG,환자이름,투약정보,환자이름,pt_name
진료일자,DRUG,진료일자,투약정보,진료일자,visit_date
진료구분,DRUG,진료구분,투약정보,진료구분,visit_location
처방일자,DRUG,처방일자,투약정보,처방일자,rx_date
진료과,DRUG,진료과,투약정보,진료과,rx_dept
주치의,DRUG,주치의,투약정보,주치의,rx_doctor
처방코드,DRUG,처방코드,투약정보,처방코드,drug_code
성분명,DRUG,성분명,투약정보,성분명,ingredient
처방명,DRUG,처방명,투약정보,처방명,rx_name
처방한글명,DRUG,처방한글명,투약정보,처방한글명,rx_name_kor
SELF약여부,DRUG,SELF약여부,투약정보,SELF약여부,is_self_medi
1일기준총용량,DRUG,X1일기준총용량,투약정보,1일기준총용량,rx_amout_per_day
용량단위,DRUG,용량단위,투약정보,용량단위,rx_unit
1일기준총수량,DRUG,X1일기준총수량,투약정보,1일기준총수량,rx_count_per_day
수량단위,DRUG,수량단위,투약정보,수량단위,rx_count_unit
처방횟수,DRUG,처방횟수,투약정보,처방횟수,rx_times
처방일수,DRUG,처방일수,투약정보,처방일수,rx_days
실시일자,DRUG,실시일자,투약정보,실시일자,dispense_date
실시처방수량,DRUG,실시처방수량,투약정보,실시처방수량,dispense_count
실시처방횟수,DRUG,실시처방횟수,투약정보,실시처방횟수,dispense_times
실시처방일수,DRUG,실시처방일수,투약정보,실시처방일수,discharge_days
연구번호,ENDO,연구번호,내시경정보,연구번호,id
환자이름,ENDO,환자이름,내시경정보,환자이름,pt_name
처방코드,ENDO,처방코드,내시경정보,처방코드,endo_code
처방명,ENDO,처방명,내시경정보,처방명,endo_name
영상분류,ENDO,영상분류,내시경정보,영상분류,endo_class
실행일자,ENDO,실행일자,내시경정보,실행일자,endo_date
실행시간,ENDO,실행시간,내시경정보,실행시간,endo_time
판독일자,ENDO,판독일자,내시경정보,판독일자,endo_read_date
판독시간,ENDO,판독시간,내시경정보,판독시간,endo_read_time
판독자1,ENDO,판독자1,내시경정보,판독자1,endo_read_doc_1
판독자2,ENDO,판독자2,내시경정보,판독자2,endo_read_doc_2
판독자3,ENDO,판독자3,내시경정보,판독자3,endo_read_doc_3
판독자4,ENDO,판독자4,내시경정보,판독자4,endo_read_doc_4
판독자5,ENDO,판독자5,내시경정보,판독자5,endo_read_doc_5
판독결과문,ENDO,판독결과문,내시경정보,판독결과문,endo_reading
결과서식문,ENDO,결과서식문,내시경정보,결과서식문,endo_result
서식명,ENDO,서식명,내시경정보,서식명,endo_result_template
처방일자,ENDO,처방일자,내시경정보,처방일자,endo_order_date
연구번호,FUNC,연구번호,기능정보,연구번호,id
환자이름,FUNC,환자이름,기능정보,환자이름,pt_name
처방코드,FUNC,처방코드,기능정보,처방코드,func_code
처방명,FUNC,처방명,기능정보,처방명,func_name
영상분류,FUNC,영상분류,기능정보,영상분류,func_class
실행일자,FUNC,실행일자,기능정보,실행일자,func_date
실행시간,FUNC,실행시간,기능정보,실행시간,func_time
판독일자,FUNC,판독일자,기능정보,판독일자,func_read_date
판독시간,FUNC,판독시간,기능정보,판독시간,func_read_time
판독자1,FUNC,판독자1,기능정보,판독자1,func_read_doc_1
판독자2,FUNC,판독자2,기능정보,판독자2,func_read_doc_2
판독자3,FUNC,판독자3,기능정보,판독자3,func_read_doc_3
판독자4,FUNC,판독자4,기능정보,판독자4,func_read_doc_4
판독자5,FUNC,판독자5,기능정보,판독자5,func_read_doc_5
판독결과문,FUNC,판독결과문,기능정보,판독결과문,func_reading
결과서식문,FUNC,결과서식문,기능정보,결과서식문,func_result
서식명,FUNC,서식명,기능정보,서식명,func_result_template
처방일자,FUNC,처방일자,기능정보,처방일자,func_order_date
연구번호,OPNT,연구번호,수술기록,연구번호,id
환자이름,OPNT,환자이름,수술기록,환자이름,pt_name
진료구분,OPNT,진료구분,수술기록,진료구분,op_visit_location
부서명,OPNT,부서명,수술기록,부서명,op_dept
작성자명,OPNT,작성자명,수술기록,작성자명,op_note_writer
수술일자,OPNT,수술일자,수술기록,수술일자,op_date
집도의,OPNT,집도의,수술기록,집도의,operator
보조의,OPNT,보조의,수술기록,보조의,assist
수술명,OPNT,수술명,수술기록,수술명,op_name
수술코드,OPNT,수술코드,수술기록,수술코드,op_code
수술전진단,OPNT,수술전진단,수술기록,수술전진단,before_op_diag
수술후진단,OPNT,수술후진단,수술기록,수술후진단,after_op_diag
수술소견,OPNT,수술소견,수술기록,수술소견,op_finding
수술과정,OPNT,수술과정,수술기록,수술과정,op_procedure
수술기록,OPNT,수술기록,수술기록,수술기록,op_record
연구번호,OPRS,연구번호,수술정보,연구번호,id
환자이름,OPRS,환자이름,수술정보,환자이름,pt_name
수술일자,OPRS,수술일자,수술정보,수술일자,op_date
수술처방코드,OPRS,수술처방코드,수술정보,수술처방코드,op_code
수술처방명,OPRS,수술처방명,수술정보,수술처방명,op_name
수술처방한글명,OPRS,수술처방한글명,수술정보,수술처방한글명,op_name_kor
집도과,OPRS,집도과,수술정보,집도과,op_dept
수술구분,OPRS,수술구분,수술정보,수술구분,op_main
집도의1,OPRS,집도의1,수술정보,집도의1,operator_1
집도의2,OPRS,집도의2,수술정보,집도의2,operator_2
집도의3,OPRS,집도의3,수술정보,집도의3,operator_3
집도의4,OPRS,집도의4,수술정보,집도의4,operator_4
집도의5,OPRS,집도의5,수술정보,집도의5,operator_5
보조의1,OPRS,보조의1,수술정보,보조의1,assist_1
보조의2,OPRS,보조의2,수술정보,보조의2,assist_2
보조의3,OPRS,보조의3,수술정보,보조의3,assist_3
보조의4,OPRS,보조의4,수술정보,보조의4,assist_4
보조의5,OPRS,보조의5,수술정보,보조의5,assist_5
연구번호,PATH,연구번호,병리정보,연구번호,id
환자이름,PATH,환자이름,병리정보,환자이름,pt_name
처방코드,PATH,처방코드,병리정보,처방코드,path_code
처방명,PATH,처방명,병리정보,처방명,path_name
병리검사구분,PATH,병리검사구분,병리정보,병리검사구분,path_class
검사코드,PATH,검사코드,병리정보,검사코드,path_order_code
검사명,PATH,검사명,병리정보,검사명,path_order_name
실시일자,PATH,실시일자,병리정보,실시일자,path_date
판독일자,PATH,판독일자,병리정보,판독일자,path_read_date
판독시간,PATH,판독시간,병리정보,판독시간,path_read_time
대표검체명,PATH,대표검체명,병리정보,대표검체명,sample_name
세부검체명,PATH,세부검체명,병리정보,세부검체명,smaple_detail
판독결과,PATH,판독결과,병리정보,판독결과,path_reading
처방일자,PATH,처방일자,병리정보,처방일자,path_order_date
연구번호,PRCP,연구번호,처방정보,연구번호,id
환자이름,PRCP,환자이름,처방정보,환자이름,pt_name
진료일자,PRCP,진료일자,처방정보,진료일자,order_visit_date
진료구분,PRCP,진료구분,처방정보,진료구분,order_visit_location
처방일자,PRCP,처방일자,처방정보,처방일자,order_date
진료과,PRCP,진료과,처방정보,진료과,order_dept
주치의,PRCP,주치의,처방정보,주치의,order_doc
처방코드,PRCP,처방코드,처방정보,처방코드,order_code
처방명,PRCP,처방명,처방정보,처방명,order_name
처방한글명,PRCP,처방한글명,처방정보,처방한글명,order_name_kor
처방분류,PRCP,처방분류,처방정보,처방분류,order_class
처방분류명,PRCP,처방분류명,처방정보,처방분류명,order_class_name
1일기준총용량,PRCP,X1일기준총용량,처방정보,1일기준총용량,order_amount_per_day
용량단위,PRCP,용량단위,처방정보,용량단위,order_unit
1일기준총수량,PRCP,X1일기준총수량,처방정보,1일기준총수량,order_count_per_day
수량단위,PRCP,수량단위,처방정보,수량단위,order_count_unit
처방횟수,PRCP,처방횟수,처방정보,처방횟수,order_times
처방일수,PRCP,처방일수,처방정보,처방일수,order_days
실시일자,PRCP,실시일자,처방정보,실시일자,order_exc_date
연구번호,RADI,연구번호,영상정보,연구번호,id
환자이름,RADI,환자이름,영상정보,환자이름,pt_name
처방코드,RADI,처방코드,영상정보,처방코드,radi_code
처방명,RADI,처방명,영상정보,처방명,radi_name
영상대분류,RADI,영상대분류,영상정보,영상대분류,radi_major_class
영상분류,RADI,영상분류,영상정보,영상분류,radi_class
실행일자,RADI,실행일자,영상정보,실행일자,radi_date
실행시간,RADI,실행시간,영상정보,실행시간,radi_time
판독일자,RADI,판독일자,영상정보,판독일자,radi_read_date
판독시간,RADI,판독시간,영상정보,판독시간,radi_read_time
판독자1,RADI,판독자1,영상정보,판독자1,radi_read_doc_1
판독자2,RADI,판독자2,영상정보,판독자2,radi_read_doc_2
판독자3,RADI,판독자3,영상정보,판독자3,radi_read_doc_3
판독자4,RADI,판독자4,영상정보,판독자4,radi_read_doc_4
판독자5,RADI,판독자5,영상정보,판독자5,radi_read_doc_5
판독결과문,RADI,판독결과문,영상정보,판독결과문,radi_reading
결과서식문,RADI,결과서식문,영상정보,결과서식문,radi_result
서식명,RADI,서식명,영상정보,서식명,radi_result_template
처방일자,RADI,처방일자,영상정보,처방일자,radi_order_date
연구번호,SPDO,연구번호,진단검사,연구번호,id
환자이름,SPDO,환자이름,진단검사,환자이름,pt_name
검사코드,SPDO,검사코드,진단검사,검사코드,lab_code
검사명,SPDO,검사명,진단검사,검사명,lab_name
검사결과,SPDO,검사결과,진단검사,검사결과,lab_result
검사결과 문자,SPDO,검사결과.문자,진단검사,검사결과.문자,lab_result_chr
검사결과 숫자,SPDO,검사결과.숫자,진단검사,검사결과.숫자,lab_result_num
검사일,SPDO,검사일,진단검사,검사일,lab_date
처방일자,SPDO,처방일자,진단검사,처방일자,lab_order_date
연구번호,VTLS,연구번호,기초임상정보,연구번호,id
환자이름,VTLS,환자이름,기초임상정보,환자이름,pt_name
자료출처,VTLS,자료출처,기초임상정보,자료출처,vital_source
진료(입원)일,VTLS,진료.입원.일,기초임상정보,진료(입원)일,vital_visit_date
기록일자,VTLS,기록일자,기초임상정보,기록일자,vital_date
키,VTLS,키,기초임상정보,키,height
몸무게,VTLS,몸무게,기초임상정보,몸무게,weight
최소혈압,VTLS,최소혈압,기초임상정보,최소혈압,dia_pressure
최대혈압,VTLS,최대혈압,기초임상정보,최대혈압,sys_pressure
흡연여부,VTLS,흡연여부,기초임상정보,흡연여부,smoking
연구번호,VA0800000848,연구번호,안과검사,연구번호,id
환자이름,VA0800000848,환자이름,안과검사,환자이름,pt_name
차트생성일,VA0800000848,차트생성일,안과검사,차트생성일,va_date
UCVA OD date,VA0800000848,UCVA.OD.date,안과검사,UCVA.OD.date,VA_OD_date
UCVA OD Vision,VA0800000848,UCVA.OD.Vision,안과검사,UCVA.OD.Vision,VA_OD_UC
UCVA OD (Vision),VA0800000848,UCVA.OD..Vision.,안과검사,UCVA.OD.(Vision),VA_OD_Cor
UCVA OD Sph,VA0800000848,UCVA.OD.Sph,안과검사,UCVA.OD.Sph,CVA_OD_Sph
UCVA OD Cyl,VA0800000848,UCVA.OD.Cyl,안과검사,UCVA.OD.Cyl,CVA_OD_Cyl
UCVA OD Ax,VA0800000848,UCVA.OD.Ax,안과검사,UCVA.OD.Ax,CVA_OD_Ax
UCVA OD 거리,VA0800000848,UCVA.OD.거리,안과검사,UCVA.OD.거리,VA_OD_distance
UCVA OD 착용,VA0800000848,UCVA.OD.착용,안과검사,UCVA.OD.착용,CVA_OD_eyewear
UCVA OS date,VA0800000848,UCVA.OS.date,안과검사,UCVA.OS.date,VA_OS_date
UCVA OS Vision,VA0800000848,UCVA.OS.Vision,안과검사,UCVA.OS.Vision,VA_OS_UC
UCVA OS (Vision),VA0800000848,UCVA.OS..Vision.,안과검사,UCVA.OS.(Vision),VA_OS_Cor
UCVA OS Sph,VA0800000848,UCVA.OS.Sph,안과검사,UCVA.OS.Sph,CVA_OS_Sph
UCVA OS Cyl,VA0800000848,UCVA.OS.Cyl,안과검사,UCVA.OS.Cyl,CVA_OS_Cyl
UCVA OS Ax,VA0800000848,UCVA.OS.Ax,안과검사,UCVA.OS.Ax,CVA_OS_Ax
UCVA OS 거리,VA0800000848,UCVA.OS.거리,안과검사,UCVA.OS.거리,VA_OS_distance
UCVA OS 착용,VA0800000848,UCVA.OS.착용,안과검사,UCVA.OS.착용,CVA_OS_eyewear
BCVA OD date,VA0800000848,BCVA.OD.date,안과검사,BCVA.OD.date,BCVA_OD_date
BCVA OD (Vision),VA0800000848,BCVA.OD..Vision.,안과검사,BCVA.OD.(Vision),BCVA_OD_
BCVA OD Method,VA0800000848,BCVA.OD.Method,안과검사,BCVA.OD.Method,BCVA_OD_Method
BCVA OD Sph,VA0800000848,BCVA.OD.Sph,안과검사,BCVA.OD.Sph,BCVA_OD_Sph
BCVA OD Cyl,VA0800000848,BCVA.OD.Cyl,안과검사,BCVA.OD.Cyl,BCVA_OD_Cyl
BCVA OD Ax,VA0800000848,BCVA.OD.Ax,안과검사,BCVA.OD.Ax,BCVA_OD_Ax
BCVA OS 거리,VA0800000848,BCVA.OS.거리,안과검사,BCVA.OS.거리,BCVA_OS_dist
BCVA OD 착용,VA0800000848,BCVA.OD.착용,안과검사,BCVA.OD.착용,BCVA_OD_wear
BCVA OS date,VA0800000848,BCVA.OS.date,안과검사,BCVA.OS.date,BCVA_OS_date
BCVA OS (Vision),VA0800000848,BCVA.OS..Vision.,안과검사,BCVA.OS.(Vision),BCVA_OS_(Vision)
BCVA OS Method,VA0800000848,BCVA.OS.Method,안과검사,BCVA.OS.Method,BCVA_OS_Method
BCVA OS Sph,VA0800000848,BCVA.OS.Sph,안과검사,BCVA.OS.Sph,BCVA_OS_Sph
BCVA OS Cyl,VA0800000848,BCVA.OS.Cyl,안과검사,BCVA.OS.Cyl,BCVA_OS_Cyl
BCVA OS Ax,VA0800000848,BCVA.OS.Ax,안과검사,BCVA.OS.Ax,BCVA_OS_Ax
BCVA OD 거리,VA0800000848,BCVA.OD.거리,안과검사,BCVA.OD.거리,BCVA_OD_dist
BCVA OS 착용,VA0800000848,BCVA.OS.착용,안과검사,BCVA.OS.착용,BCVA_OS_wear
Refraction OD Date,VA0800000848,Refraction.OD.Date,안과검사,Refraction.OD.Date,Refraction_OD_Date
Refraction OD Method,VA0800000848,Refraction.OD.Method,안과검사,Refraction.OD.Method,Refraction_OD_Method
Refraction OD Ds,VA0800000848,Refraction.OD.Ds,안과검사,Refraction.OD.Ds,Refraction_OD_Ds
Refraction OD Dc,VA0800000848,Refraction.OD.Dc,안과검사,Refraction.OD.Dc,Refraction_OD_Dc
Refraction OD Axis,VA0800000848,Refraction.OD.Axis,안과검사,Refraction.OD.Axis,Refraction_OD_Axis
Refraction OS Date,VA0800000848,Refraction.OS.Date,안과검사,Refraction.OS.Date,Refraction_OS_Date
Refraction OS Method,VA0800000848,Refraction.OS.Method,안과검사,Refraction.OS.Method,Refraction_OS_Method
Refraction OS Ds,VA0800000848,Refraction.OS.Ds,안과검사,Refraction.OS.Ds,Refraction_OS_Ds
Refraction OS Dc,VA0800000848,Refraction.OS.Dc,안과검사,Refraction.OS.Dc,Refraction_OS_Dc
Refraction OS Axis,VA0800000848,Refraction.OS.Axis,안과검사,Refraction.OS.Axis,Refraction_OS_Axis")


# 파일, sheet별 컬럼 정보
csv_names <- unique(col_info$CSV_file_name)
for (csv_name in csv_names){
  assign(paste0(csv_name,"_col_names", collapse = ""), col_info %>% filter(CSV_file_name == csv_name) %>%
           select(CSV_col_name, target))
}


sheet_names <- unique(col_info$xlsx_sheet_name)
for (sheet_name in sheet_names){
  assign(paste0(sheet_name,"_col_names", collapse = ""), col_info %>% filter(xlsx_sheet_name == sheet_name) %>%
           select(xlsx_col_name, target))
}
