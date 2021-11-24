--------------------------------------------------------
--  파일이 생성됨 - 화요일-11월-23-2021   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table KURLY_PRODUCT
--------------------------------------------------------

  CREATE TABLE "WEB"."KURLY_PRODUCT" 
   (	"P_NUM" NUMBER(5,0), 
	"P_IMAGE" VARCHAR2(50 BYTE), 
	"P_PRICE" NUMBER(10,0), 
	"P_NAME" VARCHAR2(50 BYTE), 
	"P_UNIT" VARCHAR2(10 BYTE), 
	"P_WRAP" VARCHAR2(50 BYTE), 
	"P_WRAP_CONT" VARCHAR2(100 BYTE), 
	"P_DELIVERY" VARCHAR2(30 BYTE), 
	"P_QTY" NUMBER(5,0), 
	"P_POINT" NUMBER(10,0), 
	"P_CATEGORY" VARCHAR2(30 BYTE), 
	"P_SUB_CATEGORY" VARCHAR2(30 BYTE), 
	"P_SELLER" VARCHAR2(30 BYTE), 
	"P_DISCOUNT" NUMBER(5,0), 
	"P_CONTENTS" VARCHAR2(100 BYTE), 
	"P_DATE" DATE, 
	"P_NAME_CONT" VARCHAR2(100 BYTE), 
	"P_CONTENTS_SPEC" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into WEB.KURLY_PRODUCT
SET DEFINE OFF;
Insert into WEB.KURLY_PRODUCT (P_NUM,P_IMAGE,P_PRICE,P_NAME,P_UNIT,P_WRAP,P_WRAP_CONT,P_DELIVERY,P_QTY,P_POINT,P_CATEGORY,P_SUB_CATEGORY,P_SELLER,P_DISCOUNT,P_CONTENTS,P_DATE,P_NAME_CONT,P_CONTENTS_SPEC) values (1,'에스프레소.jpg',2500,'에스프레소','1','컵(리유저블종이컵)',null,'직접수령',20,300,'A1','1','폴바셋',0,null,to_date('21/11/11','RR/MM/DD'),'클래식 중의 클래식',null);
Insert into WEB.KURLY_PRODUCT (P_NUM,P_IMAGE,P_PRICE,P_NAME,P_UNIT,P_WRAP,P_WRAP_CONT,P_DELIVERY,P_QTY,P_POINT,P_CATEGORY,P_SUB_CATEGORY,P_SELLER,P_DISCOUNT,P_CONTENTS,P_DATE,P_NAME_CONT,P_CONTENTS_SPEC) values (2,'아메리카노.jpg',3000,'아메리카노','1','컵(리유저블종이컵)',null,'직접수령',20,300,'A1','1','폴바셋',0,null,to_date('21/11/11','RR/MM/DD'),'올타임 넘버원',null);
Insert into WEB.KURLY_PRODUCT (P_NUM,P_IMAGE,P_PRICE,P_NAME,P_UNIT,P_WRAP,P_WRAP_CONT,P_DELIVERY,P_QTY,P_POINT,P_CATEGORY,P_SUB_CATEGORY,P_SELLER,P_DISCOUNT,P_CONTENTS,P_DATE,P_NAME_CONT,P_CONTENTS_SPEC) values (3,'카페라떼.jpg',3500,'카페라떼','1','컵(리유저블종이컵)',null,'직접수령',20,300,'A1','1','폴바셋',0,null,to_date('21/11/12','RR/MM/DD'),'선선한 가을 날씨에 딱 알맞는',null);
Insert into WEB.KURLY_PRODUCT (P_NUM,P_IMAGE,P_PRICE,P_NAME,P_UNIT,P_WRAP,P_WRAP_CONT,P_DELIVERY,P_QTY,P_POINT,P_CATEGORY,P_SUB_CATEGORY,P_SELLER,P_DISCOUNT,P_CONTENTS,P_DATE,P_NAME_CONT,P_CONTENTS_SPEC) values (4,'아이스크림라떼.jpg',3500,'아이스크림 라떼','1','컵(리유저블종이컵)',null,'직접수령',20,300,'A1','1','폴바셋',10,null,to_date('21/11/12','RR/MM/DD'),'폴바셋의 시그니쳐 메뉴',null);
Insert into WEB.KURLY_PRODUCT (P_NUM,P_IMAGE,P_PRICE,P_NAME,P_UNIT,P_WRAP,P_WRAP_CONT,P_DELIVERY,P_QTY,P_POINT,P_CATEGORY,P_SUB_CATEGORY,P_SELLER,P_DISCOUNT,P_CONTENTS,P_DATE,P_NAME_CONT,P_CONTENTS_SPEC) values (5,'핸드드립.jpg',5000,'핸드드립','1','컵(리유저블종이컵)',null,'직접수령',20,300,'A1','1','폴바셋',15,null,to_date('21/11/12','RR/MM/DD'),'엄선된 원두에 숙련된 바리스타의 손길이 더해진',null);
Insert into WEB.KURLY_PRODUCT (P_NUM,P_IMAGE,P_PRICE,P_NAME,P_UNIT,P_WRAP,P_WRAP_CONT,P_DELIVERY,P_QTY,P_POINT,P_CATEGORY,P_SUB_CATEGORY,P_SELLER,P_DISCOUNT,P_CONTENTS,P_DATE,P_NAME_CONT,P_CONTENTS_SPEC) values (6,'프라푸치노.jpg',5500,'프라푸치노','1','컵(리유저블종이컵)',null,'직접수령',20,300,'A1','1','폴바셋',20,null,to_date('21/11/12','RR/MM/DD'),'무더위를 한 방에 날려줄',null);
Insert into WEB.KURLY_PRODUCT (P_NUM,P_IMAGE,P_PRICE,P_NAME,P_UNIT,P_WRAP,P_WRAP_CONT,P_DELIVERY,P_QTY,P_POINT,P_CATEGORY,P_SUB_CATEGORY,P_SELLER,P_DISCOUNT,P_CONTENTS,P_DATE,P_NAME_CONT,P_CONTENTS_SPEC) values (7,'깜빠뉴.jpg',5000,'깜빠뉴','1','비닐포장',null,'택배배송',20,200,'A2','2','더페이머스램',10,null,to_date('21/11/13','RR/MM/DD'),null,null);
Insert into WEB.KURLY_PRODUCT (P_NUM,P_IMAGE,P_PRICE,P_NAME,P_UNIT,P_WRAP,P_WRAP_CONT,P_DELIVERY,P_QTY,P_POINT,P_CATEGORY,P_SUB_CATEGORY,P_SELLER,P_DISCOUNT,P_CONTENTS,P_DATE,P_NAME_CONT,P_CONTENTS_SPEC) values (8,'바게트.jpg',3500,'바게트','1','비닐포장',null,'택배배송',20,200,'A2','2','더페이머스램',0,null,to_date('21/11/13','RR/MM/DD'),null,null);
Insert into WEB.KURLY_PRODUCT (P_NUM,P_IMAGE,P_PRICE,P_NAME,P_UNIT,P_WRAP,P_WRAP_CONT,P_DELIVERY,P_QTY,P_POINT,P_CATEGORY,P_SUB_CATEGORY,P_SELLER,P_DISCOUNT,P_CONTENTS,P_DATE,P_NAME_CONT,P_CONTENTS_SPEC) values (9,'식빵.jpg',3000,'식빵','1','비닐포장',null,'택배배송',20,200,'A2','2','더페이머스램',0,null,to_date('21/11/15','RR/MM/DD'),null,null);
Insert into WEB.KURLY_PRODUCT (P_NUM,P_IMAGE,P_PRICE,P_NAME,P_UNIT,P_WRAP,P_WRAP_CONT,P_DELIVERY,P_QTY,P_POINT,P_CATEGORY,P_SUB_CATEGORY,P_SELLER,P_DISCOUNT,P_CONTENTS,P_DATE,P_NAME_CONT,P_CONTENTS_SPEC) values (10,'치아바타.jpg',2500,'치아바타','1','비닐포장',null,'택배배송',20,200,'A2','2','더페이머스램',0,null,to_date('21/11/15','RR/MM/DD'),null,null);
Insert into WEB.KURLY_PRODUCT (P_NUM,P_IMAGE,P_PRICE,P_NAME,P_UNIT,P_WRAP,P_WRAP_CONT,P_DELIVERY,P_QTY,P_POINT,P_CATEGORY,P_SUB_CATEGORY,P_SELLER,P_DISCOUNT,P_CONTENTS,P_DATE,P_NAME_CONT,P_CONTENTS_SPEC) values (11,'크로와상.jpg',3000,'크로와상','1','비닐포장',null,'택배배송',20,200,'A2','2','더페이머스램',0,null,to_date('21/11/15','RR/MM/DD'),null,null);
Insert into WEB.KURLY_PRODUCT (P_NUM,P_IMAGE,P_PRICE,P_NAME,P_UNIT,P_WRAP,P_WRAP_CONT,P_DELIVERY,P_QTY,P_POINT,P_CATEGORY,P_SUB_CATEGORY,P_SELLER,P_DISCOUNT,P_CONTENTS,P_DATE,P_NAME_CONT,P_CONTENTS_SPEC) values (12,'산양유.jpg',5000,'[조공]PET 나 산양유 좋아해 스틱','1팩','상온/종이포장','택배배송은 에코포장이 스티로폼으로 대체됩니다.','샛별배송/택배배송',100,500,'반려동물','고양이간식','조공',0,null,to_date('21/11/15','RR/MM/DD'),null,null);
Insert into WEB.KURLY_PRODUCT (P_NUM,P_IMAGE,P_PRICE,P_NAME,P_UNIT,P_WRAP,P_WRAP_CONT,P_DELIVERY,P_QTY,P_POINT,P_CATEGORY,P_SUB_CATEGORY,P_SELLER,P_DISCOUNT,P_CONTENTS,P_DATE,P_NAME_CONT,P_CONTENTS_SPEC) values (13,'게살.jpg',2900,'[조공]PET 나 게살 좋아해 스틱','1팩','상온/종이포장','택배배송은 에코포장이 스티로폼으로 대체됩니다.','샛별배송/택배배송',100,290,'반려동물','고양이간식','조공',0,'2-1.gif',to_date('21/11/15','RR/MM/DD'),'특별한 기회로 만나보는 홍게 간식',null);
--------------------------------------------------------
--  DDL for Index SYS_C0011895
--------------------------------------------------------

  CREATE UNIQUE INDEX "WEB"."SYS_C0011895" ON "WEB"."KURLY_PRODUCT" ("P_NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table KURLY_PRODUCT
--------------------------------------------------------

  ALTER TABLE "WEB"."KURLY_PRODUCT" MODIFY ("P_PRICE" NOT NULL ENABLE);
  ALTER TABLE "WEB"."KURLY_PRODUCT" MODIFY ("P_NAME" NOT NULL ENABLE);
  ALTER TABLE "WEB"."KURLY_PRODUCT" MODIFY ("P_UNIT" NOT NULL ENABLE);
  ALTER TABLE "WEB"."KURLY_PRODUCT" MODIFY ("P_WRAP" NOT NULL ENABLE);
  ALTER TABLE "WEB"."KURLY_PRODUCT" MODIFY ("P_DELIVERY" NOT NULL ENABLE);
  ALTER TABLE "WEB"."KURLY_PRODUCT" MODIFY ("P_QTY" NOT NULL ENABLE);
  ALTER TABLE "WEB"."KURLY_PRODUCT" MODIFY ("P_POINT" NOT NULL ENABLE);
  ALTER TABLE "WEB"."KURLY_PRODUCT" MODIFY ("P_CATEGORY" NOT NULL ENABLE);
  ALTER TABLE "WEB"."KURLY_PRODUCT" MODIFY ("P_SUB_CATEGORY" NOT NULL ENABLE);
  ALTER TABLE "WEB"."KURLY_PRODUCT" MODIFY ("P_SELLER" NOT NULL ENABLE);
  ALTER TABLE "WEB"."KURLY_PRODUCT" MODIFY ("P_DISCOUNT" NOT NULL ENABLE);
  ALTER TABLE "WEB"."KURLY_PRODUCT" ADD PRIMARY KEY ("P_NUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
