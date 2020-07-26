/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2020/7/24 9:49:58                            */
/*==============================================================*/

CREATE DATABASE trucksystem


DROP TABLE IF EXISTS Carfile;

DROP TABLE IF EXISTS Carfile_type;

DROP TABLE IF EXISTS Commodity;

DROP TABLE IF EXISTS ENGINE;

DROP TABLE IF EXISTS MenuInfo;

DROP TABLE IF EXISTS RoleMenu;

DROP TABLE IF EXISTS Service;

DROP TABLE IF EXISTS Service_type;

DROP TABLE IF EXISTS UserRole;

DROP TABLE IF EXISTS Users;

DROP TABLE IF EXISTS category;

DROP TABLE IF EXISTS CLIENT;

DROP TABLE IF EXISTS datum;

DROP TABLE IF EXISTS department;

DROP TABLE IF EXISTS details;

DROP TABLE IF EXISTS employee;

DROP TABLE IF EXISTS fieldvehicle;

DROP TABLE IF EXISTS mechanic;

DROP TABLE IF EXISTS motorcycle;

DROP TABLE IF EXISTS `order`;

DROP TABLE IF EXISTS post;

DROP TABLE IF EXISTS recharge;
rop TABLE IF EXISTS resignation;

DROP TABLE IF EXISTS role;

DROP TABLE IF EXISTS settlement;

DROP TABLE IF EXISTS stars;

DROP TABLE IF EXISTS subset;

DROP TABLE IF EXISTS supplier;

DROP TABLE IF EXISTS supplier_linkman;

DROP TABLE IF EXISTS teams;

DROP TABLE IF EXISTS vbrand;

DROP TABLE IF EXISTS 供货单位省市表;

/*==============================================================*/
/* Table: Carfile                                               */
/*==============================================================*/
CREATE TABLE Carfile
(
   Carfile_id           INT NOT NULL,
   Carfile_typeid       INT,
   Carfile_number       VARCHAR(255),
   Carfile_type         VARCHAR(255),
   Carfile_name         VARCHAR(255),
   Carfile_state        INT,
   PRIMARY KEY (Carfile_id)
);

/*==============================================================*/
/* Table: Carfile_type                                          */
/*===========================================================*/
CREATE TABLE Carfile_type
(
   Carfile_typeid       INT NOT NULL,
   Carfile_typenumber   VARCHAR(255),
   Carfile_typename     VARCHAR(255),
   Carfile_typeABC      CHAR(2),
   Carfile_typestate    INT,
   PRIMARY KEY (Carfile_typeid)
);

/*==============================================================*/
/* Table: Commodity                                             */
/*==============================================================*/
CREATE TABLE Commodity
(
   Commodity_meansid    INT NOT NULL,
   Commodity_meansnumber VARCHAR(255),
   Commodity_meanstype  VARCHAR(255),
   Commodity_meansnama  VARCHAR(255),
   Commodity_meansinventory INT,
   Commodity_meansdizi  VARCHAR(255),
   Commodity_meansdiziname VARCHAR(255),
   Commodity_meansstate INT,
   PRIMARY KEY (Commodity_meansid)
);

/*==============================================================*/
/* Table: Engine                                                */
/*===========================================================*/
CREATE TABLE ENGINE
(
   Engine_id            INT NOT NULL,
   Engine_number        VARCHAR(255),
   Engine_name          VARCHAR(255),
   Engine_state         INT,
   PRIMARY KEY (Engine_id)
);

/*==============================================================*/
/* Table: MenuInfo                                              */
/*==============================================================*/
CREATE TABLE MenuInfo
(
   fid                  INT NOT NULL,
   menuname             VARCHAR(20),
   PRIMARY KEY (fid)
);

/*==============================================================*/
/* Table: RoleMenu                                              */
/*==============================================================*/
CREATE TABLE RoleMenu
(
   rid                  INT NOT NULL,
   fid                  INT NOT NULL,
   PRIMARY KEY (rid, fid)
);

/*==============================================================*/
/* Table: Service                                            */
/*==============================================================*/
CREATE TABLE Service
(
   Service_id           INT NOT NULL,
   Service_typeid       INT,
   Service_number       VARCHAR(255),
   Service_name         VARCHAR(255),
   Service_price        DECIMAL(8,2),
   Service_vipprice     DECIMAL(8,2),
   Service_starttime    DATETIME,
   Service_endtime      DATETIME,
   state                INT,
   PRIMARY KEY (Service_id)
);

/*==============================================================*/
/* Table: Service_type                                          */
/*==============================================================*/
CREATE TABLE Service_type
(
   Service_typeid       INT NOT NULL,
   Service_typenumber   VARCHAR(255),
   Service_typename     VARCHAR(255),
   Service_state        INT,
   PRIMARY KEY (Service_typeid)
);

/*==============================================================*/
/* Table: UserRole                                              */
/*===========================================================*/
CREATE TABLE UserRole
(
   uid                  INT NOT NULL,
   rid                  INT NOT NULL,
   PRIMARY KEY (uid, rid)
);

/*==============================================================*/
/* Table: Users                                                 */
/*==============================================================*/
CREATE TABLE Users
(
   uid                  INT NOT NULL,
   account              VARCHAR(20),
   PASSWORD             VARCHAR(20),
   vipcard              VARCHAR(20),
   username             VARCHAR(20),
   sex                  VARCHAR(20),
   phone                VARCHAR(20),
   integral             INT,
   balance              FLOAT,
   PRIMARY KEY (uid)
);

/*==============================================================*/
/* Table: category                                              */
/*==============================================================*/
CREATE TABLE category
(
   cid               INT NOT NULL,
   cname                VARCHAR(50),
   PRIMARY KEY (cid)
);

/*==============================================================*/
/* Table: client                                                */
/*==============================================================*/
CREATE TABLE CLIENT
(
   clid                 VARCHAR(50) NOT NULL,
   did                  INT,
   clname               VARCHAR(50),
   cldate               DATE,
   clsex                VARCHAR(10),
   clidentity           VARCHAR(50),
   clphone              VARCHAR(50),
   province             VARCHAR(50),
   city                 VARCHAR(50),
   district             VARCHAR(50),
   address              VARCHAR(155),
   remark               VARCHAR(100),
   clstate              INT,
   PRIMARY KEY (clid)
);

/*==============================================================*/
/* Table: datum                                                 */
/*===========================================================*/
CREATE TABLE datum
(
   did                  INT NOT NULL,
   clid                 VARCHAR(50),
   license              VARCHAR(100),
   dbrand               VARCHAR(50),
   dsignal              VARCHAR(50),
   pilot                VARCHAR(50),
   dphone               VARCHAR(50),
   ownership            VARCHAR(50),
   ddate                DATE,
   dcolor               VARCHAR(50),
   mileage              VARCHAR(50),
   fuel                 VARCHAR(50),
   dremark              VARCHAR(50),
   PRIMARY KEY (did)
);

/*==============================================================*/
/* Table: department                                            */
/*==============================================================*/
CREATE TABLE department
(
   deptid               INT NOT NULL,
   deptname             VARCHAR(50),
   PRIMARY KEY (deptid)
);

/*==============================================================*/
/* Table: details                                            */
/*==============================================================*/
CREATE TABLE details
(
   detailsId            INT NOT NULL,
   oid                  VARCHAR(50),
   detailsname          VARCHAR(50),
   detailsprice         DECIMAL(18,2),
   detailsdate          INT,
   detailscount         INT,
   PRIMARY KEY (detailsId)
);

/*==============================================================*/
/* Table: employee                                              */
/*==============================================================*/
CREATE TABLE employee
(
   empid                INT NOT NULL,
   deptid               INT,
   postid               INT,
   resid                INT,
   empname              VARCHAR(50),
   empsex               VARCHAR(50),
   empaccount           VARCHAR(25),
   emppwd               VARCHAR(16),
   empcard              VARCHAR(18),
   empphone             VARCHAR(11),
   empemail             VARCHAR(50),
   empaddress           VARCHAR(255),
   empborne          DATE,
   empEntrydate         DATE,
   empCorrectdate       DATE,
   empstate             INT,
   PRIMARY KEY (empid)
);

/*==============================================================*/
/* Table: fieldvehicle                                          */
/*==============================================================*/
CREATE TABLE fieldvehicle
(
   fieldid              INT NOT NULL,
   teamsid              INT,
   carno                VARCHAR(10),
   carbrand             VARCHAR(20),
   cartype              VARCHAR(25),
   carmilion            FLOAT,
   state                INT,
   price                FLOAT,
   PRIMARY KEY (fieldid)
);

/*==============================================================*/
/* Table: mechanic                                              */
/*==============================================================*/
CREATE TABLE mechanic
(
   mecid                INT NOT NULL,
   teamsid              INT,
   starsid              INT,
   oid               VARCHAR(50),
   mecname              VARCHAR(50),
   mecsex               VARCHAR(5),
   mecphone             VARCHAR(11),
   mecborndate          DATE,
   mecaddress           VARCHAR(255),
   meccard              VARCHAR(18),
   mecstate             INT,
   mecprice             FLOAT,
   PRIMARY KEY (mecid)
);

/*==============================================================*/
/* Table: motorcycle                                            */
/*==============================================================*/
CREATE TABLE motorcycle
(
   MID                  INT NOT NULL,
   bid                  INT,
   mname                VARCHAR(50),
   PRIMARY KEY (MID)
);

/*==============================================================*/
/* Table: `order`                                               */
/*==============================================================*/
CREATE TABLE `order`
(
   oid                  VARCHAR(50) NOT NULL,
   settlementid         INT,
   ostate            INT,
   ovehicle             VARCHAR(50),
   oremark              VARCHAR(50),
   crew                 VBIN50,
   olicense             VARCHAR(50),
   ophone               VARCHAR(50),
   oname                VARCHAR(50),
   obrand               VARCHAR(50),
   omodel               VARCHAR(50),
   AGGREGATE            DECIMAL(18,2),
   odate                DATE,
   wstate               INT,
   finishtime           DATE,
   rework               INT,
   cause                INT,
   PRIMARY KEY (oid)
);

/*==============================================================*/
/* Table: post                                                  */
/*==============================================================*/
CREATE TABLE post
(
   postid               INT NOT NULL,
   deptid               INT,
   postname             VARCHAR(50),
   PRIMARY KEY (postid)
);

/*==============================================================*/
/* Table: recharge                                           */
/*==============================================================*/
CREATE TABLE recharge
(
   rechargeid           INT NOT NULL,
   uid                  INT,
   rechargetime         DATE,
   pricestate           INT,
   PRIMARY KEY (rechargeid)
);

/*==============================================================*/
/* Table: resignation                                           */
/*==============================================================*/
CREATE TABLE resignation
(
   resid                INT NOT NULL,
   deptid               INT,
   empid                INT,
   resdate              DATE,
   resignationreson     VARCHAR(255),
   resstate             INT,
   PRIMARY KEY (resid)
);

/*==============================================================*/
/* Table: role                                                  */
/*==============================================================*/
CREATE TABLE role
(
   rid                  INT NOT NULL,
   rolenmae           archar(20),
   PRIMARY KEY (rid)
);

/*==============================================================*/
/* Table: settlement                                            */
/*==============================================================*/
CREATE TABLE settlement
(
   settlementid         INT NOT NULL,
   oid                  VARCHAR(50),
   saleon               VARCHAR(20),
   billtype             VARCHAR(20),
   settlementmode       VARCHAR(20),
   state                INT,
   paymenttime          DATE,
   total                FLOAT,
   deductionprice       FLOAT,
   customername         VARCHAR(20),
   businesstype         VARCHAR(20),
   carbrand             VARCHAR(20),
   PRIMARY KEY (settlementid)
);

/*==============================================================*/
/* Table: stars                                                 */
/*==============================================================*/
CREATE TABLE stars
(
   starsid              INT NOT NULL,
   starslevel        VARCHAR(50),
   PRIMARY KEY (starsid)
);

/*==============================================================*/
/* Table: subset                                                */
/*==============================================================*/
CREATE TABLE subset
(
   sid                  INT NOT NULL,
   cid                  INT,
   sname                VARCHAR(50),
   sprice               DECIMAL(18,2),
   PRIMARY KEY (sid)
);

/*==============================================================*/
/* Table: supplier                                              */
/*==============================================================*/
CREATE TABLE supplier
(
   supplier_id          INT NOT NULL,
   supplier_provinceid  INT,
   supplier_linkmanid   INT,
   supplier_number      VARCHAR(255),
   supplier_name        VARCHAR(255),
   supplier_site        VARCHAR(255),
   supplier_ipone       VARCHAR(11),
   supplier_emil        VARCHAR(255),
   supplier_state       INT,
   PRIMARY kesupplier_id)
);

/*==============================================================*/
/* Table: supplier_linkman                                      */
/*==============================================================*/
CREATE TABLE supplier_linkman
(
   supplier_linkmanid   INT NOT NULL,
   supplier_linkmannumber VARCHAR(255),
   supplier_linkmanpost VARCHAR(255),
   supplier_linkmanname VARCHAR(255),
   supplier_linkmanipone VARCHAR(11),
   supplier_linkmanemil VARCHAR(255),
   supplier_linkmanstate INT,
   PRIMARY KEY (supplier_linkmanid)
);

/*==============================================================*/
/* Table: teams                                                 */
/*==============================================================*/
CREATE TABLE teams
(
   teamsid              INT NOT NULL,
   teamsname            VARCHAR(50),
   PRIMARY KEY (teamsid)
);

/*==============================================================*/
/* Table: vbrand                                             */
/*==============================================================*/
CREATE TABLE vbrand
(
   bid                  INT NOT NULL,
   bname                VARCHAR(50),
   PRIMARY KEY (bid)
);

/*==============================================================*/
/* Table: 供货单位省市表                                               */
/*==============================================================*/
create table 供货单位省市表
(
   supplier_provinceid  int not null,
   supplier_provincename varchar(255),
   supplier_provincestate int,
   primary key (supplier_provinceid)
);

alter table Carfile add constraint FK_车辆与车辆类型之间的关系 foreign key (Carfile_typeid)
      references Carfile_type (Carfile_typeid) on delete restrict on update restrict;

alter table RoleMenu add constraint FK_RoleMenu foreign key (rid)
      references role (rid) on delete restrict on update restrict;

alter table RoleMenu add constraint FK_RoleMenu2 foreign key (fid      references MenuInfo (fid) on delete restrict on update restrict;

alter table Service add constraint FK_维修项目与维修类型的关系 foreign key (Service_typeid)
      references Service_type (Service_typeid) on delete restrict on update restrict;

alter table UserRole add constraint FK_UserRole foreign key (uid)
      references Users (uid) on delete restrict on update restrict;

alter table UserRole add constraint FK_UserRole2 foreign key (rid)
      references role (rid) on delete restrict on update restrict;

alter table client add constraint FK_Relationship_3 foreign key (did)
      references datum (did) on delete restrict on update restrict;

alter table datum add constraint FK_Relationship_4 foreign key (clid)
      references client (clid) on delete restrict on update restrict;

alter table details add constraint FK_Relationship_5 foreign key (oid)
      references `order` (oid) on delete restrict on update restrict;

alter table employee add constraint FK_Relatioip_14 foreign key (postid)
      references post (postid) on delete restrict on update restrict;

alter table employee add constraint FK_Relationship_6 foreign key (deptid)
      references department (deptid) on delete restrict on update restrict;

alter table employee add constraint FK_Relationship_8 foreign key (resid)
      references resignation (resid) on delete restrict on update restrict;

alter table fieldvehicle add constraint FK_Relationship_12 foreign key (teamsid)
      references teams (teamsid) on delete restrict on update restrict;

alter table mechanic add constraint FK_Relationship_10 foreign key (starsid)
      references stars (starsid) on delete restrict on update restrict;

alter table mechanic add constraint FK_Relationship_11 foreign key (teamsid)
      references teams (teamsid) on delete restrict on update restrict;

alter table mechanic add constraint FK_Relationship_21 foreign key (oid)
      references `order` (oid) on delete restrict on update restrict;

ar table motorcycle add constraint FK_Relationship_1 foreign key (bid)
      references vbrand (bid) on delete restrict on update restrict;

alter table `order` add constraint FK_js_repair2 foreign key (settlementid)
      references settlement (settlementid) on delete restrict on update restrict;

alter table post add constraint FK_Relationship_13 foreign key (deptid)
      references department (deptid) on delete restrict on update restrict;

alter table recharge add constraint FK_user_recharge foreign key (uid)
      references Users (uid) on delete restrict on update restrict;

alter table resignation add constraint FK_Relationship_7 foreign key (empid)
      references employee (empid) on delete restrict on update restrict;

alter table resignation add constraint FK_Relationship_9 foreign key (deptid)
      references department (deptid) on delete restrict on update restrict;

alter table settlement add constraint FK_js_repair foreign key (oid)
      references `order` (oid) on deletestrict on update restrict;

alter table subset add constraint FK_Relationship_2 foreign key (cid)
      references category (cid) on delete restrict on update restrict;

alter table supplier add constraint FK_供货单位与供货省市的关系 foreign key (supplier_provinceid)
      references 供货单位省市表 (supplier_provinceid) on delete restrict on update restrict;

alter table supplier add constraint FK_供货单位与联系人的关系 foreign key (supplier_linkmanid)
      references supplier_linkman (supplier_linkmanid) on delete restrict on update restrict;

