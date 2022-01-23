/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2016                    */
/* Created on:     1/23/2022 7:23:35 PM                         */
/*==============================================================*/


if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TBLACCOUNT') and o.name = 'FK_TBLACCOU_ASSOCIATI_TBLCUSTO')
alter table TBLACCOUNT
   drop constraint FK_TBLACCOU_ASSOCIATI_TBLCUSTO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TBLADMINST') and o.name = 'FK_TBLADMIN_INHERITAN_TBLEMPLO')
alter table TBLADMINST
   drop constraint FK_TBLADMIN_INHERITAN_TBLEMPLO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TBLCAR') and o.name = 'FK_TBLCAR_ASSOCIATI_TBBRANCH')
alter table TBLCAR
   drop constraint FK_TBLCAR_ASSOCIATI_TBBRANCH
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TBLCOMMENT') and o.name = 'FK_TBLCOMME_ASSOCIATI_TBLCUSTO')
alter table TBLCOMMENT
   drop constraint FK_TBLCOMME_ASSOCIATI_TBLCUSTO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TBLCREDITCARD') and o.name = 'FK_TBLCREDI_INHERITAN_TBLACCOU')
alter table TBLCREDITCARD
   drop constraint FK_TBLCREDI_INHERITAN_TBLACCOU
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TBLDRIVER') and o.name = 'FK_TBLDRIVE_ASSOCIATI_TBLADMIN')
alter table TBLDRIVER
   drop constraint FK_TBLDRIVE_ASSOCIATI_TBLADMIN
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TBLDRIVER') and o.name = 'FK_TBLDRIVE_ASSOCIATI_TBLSECRE')
alter table TBLDRIVER
   drop constraint FK_TBLDRIVE_ASSOCIATI_TBLSECRE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TBLDRIVER') and o.name = 'FK_TBLDRIVE_INHERITAN_TBLEMPLO')
alter table TBLDRIVER
   drop constraint FK_TBLDRIVE_INHERITAN_TBLEMPLO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TBLINSURANCE') and o.name = 'FK_TBLINSUR_ASSOCIATI_TBLCAR')
alter table TBLINSURANCE
   drop constraint FK_TBLINSUR_ASSOCIATI_TBLCAR
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TBLPAYPAL') and o.name = 'FK_TBLPAYPA_INHERITAN_TBLACCOU')
alter table TBLPAYPAL
   drop constraint FK_TBLPAYPA_INHERITAN_TBLACCOU
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TBLRENT') and o.name = 'FK_TBLRENT_TBLRENT_TBLCUSTO')
alter table TBLRENT
   drop constraint FK_TBLRENT_TBLRENT_TBLCUSTO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TBLRENT') and o.name = 'FK_TBLRENT_TBLRENT2_TBLCAR')
alter table TBLRENT
   drop constraint FK_TBLRENT_TBLRENT2_TBLCAR
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TBLSECRETARY') and o.name = 'FK_TBLSECRE_ASSOCIATI_TBLADMIN')
alter table TBLSECRETARY
   drop constraint FK_TBLSECRE_ASSOCIATI_TBLADMIN
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TBLSECRETARY') and o.name = 'FK_TBLSECRE_INHERITAN_TBLEMPLO')
alter table TBLSECRETARY
   drop constraint FK_TBLSECRE_INHERITAN_TBLEMPLO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TBLTRANSACTION') and o.name = 'FK_TBLTRANS_ASSOCIATI_TBLCAR')
alter table TBLTRANSACTION
   drop constraint FK_TBLTRANS_ASSOCIATI_TBLCAR
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TBBRANCH')
            and   type = 'U')
   drop table TBBRANCH
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('TBLACCOUNT')
            and   name  = 'ASSOCIATION_6_FK'
            and   indid > 0
            and   indid < 255)
   drop index TBLACCOUNT.ASSOCIATION_6_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TBLACCOUNT')
            and   type = 'U')
   drop table TBLACCOUNT
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TBLADMINST')
            and   type = 'U')
   drop table TBLADMINST
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('TBLCAR')
            and   name  = 'ASSOCIATION_4_FK'
            and   indid > 0
            and   indid < 255)
   drop index TBLCAR.ASSOCIATION_4_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TBLCAR')
            and   type = 'U')
   drop table TBLCAR
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('TBLCOMMENT')
            and   name  = 'ASSOCIATION_5_FK'
            and   indid > 0
            and   indid < 255)
   drop index TBLCOMMENT.ASSOCIATION_5_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TBLCOMMENT')
            and   type = 'U')
   drop table TBLCOMMENT
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('TBLCREDITCARD')
            and   name  = 'INHERITANCE_1_FK'
            and   indid > 0
            and   indid < 255)
   drop index TBLCREDITCARD.INHERITANCE_1_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TBLCREDITCARD')
            and   type = 'U')
   drop table TBLCREDITCARD
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TBLCUSTOMER')
            and   type = 'U')
   drop table TBLCUSTOMER
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('TBLDRIVER')
            and   name  = 'ASSOCIATION_10_FK'
            and   indid > 0
            and   indid < 255)
   drop index TBLDRIVER.ASSOCIATION_10_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('TBLDRIVER')
            and   name  = 'ASSOCIATION_9_FK'
            and   indid > 0
            and   indid < 255)
   drop index TBLDRIVER.ASSOCIATION_9_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TBLDRIVER')
            and   type = 'U')
   drop table TBLDRIVER
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TBLEMPLOYEE')
            and   type = 'U')
   drop table TBLEMPLOYEE
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('TBLINSURANCE')
            and   name  = 'ASSOCIATION_3_FK'
            and   indid > 0
            and   indid < 255)
   drop index TBLINSURANCE.ASSOCIATION_3_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TBLINSURANCE')
            and   type = 'U')
   drop table TBLINSURANCE
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TBLLOGGED')
            and   type = 'U')
   drop table TBLLOGGED
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('TBLPAYPAL')
            and   name  = 'INHERITANCE_2_FK'
            and   indid > 0
            and   indid < 255)
   drop index TBLPAYPAL.INHERITANCE_2_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TBLPAYPAL')
            and   type = 'U')
   drop table TBLPAYPAL
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('TBLRENT')
            and   name  = 'TBLRENT2_FK'
            and   indid > 0
            and   indid < 255)
   drop index TBLRENT.TBLRENT2_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('TBLRENT')
            and   name  = 'TBLRENT_FK'
            and   indid > 0
            and   indid < 255)
   drop index TBLRENT.TBLRENT_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TBLRENT')
            and   type = 'U')
   drop table TBLRENT
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('TBLSECRETARY')
            and   name  = 'ASSOCIATION_8_FK'
            and   indid > 0
            and   indid < 255)
   drop index TBLSECRETARY.ASSOCIATION_8_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TBLSECRETARY')
            and   type = 'U')
   drop table TBLSECRETARY
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('TBLTRANSACTION')
            and   name  = 'ASSOCIATION_2_FK'
            and   indid > 0
            and   indid < 255)
   drop index TBLTRANSACTION.ASSOCIATION_2_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TBLTRANSACTION')
            and   type = 'U')
   drop table TBLTRANSACTION
go

/*==============================================================*/
/* Table: TBBRANCH                                              */
/*==============================================================*/
create table TBBRANCH (
   BID                  int                  not null,
   BNAME                varchar(30)          null,
   constraint PK_TBBRANCH primary key (BID)
)
go

/*==============================================================*/
/* Table: TBLACCOUNT                                            */
/*==============================================================*/
create table TBLACCOUNT (
   ACID                 int                  not null,
   CID                  int                  not null,
   constraint PK_TBLACCOUNT primary key (ACID)
)
go

/*==============================================================*/
/* Index: ASSOCIATION_6_FK                                      */
/*==============================================================*/




create nonclustered index ASSOCIATION_6_FK on TBLACCOUNT (CID ASC)
go

/*==============================================================*/
/* Table: TBLADMINST                                            */
/*==============================================================*/
create table TBLADMINST (
   EID                  int                  not null,
   EUNAME               varchar(30)          null,
   EPASS                varchar(30)          null,
   APID                 int                  null,
   constraint PK_TBLADMINST primary key (EID)
)
go

/*==============================================================*/
/* Table: TBLCAR                                                */
/*==============================================================*/
create table TBLCAR (
   CRID                 int                  not null,
   BID                  int                  not null,
   CCOLOR               varchar(30)          null,
   CYEAR                int                  null,
   CMODEL               varchar(30)          null,
   CPRICE               int                  null,
   CTYPE                varchar(30)          null,
   constraint PK_TBLCAR primary key (CRID)
)
go

/*==============================================================*/
/* Index: ASSOCIATION_4_FK                                      */
/*==============================================================*/




create nonclustered index ASSOCIATION_4_FK on TBLCAR (BID ASC)
go

/*==============================================================*/
/* Table: TBLCOMMENT                                            */
/*==============================================================*/
create table TBLCOMMENT (
   CID                  int                  not null,
   CTID                 int                  null,
   CTVALUE              varchar(30)          null
)
go

/*==============================================================*/
/* Index: ASSOCIATION_5_FK                                      */
/*==============================================================*/




create nonclustered index ASSOCIATION_5_FK on TBLCOMMENT (CID ASC)
go

/*==============================================================*/
/* Table: TBLCREDITCARD                                         */
/*==============================================================*/
create table TBLCREDITCARD (
   ACID                 int                  not null,
   CARDNUMBER           int                  not null,
   CID                  int                  null,
   HOLDERNAME           varchar(30)          null,
   EXPIRYDATE           datetime             null,
   CVV                  int                  null,
   BALANCE              int                  null,
   constraint PK_TBLCREDITCARD primary key (ACID, CARDNUMBER)
)
go

/*==============================================================*/
/* Index: INHERITANCE_1_FK                                      */
/*==============================================================*/




create nonclustered index INHERITANCE_1_FK on TBLCREDITCARD (ACID ASC)
go

/*==============================================================*/
/* Table: TBLCUSTOMER                                           */
/*==============================================================*/
create table TBLCUSTOMER (
   CID                  int                  not null,
   CUNAME               varchar(30)          null,
   CPASS                varchar(30)          null,
   constraint PK_TBLCUSTOMER primary key (CID)
)
go

/*==============================================================*/
/* Table: TBLDRIVER                                             */
/*==============================================================*/
create table TBLDRIVER (
   EID                  int                  not null,
   TBL_EID              int                  not null,
   TBL_EID2             int                  not null,
   EUNAME               varchar(30)          null,
   EPASS                varchar(30)          null,
   constraint PK_TBLDRIVER primary key (EID)
)
go

/*==============================================================*/
/* Index: ASSOCIATION_9_FK                                      */
/*==============================================================*/




create nonclustered index ASSOCIATION_9_FK on TBLDRIVER (TBL_EID2 ASC)
go

/*==============================================================*/
/* Index: ASSOCIATION_10_FK                                     */
/*==============================================================*/




create nonclustered index ASSOCIATION_10_FK on TBLDRIVER (TBL_EID ASC)
go

/*==============================================================*/
/* Table: TBLEMPLOYEE                                           */
/*==============================================================*/
create table TBLEMPLOYEE (
   EID                  int                  not null,
   EUNAME               varchar(30)          null,
   EPASS                varchar(30)          null,
   constraint PK_TBLEMPLOYEE primary key (EID)
)
go

/*==============================================================*/
/* Table: TBLINSURANCE                                          */
/*==============================================================*/
create table TBLINSURANCE (
   IID                  int                  not null,
   CRID                 int                  not null,
   ISTATUS              int                  null,
   constraint PK_TBLINSURANCE primary key (IID)
)
go

/*==============================================================*/
/* Index: ASSOCIATION_3_FK                                      */
/*==============================================================*/




create nonclustered index ASSOCIATION_3_FK on TBLINSURANCE (CRID ASC)
go

/*==============================================================*/
/* Table: TBLLOGGED                                             */
/*==============================================================*/
create table TBLLOGGED (
   LID                  int                  null,
   CST                  bit                  null
)
go

/*==============================================================*/
/* Table: TBLPAYPAL                                             */
/*==============================================================*/
create table TBLPAYPAL (
   ACID                 int                  not null,
   EMAIL                varchar(30)          not null,
   CID                  int                  null,
   PPASS                varchar(30)          null,
   BALANCE              int                  null,
   constraint PK_TBLPAYPAL primary key (ACID, EMAIL)
)
go

/*==============================================================*/
/* Index: INHERITANCE_2_FK                                      */
/*==============================================================*/




create nonclustered index INHERITANCE_2_FK on TBLPAYPAL (ACID ASC)
go

/*==============================================================*/
/* Table: TBLRENT                                               */
/*==============================================================*/
create table TBLRENT (
   CID                  int                  not null,
   CRID                 int                  not null,
   constraint PK_TBLRENT primary key (CID, CRID)
)
go

/*==============================================================*/
/* Index: TBLRENT_FK                                            */
/*==============================================================*/




create nonclustered index TBLRENT_FK on TBLRENT (CID ASC)
go

/*==============================================================*/
/* Index: TBLRENT2_FK                                           */
/*==============================================================*/




create nonclustered index TBLRENT2_FK on TBLRENT (CRID ASC)
go

/*==============================================================*/
/* Table: TBLSECRETARY                                          */
/*==============================================================*/
create table TBLSECRETARY (
   EID                  int                  not null,
   TBL_EID              int                  not null,
   EUNAME               varchar(30)          null,
   EPASS                varchar(30)          null,
   SPID                 int                  null,
   constraint PK_TBLSECRETARY primary key (EID)
)
go

/*==============================================================*/
/* Index: ASSOCIATION_8_FK                                      */
/*==============================================================*/




create nonclustered index ASSOCIATION_8_FK on TBLSECRETARY (TBL_EID ASC)
go

/*==============================================================*/
/* Table: TBLTRANSACTION                                        */
/*==============================================================*/
create table TBLTRANSACTION (
   TID                  int                  not null,
   CRID                 int                  not null,
   TAMOUNT              int                  null,
   TDAYS                int                  null,
   RTDAY                datetime             null,
   constraint PK_TBLTRANSACTION primary key (TID)
)
go

/*==============================================================*/
/* Index: ASSOCIATION_2_FK                                      */
/*==============================================================*/




create nonclustered index ASSOCIATION_2_FK on TBLTRANSACTION (CRID ASC)
go

alter table TBLACCOUNT
   add constraint FK_TBLACCOU_ASSOCIATI_TBLCUSTO foreign key (CID)
      references TBLCUSTOMER (CID)
go

alter table TBLADMINST
   add constraint FK_TBLADMIN_INHERITAN_TBLEMPLO foreign key (EID)
      references TBLEMPLOYEE (EID)
go

alter table TBLCAR
   add constraint FK_TBLCAR_ASSOCIATI_TBBRANCH foreign key (BID)
      references TBBRANCH (BID)
go

alter table TBLCOMMENT
   add constraint FK_TBLCOMME_ASSOCIATI_TBLCUSTO foreign key (CID)
      references TBLCUSTOMER (CID)
go

alter table TBLCREDITCARD
   add constraint FK_TBLCREDI_INHERITAN_TBLACCOU foreign key (ACID)
      references TBLACCOUNT (ACID)
go

alter table TBLDRIVER
   add constraint FK_TBLDRIVE_ASSOCIATI_TBLADMIN foreign key (TBL_EID)
      references TBLADMINST (EID)
go

alter table TBLDRIVER
   add constraint FK_TBLDRIVE_ASSOCIATI_TBLSECRE foreign key (TBL_EID2)
      references TBLSECRETARY (EID)
go

alter table TBLDRIVER
   add constraint FK_TBLDRIVE_INHERITAN_TBLEMPLO foreign key (EID)
      references TBLEMPLOYEE (EID)
go

alter table TBLINSURANCE
   add constraint FK_TBLINSUR_ASSOCIATI_TBLCAR foreign key (CRID)
      references TBLCAR (CRID)
go

alter table TBLPAYPAL
   add constraint FK_TBLPAYPA_INHERITAN_TBLACCOU foreign key (ACID)
      references TBLACCOUNT (ACID)
go

alter table TBLRENT
   add constraint FK_TBLRENT_TBLRENT_TBLCUSTO foreign key (CID)
      references TBLCUSTOMER (CID)
go

alter table TBLRENT
   add constraint FK_TBLRENT_TBLRENT2_TBLCAR foreign key (CRID)
      references TBLCAR (CRID)
go

alter table TBLSECRETARY
   add constraint FK_TBLSECRE_ASSOCIATI_TBLADMIN foreign key (TBL_EID)
      references TBLADMINST (EID)
go

alter table TBLSECRETARY
   add constraint FK_TBLSECRE_INHERITAN_TBLEMPLO foreign key (EID)
      references TBLEMPLOYEE (EID)
go

alter table TBLTRANSACTION
   add constraint FK_TBLTRANS_ASSOCIATI_TBLCAR foreign key (CRID)
      references TBLCAR (CRID)
go

