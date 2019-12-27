#CMC nU CDW의 컬럼명 정보

col_info <- readr::read_csv("original_col_name,CSV_file_name,CSV_col_name,xlsx_sheet_name_origin,xlsx_col_name,target,xlsx_sheet_name
연구번호,ACPT,연구번호,수진정보,연구번호,id,ACPT
환자이름,ACPT,환자이름,수진정보,환자이름,pt_name,ACPT
진료과,ACPT,진료과,수진정보,진료과,visit_dept,ACPT
주치의,ACPT,주치의,수진정보,주치의,visit_doctor,ACPT
퇴원과,ACPT,퇴원과,수진정보,퇴원과,discharge_dept,ACPT
입원(진료)일,ACPT,입원.진료.일,수진정보,입원(진료)일,visit_date,ACPT
퇴원일,ACPT,퇴원일,수진정보,퇴원일,discharge_date,ACPT
진료구분(I/O/E),ACPT,진료구분.I.O.E.,수진정보,진료구분(I/O/E),visit_location,ACPT
접수구분(병초/과초/재진...),ACPT,접수구분.병초.과초.재진....,수진정보,접수구분(병초/과초/재진...),visit_type,ACPT
연구번호,COHT,연구번호,코호트,연구번호,id,COHT
환자이름,COHT,환자이름,코호트,환자이름,Pt_name,COHT
생년월,COHT,생년월,코호트,생년월,birth_month,COHT
성별,COHT,성별,코호트,성별,sex,COHT
사망여부,COHT,사망여부,코호트,사망여부,is_expired,COHT
사망일자,COHT,사망일자,코호트,사망일자,expire_date,COHT
최종추적일자,COHT,최종추적일자,코호트,최종추적일자,last_visit_date,COHT
연구번호,DIAG,연구번호,진단정보,연구번호,id,DIAG
환자이름,DIAG,환자이름,진단정보,환자이름,pt_name,DIAG
최초진단나이,DIAG,최초진단나이,진단정보,최초진단나이,age_at_first_diag,DIAG
진단일자,DIAG,진단일자,진단정보,진단일자,diag_date,DIAG
최초진단일자,DIAG,최초진단일자,진단정보,최초진단일자,first_diag_date,DIAG
진료과,DIAG,진료과,진단정보,진료과,diag_dept,DIAG
진단코드,DIAG,진단코드,진단정보,진단코드,diag_code,DIAG
진단명,DIAG,진단명,진단정보,진단명,diag_name,DIAG
진단한글명,DIAG,진단한글명,진단정보,진단한글명,diag_name_kor,DIAG
진료구분(I/O/E),DIAG,진료구분.I.O.E.,진단정보,진료구분(I/O/E),diag_visit_location,DIAG
nU최초진단일자,DIAG,nU최초진단일자,진단정보,nU최초진단일자,firt_diag_date_on_nU,DIAG
중증최초등록일자,DIAG,중증최초등록일자,진단정보,중증최초등록일자,severe_reg_date,DIAG
희귀난치/중증화상 최초등록일자,DIAG,희귀난치.중증화상.최초등록일자,진단정보,희귀난치/중증화상.최초등록일자,rare_reg_date,DIAG
진단상태(확정/Rule Out),DIAG,진단상태.확정.Rule.Out.,진단정보,진단상태(확정/Rule.Out),diag_satus,DIAG
진단분류(주진단/부진단),DIAG,진단분류.주진단.부진단.,진단정보,진단분류(주진단/부진단),diag_class,DIAG
연구번호,DRUG,연구번호,투약정보,연구번호,id,DRUG
환자이름,DRUG,환자이름,투약정보,환자이름,pt_name,DRUG
진료일자,DRUG,진료일자,투약정보,진료일자,visit_date,DRUG
진료구분,DRUG,진료구분,투약정보,진료구분,visit_location,DRUG
처방일자,DRUG,처방일자,투약정보,처방일자,rx_date,DRUG
진료과,DRUG,진료과,투약정보,진료과,rx_dept,DRUG
주치의,DRUG,주치의,투약정보,주치의,rx_doctor,DRUG
처방코드,DRUG,처방코드,투약정보,처방코드,drug_code,DRUG
성분명,DRUG,성분명,투약정보,성분명,ingredient,DRUG
처방명,DRUG,처방명,투약정보,처방명,rx_name,DRUG
처방한글명,DRUG,처방한글명,투약정보,처방한글명,rx_name_kor,DRUG
SELF약여부,DRUG,SELF약여부,투약정보,SELF약여부,is_self_medi,DRUG
1일기준총용량,DRUG,X1일기준총용량,투약정보,1일기준총용량,rx_amout_per_day,DRUG
용량단위,DRUG,용량단위,투약정보,용량단위,rx_unit,DRUG
1일기준총수량,DRUG,X1일기준총수량,투약정보,1일기준총수량,rx_count_per_day,DRUG
수량단위,DRUG,수량단위,투약정보,수량단위,rx_count_unit,DRUG
처방횟수,DRUG,처방횟수,투약정보,처방횟수,rx_times,DRUG
처방일수,DRUG,처방일수,투약정보,처방일수,rx_days,DRUG
실시일자,DRUG,실시일자,투약정보,실시일자,dispense_date,DRUG
실시처방수량,DRUG,실시처방수량,투약정보,실시처방수량,dispense_count,DRUG
실시처방횟수,DRUG,실시처방횟수,투약정보,실시처방횟수,dispense_times,DRUG
실시처방일수,DRUG,실시처방일수,투약정보,실시처방일수,discharge_days,DRUG
연구번호,ENDO,연구번호,내시경정보,연구번호,id,ENDO
환자이름,ENDO,환자이름,내시경정보,환자이름,pt_name,ENDO
처방코드,ENDO,처방코드,내시경정보,처방코드,endo_code,ENDO
처방명,ENDO,처방명,내시경정보,처방명,endo_name,ENDO
영상분류,ENDO,영상분류,내시경정보,영상분류,endo_class,ENDO
실행일자,ENDO,실행일자,내시경정보,실행일자,endo_date,ENDO
실행시간,ENDO,실행시간,내시경정보,실행시간,endo_time,ENDO
판독일자,ENDO,판독일자,내시경정보,판독일자,endo_read_date,ENDO
판독시간,ENDO,판독시간,내시경정보,판독시간,endo_read_time,ENDO
판독자1,ENDO,판독자1,내시경정보,판독자1,endo_read_doc_1,ENDO
판독자2,ENDO,판독자2,내시경정보,판독자2,endo_read_doc_2,ENDO
판독자3,ENDO,판독자3,내시경정보,판독자3,endo_read_doc_3,ENDO
판독자4,ENDO,판독자4,내시경정보,판독자4,endo_read_doc_4,ENDO
판독자5,ENDO,판독자5,내시경정보,판독자5,endo_read_doc_5,ENDO
판독결과문,ENDO,판독결과문,내시경정보,판독결과문,endo_reading,ENDO
결과서식문,ENDO,결과서식문,내시경정보,결과서식문,endo_result,ENDO
서식명,ENDO,서식명,내시경정보,서식명,endo_result_template,ENDO
처방일자,ENDO,처방일자,내시경정보,처방일자,endo_order_date,ENDO
연구번호,FUNC,연구번호,기능정보,연구번호,id,FUNC
환자이름,FUNC,환자이름,기능정보,환자이름,pt_name,FUNC
처방코드,FUNC,처방코드,기능정보,처방코드,func_code,FUNC
처방명,FUNC,처방명,기능정보,처방명,func_name,FUNC
영상분류,FUNC,영상분류,기능정보,영상분류,func_class,FUNC
실행일자,FUNC,실행일자,기능정보,실행일자,func_date,FUNC
실행시간,FUNC,실행시간,기능정보,실행시간,func_time,FUNC
판독일자,FUNC,판독일자,기능정보,판독일자,func_read_date,FUNC
판독시간,FUNC,판독시간,기능정보,판독시간,func_read_time,FUNC
판독자1,FUNC,판독자1,기능정보,판독자1,func_read_doc_1,FUNC
판독자2,FUNC,판독자2,기능정보,판독자2,func_read_doc_2,FUNC
판독자3,FUNC,판독자3,기능정보,판독자3,func_read_doc_3,FUNC
판독자4,FUNC,판독자4,기능정보,판독자4,func_read_doc_4,FUNC
판독자5,FUNC,판독자5,기능정보,판독자5,func_read_doc_5,FUNC
판독결과문,FUNC,판독결과문,기능정보,판독결과문,func_reading,FUNC
결과서식문,FUNC,결과서식문,기능정보,결과서식문,func_result,FUNC
서식명,FUNC,서식명,기능정보,서식명,func_result_template,FUNC
처방일자,FUNC,처방일자,기능정보,처방일자,func_order_date,FUNC
연구번호,OPNT,연구번호,수술기록,연구번호,id,OPNT
환자이름,OPNT,환자이름,수술기록,환자이름,pt_name,OPNT
진료구분,OPNT,진료구분,수술기록,진료구분,op_visit_location,OPNT
부서명,OPNT,부서명,수술기록,부서명,op_dept,OPNT
작성자명,OPNT,작성자명,수술기록,작성자명,op_note_writer,OPNT
수술일자,OPNT,수술일자,수술기록,수술일자,op_date,OPNT
집도의,OPNT,집도의,수술기록,집도의,operator,OPNT
보조의,OPNT,보조의,수술기록,보조의,assist,OPNT
수술명,OPNT,수술명,수술기록,수술명,op_name,OPNT
수술코드,OPNT,수술코드,수술기록,수술코드,op_code,OPNT
수술전진단,OPNT,수술전진단,수술기록,수술전진단,before_op_diag,OPNT
수술후진단,OPNT,수술후진단,수술기록,수술후진단,after_op_diag,OPNT
수술소견,OPNT,수술소견,수술기록,수술소견,op_finding,OPNT
수술과정,OPNT,수술과정,수술기록,수술과정,op_procedure,OPNT
수술기록,OPNT,수술기록,수술기록,수술기록,op_record,OPNT
연구번호,OPRS,연구번호,수술정보,연구번호,id,OPRS
환자이름,OPRS,환자이름,수술정보,환자이름,pt_name,OPRS
수술일자,OPRS,수술일자,수술정보,수술일자,op_date,OPRS
수술처방코드,OPRS,수술처방코드,수술정보,수술처방코드,op_code,OPRS
수술처방명,OPRS,수술처방명,수술정보,수술처방명,op_name,OPRS
수술처방한글명,OPRS,수술처방한글명,수술정보,수술처방한글명,op_name_kor,OPRS
집도과,OPRS,집도과,수술정보,집도과,op_dept,OPRS
수술구분,OPRS,수술구분,수술정보,수술구분,op_main,OPRS
집도의1,OPRS,집도의1,수술정보,집도의1,operator_1,OPRS
집도의2,OPRS,집도의2,수술정보,집도의2,operator_2,OPRS
집도의3,OPRS,집도의3,수술정보,집도의3,operator_3,OPRS
집도의4,OPRS,집도의4,수술정보,집도의4,operator_4,OPRS
집도의5,OPRS,집도의5,수술정보,집도의5,operator_5,OPRS
보조의1,OPRS,보조의1,수술정보,보조의1,assist_1,OPRS
보조의2,OPRS,보조의2,수술정보,보조의2,assist_2,OPRS
보조의3,OPRS,보조의3,수술정보,보조의3,assist_3,OPRS
보조의4,OPRS,보조의4,수술정보,보조의4,assist_4,OPRS
보조의5,OPRS,보조의5,수술정보,보조의5,assist_5,OPRS
연구번호,PATH,연구번호,병리정보,연구번호,id,PATH
환자이름,PATH,환자이름,병리정보,환자이름,pt_name,PATH
처방코드,PATH,처방코드,병리정보,처방코드,path_code,PATH
처방명,PATH,처방명,병리정보,처방명,path_name,PATH
병리검사구분,PATH,병리검사구분,병리정보,병리검사구분,path_class,PATH
검사코드,PATH,검사코드,병리정보,검사코드,path_order_code,PATH
검사명,PATH,검사명,병리정보,검사명,path_order_name,PATH
실시일자,PATH,실시일자,병리정보,실시일자,path_date,PATH
판독일자,PATH,판독일자,병리정보,판독일자,path_read_date,PATH
판독시간,PATH,판독시간,병리정보,판독시간,path_read_time,PATH
대표검체명,PATH,대표검체명,병리정보,대표검체명,sample_name,PATH
세부검체명,PATH,세부검체명,병리정보,세부검체명,smaple_detail,PATH
판독결과,PATH,판독결과,병리정보,판독결과,path_reading,PATH
처방일자,PATH,처방일자,병리정보,처방일자,path_order_date,PATH
연구번호,PRCP,연구번호,처방정보,연구번호,id,PRCP
환자이름,PRCP,환자이름,처방정보,환자이름,pt_name,PRCP
진료일자,PRCP,진료일자,처방정보,진료일자,order_visit_date,PRCP
진료구분,PRCP,진료구분,처방정보,진료구분,order_visit_location,PRCP
처방일자,PRCP,처방일자,처방정보,처방일자,order_date,PRCP
진료과,PRCP,진료과,처방정보,진료과,order_dept,PRCP
주치의,PRCP,주치의,처방정보,주치의,order_doc,PRCP
처방코드,PRCP,처방코드,처방정보,처방코드,order_code,PRCP
처방명,PRCP,처방명,처방정보,처방명,order_name,PRCP
처방한글명,PRCP,처방한글명,처방정보,처방한글명,order_name_kor,PRCP
처방분류,PRCP,처방분류,처방정보,처방분류,order_class,PRCP
처방분류명,PRCP,처방분류명,처방정보,처방분류명,order_class_name,PRCP
1일기준총용량,PRCP,X1일기준총용량,처방정보,1일기준총용량,order_amount_per_day,PRCP
용량단위,PRCP,용량단위,처방정보,용량단위,order_unit,PRCP
1일기준총수량,PRCP,X1일기준총수량,처방정보,1일기준총수량,order_count_per_day,PRCP
수량단위,PRCP,수량단위,처방정보,수량단위,order_count_unit,PRCP
처방횟수,PRCP,처방횟수,처방정보,처방횟수,order_times,PRCP
처방일수,PRCP,처방일수,처방정보,처방일수,order_days,PRCP
실시일자,PRCP,실시일자,처방정보,실시일자,order_exc_date,PRCP
연구번호,RADI,연구번호,영상정보,연구번호,id,RADI
환자이름,RADI,환자이름,영상정보,환자이름,pt_name,RADI
처방코드,RADI,처방코드,영상정보,처방코드,radi_code,RADI
처방명,RADI,처방명,영상정보,처방명,radi_name,RADI
영상대분류,RADI,영상대분류,영상정보,영상대분류,radi_major_class,RADI
영상분류,RADI,영상분류,영상정보,영상분류,radi_class,RADI
실행일자,RADI,실행일자,영상정보,실행일자,radi_date,RADI
실행시간,RADI,실행시간,영상정보,실행시간,radi_time,RADI
판독일자,RADI,판독일자,영상정보,판독일자,radi_read_date,RADI
판독시간,RADI,판독시간,영상정보,판독시간,radi_read_time,RADI
판독자1,RADI,판독자1,영상정보,판독자1,radi_read_doc_1,RADI
판독자2,RADI,판독자2,영상정보,판독자2,radi_read_doc_2,RADI
판독자3,RADI,판독자3,영상정보,판독자3,radi_read_doc_3,RADI
판독자4,RADI,판독자4,영상정보,판독자4,radi_read_doc_4,RADI
판독자5,RADI,판독자5,영상정보,판독자5,radi_read_doc_5,RADI
판독결과문,RADI,판독결과문,영상정보,판독결과문,radi_reading,RADI
결과서식문,RADI,결과서식문,영상정보,결과서식문,radi_result,RADI
서식명,RADI,서식명,영상정보,서식명,radi_result_template,RADI
처방일자,RADI,처방일자,영상정보,처방일자,radi_order_date,RADI
연구번호,SPDO,연구번호,진단검사,연구번호,id,SPDO
환자이름,SPDO,환자이름,진단검사,환자이름,pt_name,SPDO
검사코드,SPDO,검사코드,진단검사,검사코드,lab_code,SPDO
검사명,SPDO,검사명,진단검사,검사명,lab_name,SPDO
검사결과,SPDO,검사결과,진단검사,검사결과,lab_result,SPDO
검사결과 문자,SPDO,검사결과.문자,진단검사,검사결과.문자,lab_result_chr,SPDO
검사결과 숫자,SPDO,검사결과.숫자,진단검사,검사결과.숫자,lab_result_num,SPDO
검사일,SPDO,검사일,진단검사,검사일,lab_date,SPDO
처방일자,SPDO,처방일자,진단검사,처방일자,lab_order_date,SPDO
연구번호,VTLS,연구번호,기초임상정보,연구번호,id,VTLS
환자이름,VTLS,환자이름,기초임상정보,환자이름,pt_name,VTLS
자료출처,VTLS,자료출처,기초임상정보,자료출처,vital_source,VTLS
진료(입원)일,VTLS,진료.입원.일,기초임상정보,진료(입원)일,vital_visit_date,VTLS
기록일자,VTLS,기록일자,기초임상정보,기록일자,vital_date,VTLS
키,VTLS,키,기초임상정보,키,height,VTLS
몸무게,VTLS,몸무게,기초임상정보,몸무게,weight,VTLS
최소혈압,VTLS,최소혈압,기초임상정보,최소혈압,dia_pressure,VTLS
최대혈압,VTLS,최대혈압,기초임상정보,최대혈압,sys_pressure,VTLS
흡연여부,VTLS,흡연여부,기초임상정보,흡연여부,smoking,VTLS
연구번호,VA0800000848,연구번호,안과검사,연구번호,id,VA
환자이름,VA0800000848,환자이름,안과검사,환자이름,pt_name,VA
차트생성일,VA0800000848,차트생성일,안과검사,차트생성일,va_date,VA
UCVA OD date,VA0800000848,UCVA.OD.date,안과검사,UCVA.OD.date,VA_OD_date,VA
UCVA OD Vision,VA0800000848,UCVA.OD.Vision,안과검사,UCVA.OD.Vision,VA_OD_UC,VA
UCVA OD (Vision),VA0800000848,UCVA.OD..Vision.,안과검사,UCVA.OD.(Vision),VA_OD_Cor,VA
UCVA OD Sph,VA0800000848,UCVA.OD.Sph,안과검사,UCVA.OD.Sph,CVA_OD_Sph,VA
UCVA OD Cyl,VA0800000848,UCVA.OD.Cyl,안과검사,UCVA.OD.Cyl,CVA_OD_Cyl,VA
UCVA OD Ax,VA0800000848,UCVA.OD.Ax,안과검사,UCVA.OD.Ax,CVA_OD_Ax,VA
UCVA OD 거리,VA0800000848,UCVA.OD.거리,안과검사,UCVA.OD.거리,VA_OD_distance,VA
UCVA OD 착용,VA0800000848,UCVA.OD.착용,안과검사,UCVA.OD.착용,CVA_OD_eyewear,VA
UCVA OS date,VA0800000848,UCVA.OS.date,안과검사,UCVA.OS.date,VA_OS_date,VA
UCVA OS Vision,VA0800000848,UCVA.OS.Vision,안과검사,UCVA.OS.Vision,VA_OS_UC,VA
UCVA OS (Vision),VA0800000848,UCVA.OS..Vision.,안과검사,UCVA.OS.(Vision),VA_OS_Cor,VA
UCVA OS Sph,VA0800000848,UCVA.OS.Sph,안과검사,UCVA.OS.Sph,CVA_OS_Sph,VA
UCVA OS Cyl,VA0800000848,UCVA.OS.Cyl,안과검사,UCVA.OS.Cyl,CVA_OS_Cyl,VA
UCVA OS Ax,VA0800000848,UCVA.OS.Ax,안과검사,UCVA.OS.Ax,CVA_OS_Ax,VA
UCVA OS 거리,VA0800000848,UCVA.OS.거리,안과검사,UCVA.OS.거리,VA_OS_distance,VA
UCVA OS 착용,VA0800000848,UCVA.OS.착용,안과검사,UCVA.OS.착용,CVA_OS_eyewear,VA
BCVA OD date,VA0800000848,BCVA.OD.date,안과검사,BCVA.OD.date,BCVA_OD_date,VA
BCVA OD (Vision),VA0800000848,BCVA.OD..Vision.,안과검사,BCVA.OD.(Vision),BCVA_OD_,VA
BCVA OD Method,VA0800000848,BCVA.OD.Method,안과검사,BCVA.OD.Method,BCVA_OD_Method,VA
BCVA OD Sph,VA0800000848,BCVA.OD.Sph,안과검사,BCVA.OD.Sph,BCVA_OD_Sph,VA
BCVA OD Cyl,VA0800000848,BCVA.OD.Cyl,안과검사,BCVA.OD.Cyl,BCVA_OD_Cyl,VA
BCVA OD Ax,VA0800000848,BCVA.OD.Ax,안과검사,BCVA.OD.Ax,BCVA_OD_Ax,VA
BCVA OS 거리,VA0800000848,BCVA.OS.거리,안과검사,BCVA.OS.거리,BCVA_OS_dist,VA
BCVA OD 착용,VA0800000848,BCVA.OD.착용,안과검사,BCVA.OD.착용,BCVA_OD_wear,VA
BCVA OS date,VA0800000848,BCVA.OS.date,안과검사,BCVA.OS.date,BCVA_OS_date,VA
BCVA OS (Vision),VA0800000848,BCVA.OS..Vision.,안과검사,BCVA.OS.(Vision),BCVA_OS_(Vision),VA
BCVA OS Method,VA0800000848,BCVA.OS.Method,안과검사,BCVA.OS.Method,BCVA_OS_Method,VA
BCVA OS Sph,VA0800000848,BCVA.OS.Sph,안과검사,BCVA.OS.Sph,BCVA_OS_Sph,VA
BCVA OS Cyl,VA0800000848,BCVA.OS.Cyl,안과검사,BCVA.OS.Cyl,BCVA_OS_Cyl,VA
BCVA OS Ax,VA0800000848,BCVA.OS.Ax,안과검사,BCVA.OS.Ax,BCVA_OS_Ax,VA
BCVA OD 거리,VA0800000848,BCVA.OD.거리,안과검사,BCVA.OD.거리,BCVA_OD_dist,VA
BCVA OS 착용,VA0800000848,BCVA.OS.착용,안과검사,BCVA.OS.착용,BCVA_OS_wear,VA
Refraction OD Date,VA0800000848,Refraction.OD.Date,안과검사,Refraction.OD.Date,Refraction_OD_Date,VA
Refraction OD Method,VA0800000848,Refraction.OD.Method,안과검사,Refraction.OD.Method,Refraction_OD_Method,VA
Refraction OD Ds,VA0800000848,Refraction.OD.Ds,안과검사,Refraction.OD.Ds,Refraction_OD_Ds,VA
Refraction OD Dc,VA0800000848,Refraction.OD.Dc,안과검사,Refraction.OD.Dc,Refraction_OD_Dc,VA
Refraction OD Axis,VA0800000848,Refraction.OD.Axis,안과검사,Refraction.OD.Axis,Refraction_OD_Axis,VA
Refraction OS Date,VA0800000848,Refraction.OS.Date,안과검사,Refraction.OS.Date,Refraction_OS_Date,VA
Refraction OS Method,VA0800000848,Refraction.OS.Method,안과검사,Refraction.OS.Method,Refraction_OS_Method,VA
Refraction OS Ds,VA0800000848,Refraction.OS.Ds,안과검사,Refraction.OS.Ds,Refraction_OS_Ds,VA
Refraction OS Dc,VA0800000848,Refraction.OS.Dc,안과검사,Refraction.OS.Dc,Refraction_OS_Dc,VA
Refraction OS Axis,VA0800000848,Refraction.OS.Axis,안과검사,Refraction.OS.Axis,Refraction_OS_Axis,VA")


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
