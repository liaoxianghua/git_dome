---------------------------------------------
-- Export file for user DANGKOU            --
-- Created by lenovo on 2017/9/25, 9:06:32 --
---------------------------------------------

set define off
spool dangkou.log

prompt
prompt Creating table TB_AUTH_DEPARTMENT
prompt =================================
prompt
create table DANGKOU.TB_AUTH_DEPARTMENT
(
  id          NUMBER(8) not null,
  name        VARCHAR2(50),
  parent_id   NUMBER(8),
  remarks     VARCHAR2(200),
  type        NUMBER(8),
  valid       VARCHAR2(50),
  create_user NUMBER(8),
  create_time DATE,
  update_user NUMBER(8),
  update_time DATE,
  guid        VARCHAR2(32)
)
tablespace DANGKOU_TBS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table DANGKOU.TB_AUTH_DEPARTMENT
  is '部门表';
comment on column DANGKOU.TB_AUTH_DEPARTMENT.name
  is '部门名称';
comment on column DANGKOU.TB_AUTH_DEPARTMENT.parent_id
  is '父级id';
comment on column DANGKOU.TB_AUTH_DEPARTMENT.remarks
  is '备注';
comment on column DANGKOU.TB_AUTH_DEPARTMENT.type
  is '1 平台 2 景区 3 商户';
comment on column DANGKOU.TB_AUTH_DEPARTMENT.valid
  is '对应数据字典分类编码 valid 下的参数';
comment on column DANGKOU.TB_AUTH_DEPARTMENT.create_user
  is '创建人';
comment on column DANGKOU.TB_AUTH_DEPARTMENT.create_time
  is '创建时间';
comment on column DANGKOU.TB_AUTH_DEPARTMENT.update_user
  is '修改人';
comment on column DANGKOU.TB_AUTH_DEPARTMENT.update_time
  is '修改时间';
alter table DANGKOU.TB_AUTH_DEPARTMENT
  add constraint PK_TB_AUTH_DEPARTMENT primary key (ID)
  using index 
  tablespace DANGKOU_TBS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TB_AUTH_RESOURCE
prompt ===============================
prompt
create table DANGKOU.TB_AUTH_RESOURCE
(
  id          NUMBER(8) not null,
  name        VARCHAR2(50),
  code        VARCHAR2(50),
  url         VARCHAR2(80),
  parent_id   NUMBER(8),
  sort        NUMBER(8),
  valid       NUMBER(8),
  type        NUMBER(8),
  systemid    NUMBER(8),
  guid        VARCHAR2(32),
  remarks     VARCHAR2(200),
  create_time DATE,
  create_user NUMBER(8),
  update_time DATE,
  update_user NUMBER(8)
)
tablespace DANGKOU_TBS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on column DANGKOU.TB_AUTH_RESOURCE.id
  is '主键id';
comment on column DANGKOU.TB_AUTH_RESOURCE.name
  is '资源名称';
comment on column DANGKOU.TB_AUTH_RESOURCE.url
  is '资源地址';
comment on column DANGKOU.TB_AUTH_RESOURCE.parent_id
  is '父级菜单 顶级为空';
comment on column DANGKOU.TB_AUTH_RESOURCE.sort
  is '排序';
comment on column DANGKOU.TB_AUTH_RESOURCE.valid
  is '0 无效 1 有效';
comment on column DANGKOU.TB_AUTH_RESOURCE.type
  is '0： 模块  1：菜单  2：功能';
comment on column DANGKOU.TB_AUTH_RESOURCE.systemid
  is '所属系统';
comment on column DANGKOU.TB_AUTH_RESOURCE.remarks
  is '备注';
alter table DANGKOU.TB_AUTH_RESOURCE
  add constraint PK_RESOURCE_ID primary key (ID)
  using index 
  tablespace DANGKOU_TBS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TB_AUTH_ROLE
prompt ===========================
prompt
create table DANGKOU.TB_AUTH_ROLE
(
  id          NUMBER(8) not null,
  role_name   VARCHAR2(50),
  valid       NUMBER(8),
  remarks     VARCHAR2(200),
  guid        VARCHAR2(32),
  role_code   VARCHAR2(50),
  create_time DATE,
  create_user NUMBER(8),
  update_time DATE,
  update_user NUMBER(8)
)
tablespace DANGKOU_TBS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table DANGKOU.TB_AUTH_ROLE
  is '角色表';
comment on column DANGKOU.TB_AUTH_ROLE.role_name
  is '角色名称';
comment on column DANGKOU.TB_AUTH_ROLE.valid
  is '0 无效  1 有效';
comment on column DANGKOU.TB_AUTH_ROLE.remarks
  is '角色描述';
comment on column DANGKOU.TB_AUTH_ROLE.role_code
  is '角色编码';
alter table DANGKOU.TB_AUTH_ROLE
  add constraint PK_ROLEID primary key (ID)
  using index 
  tablespace DANGKOU_TBS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TB_AUTH_USER
prompt ===========================
prompt
create table DANGKOU.TB_AUTH_USER
(
  id            NUMBER(8) not null,
  username      VARCHAR2(200),
  password      VARCHAR2(200),
  truename      VARCHAR2(200),
  tel           VARCHAR2(100),
  phone         NUMBER(11),
  email         VARCHAR2(100),
  fax           VARCHAR2(100),
  valid         NUMBER(8),
  sex           NUMBER(8),
  login_ip      VARCHAR2(100),
  login_date    DATE,
  remarks       VARCHAR2(200),
  guid          VARCHAR2(32),
  qq            NUMBER(12),
  weixin        VARCHAR2(50),
  type          NUMBER(8),
  department_id NUMBER(8),
  create_user   NUMBER(8),
  create_time   DATE,
  modify_user   NUMBER(8),
  modify_time   DATE
)
tablespace DANGKOU_TBS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table DANGKOU.TB_AUTH_USER
  is '用户表';
comment on column DANGKOU.TB_AUTH_USER.id
  is '主键id';
comment on column DANGKOU.TB_AUTH_USER.username
  is '用户名';
comment on column DANGKOU.TB_AUTH_USER.password
  is '密码';
comment on column DANGKOU.TB_AUTH_USER.truename
  is '真实名字';
comment on column DANGKOU.TB_AUTH_USER.tel
  is '固定电话';
comment on column DANGKOU.TB_AUTH_USER.phone
  is '手机号';
comment on column DANGKOU.TB_AUTH_USER.email
  is '邮箱';
comment on column DANGKOU.TB_AUTH_USER.fax
  is '传真';
comment on column DANGKOU.TB_AUTH_USER.valid
  is '1 有效 0 无效';
comment on column DANGKOU.TB_AUTH_USER.sex
  is '性别 1 男 0 女';
comment on column DANGKOU.TB_AUTH_USER.login_ip
  is '登陆ip';
comment on column DANGKOU.TB_AUTH_USER.login_date
  is '登陆时间';
comment on column DANGKOU.TB_AUTH_USER.remarks
  is '备注';
comment on column DANGKOU.TB_AUTH_USER.type
  is '1 公司用户  2 入驻用户';
comment on column DANGKOU.TB_AUTH_USER.department_id
  is '部门id';
alter table DANGKOU.TB_AUTH_USER
  add constraint PK_TB_AUTH_USER primary key (ID)
  using index 
  tablespace DANGKOU_TBS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TB_AUTH_PERMISSION
prompt =================================
prompt
create table DANGKOU.TB_AUTH_PERMISSION
(
  id          NUMBER(8) not null,
  user_id     NUMBER(8),
  role_id     NUMBER(8),
  resource_id NUMBER(8),
  guid        VARCHAR2(32),
  valid       NUMBER(8),
  create_time DATE,
  create_user NUMBER(8),
  update_time DATE,
  update_user NUMBER(8)
)
tablespace DANGKOU_TBS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table DANGKOU.TB_AUTH_PERMISSION
  is '权限表';
comment on column DANGKOU.TB_AUTH_PERMISSION.user_id
  is '用户id';
comment on column DANGKOU.TB_AUTH_PERMISSION.role_id
  is '角色id';
comment on column DANGKOU.TB_AUTH_PERMISSION.resource_id
  is '资源id';
comment on column DANGKOU.TB_AUTH_PERMISSION.valid
  is '1 有效 0 无效';
alter table DANGKOU.TB_AUTH_PERMISSION
  add constraint PK_PERMISSION_ID primary key (ID)
  using index 
  tablespace DANGKOU_TBS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table DANGKOU.TB_AUTH_PERMISSION
  add constraint FK_TB_AUTH_PERM_TB_AUTH_RES_01 foreign key (RESOURCE_ID)
  references DANGKOU.TB_AUTH_RESOURCE (ID);
alter table DANGKOU.TB_AUTH_PERMISSION
  add constraint FK_TB_AUTH_PERM_TB_AUTH_ROL_01 foreign key (ROLE_ID)
  references DANGKOU.TB_AUTH_ROLE (ID);
alter table DANGKOU.TB_AUTH_PERMISSION
  add constraint FK_TB_AUTH_PERM_TB_AUTH_USE_01 foreign key (USER_ID)
  references DANGKOU.TB_AUTH_USER (ID);

prompt
prompt Creating table TB_AUTH_USERROLE
prompt ===============================
prompt
create table DANGKOU.TB_AUTH_USERROLE
(
  id          NUMBER(8) not null,
  user_id     NUMBER(8),
  role_id     NUMBER(8),
  create_time DATE,
  create_user NUMBER(8),
  update_time DATE,
  update_user NUMBER(8)
)
tablespace DANGKOU_TBS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table DANGKOU.TB_AUTH_USERROLE
  is '用户角色关系表';
comment on column DANGKOU.TB_AUTH_USERROLE.user_id
  is '用户id';
alter table DANGKOU.TB_AUTH_USERROLE
  add constraint TB_AUTH_USERROLE primary key (ID)
  using index 
  tablespace DANGKOU_TBS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table DANGKOU.TB_AUTH_USERROLE
  add constraint FK_TB_AUTH_USER_TB_AUTH_ROL_01 foreign key (ROLE_ID)
  references DANGKOU.TB_AUTH_ROLE (ID);
alter table DANGKOU.TB_AUTH_USERROLE
  add constraint FK_TB_AUTH_USER_TB_AUTH_USE_01 foreign key (USER_ID)
  references DANGKOU.TB_AUTH_USER (ID);

prompt
prompt Creating table TB_BROWSER_HISTORY
prompt =================================
prompt
create table DANGKOU.TB_BROWSER_HISTORY
(
  id                 NUMBER(8) not null,
  browser_type       NUMBER(8),
  browser_content_id NUMBER(8),
  create_time        DATE,
  create_user        NUMBER(8),
  update_time        DATE,
  update_user        NUMBER(8)
)
tablespace DANGKOU_TBS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table DANGKOU.TB_BROWSER_HISTORY
  is '浏览历史表';
comment on column DANGKOU.TB_BROWSER_HISTORY.id
  is '主键';
comment on column DANGKOU.TB_BROWSER_HISTORY.browser_type
  is '浏览类型';
comment on column DANGKOU.TB_BROWSER_HISTORY.browser_content_id
  is '浏览类别ID';
comment on column DANGKOU.TB_BROWSER_HISTORY.create_time
  is '创建时间';
comment on column DANGKOU.TB_BROWSER_HISTORY.create_user
  is '创建人';
comment on column DANGKOU.TB_BROWSER_HISTORY.update_time
  is '修改时间';
comment on column DANGKOU.TB_BROWSER_HISTORY.update_user
  is '修改人';
alter table DANGKOU.TB_BROWSER_HISTORY
  add constraint PK_TB_BROWSER_HISTORY primary key (ID)
  using index 
  tablespace DANGKOU_TBS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table TB_BUSI_NOTICE
prompt =============================
prompt
create table DANGKOU.TB_BUSI_NOTICE
(
  id          NUMBER(8) not null,
  title       VARCHAR2(200),
  outline     VARCHAR2(600),
  content     CLOB,
  file_name   VARCHAR2(200),
  file_url    VARCHAR2(500),
  is_top      NUMBER(8),
  read_count  NUMBER(8),
  valid       NUMBER(8),
  create_user NUMBER(8),
  create_time DATE,
  update_user NUMBER(8),
  update_time DATE
)
tablespace DANGKOU_TBS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table DANGKOU.TB_BUSI_NOTICE
  is '公告表';
comment on column DANGKOU.TB_BUSI_NOTICE.id
  is '主键';
comment on column DANGKOU.TB_BUSI_NOTICE.title
  is '标题';
comment on column DANGKOU.TB_BUSI_NOTICE.outline
  is '概要';
comment on column DANGKOU.TB_BUSI_NOTICE.content
  is '内容';
comment on column DANGKOU.TB_BUSI_NOTICE.file_name
  is '附件名称';
comment on column DANGKOU.TB_BUSI_NOTICE.file_url
  is '附件地址';
comment on column DANGKOU.TB_BUSI_NOTICE.is_top
  is '是否置顶  1是  0 否';
comment on column DANGKOU.TB_BUSI_NOTICE.read_count
  is '阅读数';
comment on column DANGKOU.TB_BUSI_NOTICE.valid
  is '是否有效 1有效 0无效';
comment on column DANGKOU.TB_BUSI_NOTICE.create_user
  is '创建人';
comment on column DANGKOU.TB_BUSI_NOTICE.create_time
  is '创建时间';
comment on column DANGKOU.TB_BUSI_NOTICE.update_user
  is '修改人';
comment on column DANGKOU.TB_BUSI_NOTICE.update_time
  is '修改时间';
alter table DANGKOU.TB_BUSI_NOTICE
  add constraint PK_TB_NOTICE primary key (ID)
  using index 
  tablespace DANGKOU_TBS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TB_BUSI_PICTURE_LIB
prompt ==================================
prompt
create table DANGKOU.TB_BUSI_PICTURE_LIB
(
  id          NUMBER(8) not null,
  pic_name    VARCHAR2(200),
  use_type    NUMBER(8),
  file_name   VARCHAR2(200),
  file_url    VARCHAR2(200),
  valid       NUMBER(8),
  remark      VARCHAR2(200),
  create_user NUMBER(8),
  create_time DATE,
  update_user NUMBER(8),
  update_time DATE
)
tablespace DANGKOU_TBS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table DANGKOU.TB_BUSI_PICTURE_LIB
  is '图片库';
comment on column DANGKOU.TB_BUSI_PICTURE_LIB.id
  is '主键';
comment on column DANGKOU.TB_BUSI_PICTURE_LIB.pic_name
  is '图片名称';
comment on column DANGKOU.TB_BUSI_PICTURE_LIB.use_type
  is '图片类型';
comment on column DANGKOU.TB_BUSI_PICTURE_LIB.file_name
  is '文件名';
comment on column DANGKOU.TB_BUSI_PICTURE_LIB.file_url
  is '文件路径';
comment on column DANGKOU.TB_BUSI_PICTURE_LIB.valid
  is '是否有效 1有效 0无效';
comment on column DANGKOU.TB_BUSI_PICTURE_LIB.remark
  is '说明';
comment on column DANGKOU.TB_BUSI_PICTURE_LIB.create_user
  is '创建人';
comment on column DANGKOU.TB_BUSI_PICTURE_LIB.create_time
  is '创建时间';
comment on column DANGKOU.TB_BUSI_PICTURE_LIB.update_user
  is '修改人';
comment on column DANGKOU.TB_BUSI_PICTURE_LIB.update_time
  is '修改时间';
alter table DANGKOU.TB_BUSI_PICTURE_LIB
  add constraint PK_TB_BUSI_PICTURE_LIB primary key (ID)
  using index 
  tablespace DANGKOU_TBS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TB_BUSI_SELLER
prompt =============================
prompt
create table DANGKOU.TB_BUSI_SELLER
(
  id               NUMBER(8) not null,
  seller_name      VARCHAR2(100),
  scenic_seller_id NUMBER(8),
  remark           VARCHAR2(1000),
  valid            NUMBER(8),
  create_user      NUMBER(8),
  create_time      DATE,
  update_user      NUMBER(8),
  update_time      DATE,
  invoice_type     NUMBER(8) default 1,
  deliver_pay_way  NUMBER(8),
  pre_pay_price    NUMBER(8),
  is_take_byselef  NUMBER(8),
  take_address     VARCHAR2(600)
)
tablespace DANGKOU_TBS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table DANGKOU.TB_BUSI_SELLER
  is '入驻商户表';
comment on column DANGKOU.TB_BUSI_SELLER.id
  is '主键';
comment on column DANGKOU.TB_BUSI_SELLER.seller_name
  is '商户名称';
comment on column DANGKOU.TB_BUSI_SELLER.scenic_seller_id
  is '所属景区';
comment on column DANGKOU.TB_BUSI_SELLER.remark
  is '描述';
comment on column DANGKOU.TB_BUSI_SELLER.valid
  is '是否有效 1有效 0无效';
comment on column DANGKOU.TB_BUSI_SELLER.create_user
  is '创建人';
comment on column DANGKOU.TB_BUSI_SELLER.create_time
  is '创建时间';
comment on column DANGKOU.TB_BUSI_SELLER.update_user
  is '修改人';
comment on column DANGKOU.TB_BUSI_SELLER.update_time
  is '修改时间';
comment on column DANGKOU.TB_BUSI_SELLER.invoice_type
  is '发票类型(1:无法开票2：电子发票，3：纸质发票)';
comment on column DANGKOU.TB_BUSI_SELLER.deliver_pay_way
  is '快递类型(1：快递到付，2：快递预付)';
comment on column DANGKOU.TB_BUSI_SELLER.pre_pay_price
  is '快递预付金额';
comment on column DANGKOU.TB_BUSI_SELLER.is_take_byselef
  is '是否当面领取(1:是，0：否)';
comment on column DANGKOU.TB_BUSI_SELLER.take_address
  is '发票领取地址';
alter table DANGKOU.TB_BUSI_SELLER
  add constraint TB_BUSI_SELLER primary key (ID)
  using index 
  tablespace DANGKOU_TBS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TB_BUSI_SELLER_USER
prompt ==================================
prompt
create table DANGKOU.TB_BUSI_SELLER_USER
(
  id             NUMBER(8) not null,
  username       VARCHAR2(200),
  pwd            VARCHAR2(100),
  seller_id      NUMBER(8),
  truename       VARCHAR2(200),
  valid          NUMBER(8),
  tel            VARCHAR2(50),
  phone          VARCHAR2(11),
  qq             VARCHAR2(50),
  email          VARCHAR2(50),
  weixin         VARCHAR2(50),
  create_time    DATE,
  create_user    NUMBER(8),
  update_user    NUMBER(8),
  update_time    DATE,
  device_no      VARCHAR2(100),
  device_type    NUMBER(8),
  device_version VARCHAR2(100)
)
tablespace DANGKOU_TBS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table DANGKOU.TB_BUSI_SELLER_USER
  is '商户用户表';
comment on column DANGKOU.TB_BUSI_SELLER_USER.id
  is '主键';
comment on column DANGKOU.TB_BUSI_SELLER_USER.username
  is '用户名';
comment on column DANGKOU.TB_BUSI_SELLER_USER.pwd
  is '密码';
comment on column DANGKOU.TB_BUSI_SELLER_USER.seller_id
  is '入驻商户ID';
comment on column DANGKOU.TB_BUSI_SELLER_USER.truename
  is '姓名';
comment on column DANGKOU.TB_BUSI_SELLER_USER.valid
  is '是否有效 1有效 0 无效';
comment on column DANGKOU.TB_BUSI_SELLER_USER.tel
  is '固定电话';
comment on column DANGKOU.TB_BUSI_SELLER_USER.phone
  is '移动电话';
comment on column DANGKOU.TB_BUSI_SELLER_USER.qq
  is 'qq';
comment on column DANGKOU.TB_BUSI_SELLER_USER.email
  is 'email';
comment on column DANGKOU.TB_BUSI_SELLER_USER.weixin
  is '微信';
comment on column DANGKOU.TB_BUSI_SELLER_USER.create_time
  is '创建时间';
comment on column DANGKOU.TB_BUSI_SELLER_USER.create_user
  is '创建人';
comment on column DANGKOU.TB_BUSI_SELLER_USER.update_user
  is '修改人';
comment on column DANGKOU.TB_BUSI_SELLER_USER.update_time
  is '修改时间';
comment on column DANGKOU.TB_BUSI_SELLER_USER.device_no
  is '客户端NO';
comment on column DANGKOU.TB_BUSI_SELLER_USER.device_type
  is '客户端类型：1、Android;2、IOS';
comment on column DANGKOU.TB_BUSI_SELLER_USER.device_version
  is 'Android、IOS版本';
alter table DANGKOU.TB_BUSI_SELLER_USER
  add constraint PK_TB_BUSI_SELLER_USER primary key (ID)
  using index 
  tablespace DANGKOU_TBS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TB_COUNTRY
prompt =========================
prompt
create table DANGKOU.TB_COUNTRY
(
  id          NUMBER(8) not null,
  name        VARCHAR2(100),
  pinyin      VARCHAR2(100),
  en_name     VARCHAR2(100),
  code        VARCHAR2(50),
  valid       NUMBER(8),
  create_time DATE,
  create_user NUMBER(8),
  update_time DATE,
  update_user NUMBER(8)
)
tablespace DANGKOU_TBS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table DANGKOU.TB_COUNTRY
  is '国家';
comment on column DANGKOU.TB_COUNTRY.id
  is '国家';
comment on column DANGKOU.TB_COUNTRY.name
  is '名称';
comment on column DANGKOU.TB_COUNTRY.pinyin
  is '拼音';
comment on column DANGKOU.TB_COUNTRY.en_name
  is '英文名';
comment on column DANGKOU.TB_COUNTRY.code
  is '三字码';
comment on column DANGKOU.TB_COUNTRY.valid
  is '状态 1：有效 0 无效';
alter table DANGKOU.TB_COUNTRY
  add constraint PK_TB_COUNTRY primary key (ID)
  using index 
  tablespace DANGKOU_TBS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TB_PROVINCE
prompt ==========================
prompt
create table DANGKOU.TB_PROVINCE
(
  id          NUMBER(8) not null,
  name        VARCHAR2(100),
  country_id  NUMBER(8),
  en_name     VARCHAR2(50),
  pinyin      VARCHAR2(50),
  valid       NUMBER(8),
  create_date DATE,
  create_user NUMBER(8),
  update_date DATE,
  update_user NUMBER(8)
)
tablespace DANGKOU_TBS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table DANGKOU.TB_PROVINCE
  is '省份';
comment on column DANGKOU.TB_PROVINCE.id
  is '省份';
comment on column DANGKOU.TB_PROVINCE.country_id
  is '国家id';
comment on column DANGKOU.TB_PROVINCE.en_name
  is '英文名称';
comment on column DANGKOU.TB_PROVINCE.pinyin
  is '拼音';
comment on column DANGKOU.TB_PROVINCE.valid
  is '状态 1 有效 0 无效';
alter table DANGKOU.TB_PROVINCE
  add constraint PK_TB_PROVINCE primary key (ID)
  using index 
  tablespace DANGKOU_TBS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table DANGKOU.TB_PROVINCE
  add constraint FK_TB_PROVINCE_TB_COUNTRY foreign key (COUNTRY_ID)
  references DANGKOU.TB_COUNTRY (ID);

prompt
prompt Creating table TB_CITY
prompt ======================
prompt
create table DANGKOU.TB_CITY
(
  id             NUMBER(8) not null,
  name           VARCHAR2(100),
  province_id    NUMBER(8),
  country_id     NUMBER(8),
  en_name        VARCHAR2(50),
  valid          NUMBER(8),
  code           VARCHAR2(50),
  pinyin         VARCHAR2(50),
  jianpin        VARCHAR2(50),
  initial_letter VARCHAR2(50),
  create_time    DATE,
  create_user    NUMBER(8),
  update_time    DATE,
  update_user    NUMBER(8)
)
tablespace DANGKOU_TBS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table DANGKOU.TB_CITY
  is '城市信息';
comment on column DANGKOU.TB_CITY.id
  is '城市';
comment on column DANGKOU.TB_CITY.name
  is '城市名称';
comment on column DANGKOU.TB_CITY.province_id
  is '省份id';
comment on column DANGKOU.TB_CITY.country_id
  is '国家id';
comment on column DANGKOU.TB_CITY.en_name
  is '英文名称';
comment on column DANGKOU.TB_CITY.valid
  is '0 无效 1 有效';
comment on column DANGKOU.TB_CITY.code
  is '城市三字码';
comment on column DANGKOU.TB_CITY.pinyin
  is '拼音';
alter table DANGKOU.TB_CITY
  add constraint PK_TB_CITY primary key (ID)
  using index 
  tablespace DANGKOU_TBS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table DANGKOU.TB_CITY
  add constraint FK_TB_CITY_TB_PROVINCE foreign key (PROVINCE_ID)
  references DANGKOU.TB_PROVINCE (ID);

prompt
prompt Creating table TB_CITY_AREA
prompt ===========================
prompt
create table DANGKOU.TB_CITY_AREA
(
  id                NUMBER(8) not null,
  city_id           NUMBER(8),
  name              VARCHAR2(50),
  type              NUMBER(8),
  inner_releated_id NUMBER(8),
  valid             NUMBER(8),
  create_time       DATE,
  create_user       NUMBER(8),
  update_time       DATE,
  update_user       NUMBER(8)
)
tablespace DANGKOU_TBS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table DANGKOU.TB_CITY_AREA
  is '城市区域';
comment on column DANGKOU.TB_CITY_AREA.city_id
  is '城市id';
comment on column DANGKOU.TB_CITY_AREA.name
  is '区域名称';
comment on column DANGKOU.TB_CITY_AREA.type
  is '1 行政区 2 商业区';
comment on column DANGKOU.TB_CITY_AREA.inner_releated_id
  is '区域自身关联id';
comment on column DANGKOU.TB_CITY_AREA.valid
  is '0 无效 1有效';
alter table DANGKOU.TB_CITY_AREA
  add constraint PK_TB_CITY_AREA primary key (ID)
  using index 
  tablespace DANGKOU_TBS
  pctfree 10
  initrans 2
  maxtrans 255;
alter table DANGKOU.TB_CITY_AREA
  add constraint FK_TB_CITY_AREA_TB_CITY foreign key (CITY_ID)
  references DANGKOU.TB_CITY (ID);

prompt
prompt Creating table TB_CITY_LAND_MARK
prompt ================================
prompt
create table DANGKOU.TB_CITY_LAND_MARK
(
  id          NUMBER(8) not null,
  name        VARCHAR2(100),
  type        NUMBER(8),
  city_id     NUMBER(8),
  valid       NUMBER(8),
  create_time DATE,
  create_user NUMBER(8),
  update_time DATE,
  update_user NUMBER(8)
)
tablespace DANGKOU_TBS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table DANGKOU.TB_CITY_LAND_MARK
  is '城市地标';
comment on column DANGKOU.TB_CITY_LAND_MARK.type
  is '1 ： 机场 2 火车站 3 地铁站';
comment on column DANGKOU.TB_CITY_LAND_MARK.city_id
  is '城市id';
comment on column DANGKOU.TB_CITY_LAND_MARK.valid
  is '1 有效 0 无效';
alter table DANGKOU.TB_CITY_LAND_MARK
  add constraint PK_TB_LAND_MARK primary key (ID)
  using index 
  tablespace DANGKOU_TBS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table DANGKOU.TB_CITY_LAND_MARK
  add constraint FK_TB_CITY_LAND_MARK_TB_CITY foreign key (CITY_ID)
  references DANGKOU.TB_CITY (ID);

prompt
prompt Creating table TB_COMMENTS
prompt ==========================
prompt
create table DANGKOU.TB_COMMENTS
(
  id              NUMBER(8) not null,
  memberid        NUMBER(8) not null,
  publish_time    DATE not null,
  cmmt_main_id    NUMBER(8),
  per_capita_fees VARCHAR2(50),
  cmmt_content    CLOB,
  out_type        NUMBER(8),
  out_sub_type    NUMBER(8),
  total_score     NUMBER(8),
  status          NUMBER(8),
  cmmt_from       NUMBER(8),
  create_time     DATE,
  create_user     NUMBER(8),
  update_time     DATE,
  update_user     NUMBER(8)
)
tablespace DANGKOU_TBS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table DANGKOU.TB_COMMENTS
  is '点评';
comment on column DANGKOU.TB_COMMENTS.memberid
  is '会员id';
comment on column DANGKOU.TB_COMMENTS.publish_time
  is '发表时间';
comment on column DANGKOU.TB_COMMENTS.cmmt_main_id
  is '点评的主体资源id';
comment on column DANGKOU.TB_COMMENTS.per_capita_fees
  is '人均费用';
comment on column DANGKOU.TB_COMMENTS.cmmt_content
  is '点评内容';
comment on column DANGKOU.TB_COMMENTS.out_type
  is '对应score_item type';
comment on column DANGKOU.TB_COMMENTS.out_sub_type
  is '对应score_type sub_type';
comment on column DANGKOU.TB_COMMENTS.total_score
  is '总评分';
comment on column DANGKOU.TB_COMMENTS.status
  is '1 未审核 2 已审核 3 审核不通过';
comment on column DANGKOU.TB_COMMENTS.cmmt_from
  is '点评来源 1微信 2 M网 3 安卓 4 ios 5 pc 6 系统导入';
alter table DANGKOU.TB_COMMENTS
  add constraint PK_TB_COMMENTS primary key (ID)
  using index 
  tablespace DANGKOU_TBS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table TB_COMMENTS_IMAGE
prompt ================================
prompt
create table DANGKOU.TB_COMMENTS_IMAGE
(
  id          NUMBER(8) not null,
  cmmt_id     NUMBER(8),
  image_url   VARCHAR2(500),
  create_time DATE,
  create_user NUMBER(8),
  update_time DATE,
  update_user NUMBER(8)
)
tablespace DANGKOU_TBS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column DANGKOU.TB_COMMENTS_IMAGE.cmmt_id
  is '点评id';
comment on column DANGKOU.TB_COMMENTS_IMAGE.image_url
  is '图片地址';
create index DANGKOU.INDEX_CMMTID on DANGKOU.TB_COMMENTS_IMAGE (CMMT_ID)
  tablespace DANGKOU_TBS
  pctfree 10
  initrans 2
  maxtrans 255;
alter table DANGKOU.TB_COMMENTS_IMAGE
  add constraint PK_TB_COMMENTS_IMAGE primary key (ID)
  using index 
  tablespace DANGKOU_TBS
  pctfree 10
  initrans 2
  maxtrans 255;
alter table DANGKOU.TB_COMMENTS_IMAGE
  add constraint FK_TB_COMMENTS__TB_COMMENTS_02 foreign key (CMMT_ID)
  references DANGKOU.TB_COMMENTS (ID);

prompt
prompt Creating table TB_COMMENTS_OPTION
prompt =================================
prompt
create table DANGKOU.TB_COMMENTS_OPTION
(
  id                NUMBER(8) not null,
  cmmt_id           NUMBER(8),
  score_items_title VARCHAR2(200),
  score_items_id    NUMBER(8),
  score             NUMBER(8),
  create_time       DATE,
  create_user       NUMBER(8),
  update_time       DATE,
  update_user       NUMBER(8)
)
tablespace DANGKOU_TBS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table DANGKOU.TB_COMMENTS_OPTION
  is '点评项详情';
comment on column DANGKOU.TB_COMMENTS_OPTION.score_items_title
  is '评分项';
comment on column DANGKOU.TB_COMMENTS_OPTION.score_items_id
  is '评分项id';
comment on column DANGKOU.TB_COMMENTS_OPTION.score
  is '评分';
alter table DANGKOU.TB_COMMENTS_OPTION
  add constraint PK_TB_COMMENTS_OPTION primary key (ID)
  using index 
  tablespace DANGKOU_TBS
  pctfree 10
  initrans 2
  maxtrans 255;
alter table DANGKOU.TB_COMMENTS_OPTION
  add constraint FK_TB_COMMENTS__TB_COMMENTS_01 foreign key (CMMT_ID)
  references DANGKOU.TB_COMMENTS (ID);

prompt
prompt Creating table TB_COMMENTS_SCORE_ITEMS
prompt ======================================
prompt
create table DANGKOU.TB_COMMENTS_SCORE_ITEMS
(
  id          NUMBER(8) not null,
  type        NUMBER(8),
  sub_type    NUMBER(8),
  title       VARCHAR2(200),
  valid       NUMBER(8),
  remark      VARCHAR2(2000),
  create_user NUMBER(8),
  create_time DATE,
  update_user NUMBER(8),
  update_time DATE
)
tablespace DANGKOU_TBS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table DANGKOU.TB_COMMENTS_SCORE_ITEMS
  is '点评评分项';
comment on column DANGKOU.TB_COMMENTS_SCORE_ITEMS.type
  is '分类 1 景区 2 商户';
comment on column DANGKOU.TB_COMMENTS_SCORE_ITEMS.sub_type
  is '子分类 参考字典分类 scenic_type';
comment on column DANGKOU.TB_COMMENTS_SCORE_ITEMS.valid
  is '1 有效 0 无效';
alter table DANGKOU.TB_COMMENTS_SCORE_ITEMS
  add constraint PK_CMMT_S_I primary key (ID)
  using index 
  tablespace DANGKOU_TBS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table TB_COMMENT_OPTION
prompt ================================
prompt
create table DANGKOU.TB_COMMENT_OPTION
(
  id          NUMBER(8) not null,
  title       VARCHAR2(50) not null,
  score       NUMBER(8) not null,
  reason_type NUMBER(8) not null,
  topic_id    NUMBER(8) not null,
  create_time DATE,
  create_user NUMBER(8),
  update_time DATE,
  update_user NUMBER(8)
)
tablespace DANGKOU_TBS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table DANGKOU.TB_COMMENT_OPTION
  is '选项表';
comment on column DANGKOU.TB_COMMENT_OPTION.reason_type
  is '原因: 0-不需要； 1-单选； 2-多选； 3-填空。';
alter table DANGKOU.TB_COMMENT_OPTION
  add constraint PK_TB_CMMT primary key (ID)
  using index 
  tablespace DANGKOU_TBS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table TB_COMMENT_REASON
prompt ================================
prompt
create table DANGKOU.TB_COMMENT_REASON
(
  id          NUMBER(8) not null,
  content     VARCHAR2(500) not null,
  option_id   NUMBER(8) not null,
  create_user NUMBER(8) not null,
  create_time DATE not null,
  update_user NUMBER(8),
  update_time DATE
)
tablespace DANGKOU_TBS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table DANGKOU.TB_COMMENT_REASON
  is '原因表';
comment on column DANGKOU.TB_COMMENT_REASON.content
  is '原因内容';
alter table DANGKOU.TB_COMMENT_REASON
  add constraint PK_TB_COMMENT_REASON primary key (ID)
  using index 
  tablespace DANGKOU_TBS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table TB_COMMENT_TOPIC
prompt ===============================
prompt
create table DANGKOU.TB_COMMENT_TOPIC
(
  id          NUMBER(8) not null,
  titile      VARCHAR2(50) not null,
  topic_type  NUMBER(8),
  valid       NUMBER(8),
  sort_no     NUMBER(8),
  is_required NUMBER(8),
  create_user NUMBER(8),
  create_time DATE,
  update_user NUMBER(8),
  update_time DATE
)
tablespace DANGKOU_TBS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table DANGKOU.TB_COMMENT_TOPIC
  is '评分题目';
comment on column DANGKOU.TB_COMMENT_TOPIC.titile
  is '评分项';
comment on column DANGKOU.TB_COMMENT_TOPIC.topic_type
  is '类型: 0-单选； 1-多选； 2-填空。';
comment on column DANGKOU.TB_COMMENT_TOPIC.valid
  is '1 有效 0 无效';
comment on column DANGKOU.TB_COMMENT_TOPIC.sort_no
  is '排序';
comment on column DANGKOU.TB_COMMENT_TOPIC.is_required
  is '是否必填: 0-必填； 1-非必填。';
alter table DANGKOU.TB_COMMENT_TOPIC
  add constraint PK_TB_COMMENT_SCORE_ITMES primary key (ID)
  using index 
  tablespace DANGKOU_TBS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table TB_DICTIONARY
prompt ============================
prompt
create table DANGKOU.TB_DICTIONARY
(
  id          NUMBER(8) not null,
  parent_id   NUMBER(8),
  code        VARCHAR2(50),
  name        VARCHAR2(50),
  value       VARCHAR2(50),
  sort        NUMBER(8),
  valid       NUMBER(8),
  create_time DATE,
  create_user NUMBER(8),
  update_time DATE,
  update_user NUMBER(8)
)
tablespace DANGKOU_TBS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table DANGKOU.TB_DICTIONARY
  is '数据字典';
comment on column DANGKOU.TB_DICTIONARY.code
  is '字典编码';
comment on column DANGKOU.TB_DICTIONARY.name
  is '字典名称';
comment on column DANGKOU.TB_DICTIONARY.value
  is '字典值';
comment on column DANGKOU.TB_DICTIONARY.sort
  is '排序';
comment on column DANGKOU.TB_DICTIONARY.valid
  is '状态 1 有效 0 无效';
alter table DANGKOU.TB_DICTIONARY
  add constraint PK_TB_DICTIONARY primary key (ID)
  using index 
  tablespace DANGKOU_TBS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TB_HISTORY_SEARCH
prompt ================================
prompt
create table DANGKOU.TB_HISTORY_SEARCH
(
  id          NUMBER(8) not null,
  keyword     VARCHAR2(200),
  session_id  VARCHAR2(100),
  member_id   NUMBER(8),
  create_time DATE
)
tablespace DANGKOU_TBS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table DANGKOU.TB_HISTORY_SEARCH
  is '历史搜索';
comment on column DANGKOU.TB_HISTORY_SEARCH.id
  is '主键';
comment on column DANGKOU.TB_HISTORY_SEARCH.keyword
  is '历史搜索';
comment on column DANGKOU.TB_HISTORY_SEARCH.session_id
  is '会话ID';
comment on column DANGKOU.TB_HISTORY_SEARCH.member_id
  is '会员ID';
comment on column DANGKOU.TB_HISTORY_SEARCH.create_time
  is '创建时间';
alter table DANGKOU.TB_HISTORY_SEARCH
  add constraint PK_TB_HISTORY_SEARCH primary key (ID)
  using index 
  tablespace DANGKOU_TBS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TB_KEYWORD
prompt =========================
prompt
create table DANGKOU.TB_KEYWORD
(
  id               NUMBER(8) not null,
  name             VARCHAR2(100),
  type             NUMBER(8),
  valid            NUMBER(8),
  out_related_id   NUMBER(8),
  out_related_type NUMBER(8),
  create_time      DATE,
  create_user      NUMBER(8),
  update_time      DATE,
  update_user      NUMBER(8),
  operator_type    NUMBER(8) default 1
)
tablespace DANGKOU_TBS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table DANGKOU.TB_KEYWORD
  is '关键字表';
comment on column DANGKOU.TB_KEYWORD.name
  is '关键字名称';
comment on column DANGKOU.TB_KEYWORD.type
  is '类型';
comment on column DANGKOU.TB_KEYWORD.valid
  is '有效性（0无效，1有效）';
comment on column DANGKOU.TB_KEYWORD.out_related_id
  is '外部关联id';
comment on column DANGKOU.TB_KEYWORD.operator_type
  is '1:平台管理员， 2：商户 ，3：会员';
alter table DANGKOU.TB_KEYWORD
  add constraint PK_TB_KEYWORD primary key (ID)
  using index 
  tablespace DANGKOU_TBS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TB_KEYWORD_REF
prompt =============================
prompt
create table DANGKOU.TB_KEYWORD_REF
(
  id               NUMBER(8) not null,
  out_related_id   NUMBER(8),
  out_related_type NUMBER(8),
  keyword_id       NUMBER(8),
  ord              NUMBER(8),
  update_time      DATE,
  update_user      NUMBER(8),
  create_time      DATE,
  create_user      NUMBER(8)
)
tablespace DANGKOU_TBS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on column DANGKOU.TB_KEYWORD_REF.out_related_id
  is '外部关联id';
comment on column DANGKOU.TB_KEYWORD_REF.out_related_type
  is '外部关联类型（1、游记攻略，2、系统配置，3、产品）';
comment on column DANGKOU.TB_KEYWORD_REF.keyword_id
  is '关键字id';
alter table DANGKOU.TB_KEYWORD_REF
  add constraint PK_TB_TRAVEL_NOTE_KEYWORD primary key (ID)
  using index 
  tablespace DANGKOU_TBS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TB_MATERIAL
prompt ==========================
prompt
create table DANGKOU.TB_MATERIAL
(
  id              NUMBER(8) not null,
  name            VARCHAR2(200),
  url             VARCHAR2(300),
  type            NUMBER(8),
  descriptions    VARCHAR2(2000),
  usertype        NUMBER(8),
  authorized_id   NUMBER(8),
  examine_status  NUMBER(8),
  examine_remarks VARCHAR2(2000),
  examine_time    DATE,
  examine_user    NUMBER(8),
  valid           NUMBER(8),
  create_time     DATE,
  create_user     NUMBER(8),
  update_time     DATE,
  update_user     NUMBER(8)
)
tablespace DANGKOU_TBS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table DANGKOU.TB_MATERIAL
  is '素材库';
comment on column DANGKOU.TB_MATERIAL.name
  is '素材名称';
comment on column DANGKOU.TB_MATERIAL.url
  is '素材地址';
comment on column DANGKOU.TB_MATERIAL.type
  is '1 图片 2 音频 3 视频';
comment on column DANGKOU.TB_MATERIAL.descriptions
  is '素材描述';
comment on column DANGKOU.TB_MATERIAL.usertype
  is '素材用途类型 数据字典 material_usertype';
comment on column DANGKOU.TB_MATERIAL.authorized_id
  is '授权id';
comment on column DANGKOU.TB_MATERIAL.examine_status
  is '1 未审核 2 未通过 3 通过';
comment on column DANGKOU.TB_MATERIAL.examine_remarks
  is '审核备注';
comment on column DANGKOU.TB_MATERIAL.examine_time
  is '审核时间';
comment on column DANGKOU.TB_MATERIAL.examine_user
  is '审核人';
comment on column DANGKOU.TB_MATERIAL.valid
  is '1 有效 0 无效';
alter table DANGKOU.TB_MATERIAL
  add constraint PK_TB_MATERIAL primary key (ID)
  using index 
  tablespace DANGKOU_TBS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TB_MATERIAL_AUTHORIZED
prompt =====================================
prompt
create table DANGKOU.TB_MATERIAL_AUTHORIZED
(
  id              NUMBER(8) not null,
  code            VARCHAR2(50),
  auth_org        VARCHAR2(200),
  auth_person     VARCHAR2(50),
  auth_start_date DATE,
  auth_end_date   DATE,
  sign_date       DATE,
  valid           NUMBER(8),
  guid            VARCHAR2(32),
  create_time     DATE,
  create_user     NUMBER(8),
  update_time     DATE,
  update_user     NUMBER(8)
)
tablespace DANGKOU_TBS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table DANGKOU.TB_MATERIAL_AUTHORIZED
  is '素材授权';
comment on column DANGKOU.TB_MATERIAL_AUTHORIZED.code
  is '授权代码';
comment on column DANGKOU.TB_MATERIAL_AUTHORIZED.auth_org
  is '授权机构';
comment on column DANGKOU.TB_MATERIAL_AUTHORIZED.auth_person
  is '授权人';
comment on column DANGKOU.TB_MATERIAL_AUTHORIZED.auth_start_date
  is '授权日期-开始';
comment on column DANGKOU.TB_MATERIAL_AUTHORIZED.auth_end_date
  is '授权日志-结束';
comment on column DANGKOU.TB_MATERIAL_AUTHORIZED.sign_date
  is '签约时间';
comment on column DANGKOU.TB_MATERIAL_AUTHORIZED.valid
  is '1 有效 0 无效';
alter table DANGKOU.TB_MATERIAL_AUTHORIZED
  add constraint PK_TB_MATERIAL_AUTHORIZED primary key (ID)
  using index 
  tablespace DANGKOU_TBS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table TB_MEMBER_ADDRESS
prompt ================================
prompt
create table DANGKOU.TB_MEMBER_ADDRESS
(
  id             NUMBER(8) not null,
  member_id      NUMBER(8),
  receive_name   VARCHAR2(50),
  receive_phone  VARCHAR2(50),
  country_id     NUMBER(8),
  provice_id     NUMBER(8),
  city_id        NUMBER(8),
  area_id        VARCHAR2(50),
  address_detail VARCHAR2(500),
  post_code      VARCHAR2(20),
  valid          NUMBER(8),
  is_default     NUMBER(8),
  create_user    NUMBER(8),
  create_time    DATE,
  update_user    NUMBER(8),
  update_time    DATE
)
tablespace DANGKOU_TBS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table DANGKOU.TB_MEMBER_ADDRESS
  is '会员地址';
comment on column DANGKOU.TB_MEMBER_ADDRESS.id
  is '主键';
comment on column DANGKOU.TB_MEMBER_ADDRESS.member_id
  is '所属会员ID';
comment on column DANGKOU.TB_MEMBER_ADDRESS.receive_name
  is '收件人';
comment on column DANGKOU.TB_MEMBER_ADDRESS.receive_phone
  is '收件人电话';
comment on column DANGKOU.TB_MEMBER_ADDRESS.country_id
  is '国家';
comment on column DANGKOU.TB_MEMBER_ADDRESS.provice_id
  is '省份';
comment on column DANGKOU.TB_MEMBER_ADDRESS.city_id
  is '城市';
comment on column DANGKOU.TB_MEMBER_ADDRESS.address_detail
  is '地址';
comment on column DANGKOU.TB_MEMBER_ADDRESS.post_code
  is '邮编';
comment on column DANGKOU.TB_MEMBER_ADDRESS.valid
  is '是否有效';
comment on column DANGKOU.TB_MEMBER_ADDRESS.is_default
  is '是否设置为默认地址1：是0：否';
comment on column DANGKOU.TB_MEMBER_ADDRESS.create_user
  is '创建人';
comment on column DANGKOU.TB_MEMBER_ADDRESS.create_time
  is '创建时间';
comment on column DANGKOU.TB_MEMBER_ADDRESS.update_user
  is '修改人';
comment on column DANGKOU.TB_MEMBER_ADDRESS.update_time
  is '修改时间';
alter table DANGKOU.TB_MEMBER_ADDRESS
  add constraint PK_TB_MEMBER_ADDRESS primary key (ID)
  using index 
  tablespace DANGKOU_TBS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table TB_MEMBER_BASIC
prompt ==============================
prompt
create table DANGKOU.TB_MEMBER_BASIC
(
  id                    NUMBER(8) not null,
  member_account        VARCHAR2(200),
  password              VARCHAR2(500),
  image_url             VARCHAR2(500),
  career_type           NUMBER(8),
  educate_type          NUMBER(8),
  activated_flg         NUMBER(8),
  member_from           VARCHAR2(50),
  valid                 NUMBER(8),
  login_time            DATE,
  login_from            NUMBER(8),
  last_login_time       DATE,
  login_ip              VARCHAR2(200),
  guid                  VARCHAR2(32),
  member_level          VARCHAR2(20),
  activity_degree       VARCHAR2(20),
  growth_value          NUMBER(12,2),
  growth_date           DATE,
  receive_comment       NUMBER(8),
  receive_comment_start DATE,
  receive_prasie        NUMBER(8),
  receive_prasie_start  DATE,
  create_user           NUMBER(8),
  create_time           DATE,
  update_user           NUMBER(8),
  update_time           DATE
)
tablespace DANGKOU_TBS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table DANGKOU.TB_MEMBER_BASIC
  is '会员基础信息表';
comment on column DANGKOU.TB_MEMBER_BASIC.member_account
  is '会员账号';
comment on column DANGKOU.TB_MEMBER_BASIC.password
  is '密码';
comment on column DANGKOU.TB_MEMBER_BASIC.image_url
  is '头像URL';
comment on column DANGKOU.TB_MEMBER_BASIC.career_type
  is '数据字典字典编码 career_type';
comment on column DANGKOU.TB_MEMBER_BASIC.educate_type
  is '文化程度类型 0 小学 1 初中 2 高中 3 大专 4 大学本科 5 硕士 6 博士 7 博士后 8 其他';
comment on column DANGKOU.TB_MEMBER_BASIC.activated_flg
  is '是否激活 0 未激活 1 已激活';
comment on column DANGKOU.TB_MEMBER_BASIC.member_from
  is '登录来源 0 pc官网 1 M网 2 IOS 3 安卓 4 微信';
comment on column DANGKOU.TB_MEMBER_BASIC.valid
  is '1有效 0 无效';
comment on column DANGKOU.TB_MEMBER_BASIC.login_time
  is '登录时间';
comment on column DANGKOU.TB_MEMBER_BASIC.login_from
  is '登录来源 0 pc官网 1 M网 2 IOS 3 安卓 4 微信';
comment on column DANGKOU.TB_MEMBER_BASIC.last_login_time
  is '上次登录时间';
comment on column DANGKOU.TB_MEMBER_BASIC.activity_degree
  is '活跃度';
comment on column DANGKOU.TB_MEMBER_BASIC.growth_value
  is '成长值';
comment on column DANGKOU.TB_MEMBER_BASIC.growth_date
  is '升级日期';
create index DANGKOU.IDX_TB_M_ACCOUNT on DANGKOU.TB_MEMBER_BASIC (MEMBER_ACCOUNT)
  tablespace DANGKOU_TBS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table DANGKOU.TB_MEMBER_BASIC
  add constraint PK_TB_MEMBER_BASIC primary key (ID)
  using index 
  tablespace DANGKOU_TBS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TB_MEMBER_COLLECTION
prompt ===================================
prompt
create table DANGKOU.TB_MEMBER_COLLECTION
(
  id                    NUMBER(8) not null,
  collection_type       NUMBER(8),
  member_id             NUMBER(8),
  collection_content_id NUMBER(8),
  create_user           NUMBER(8),
  create_time           DATE,
  update_user           NUMBER(8),
  update_time           DATE
)
tablespace DANGKOU_TBS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table DANGKOU.TB_MEMBER_COLLECTION
  is '收藏表';
comment on column DANGKOU.TB_MEMBER_COLLECTION.id
  is '主键';
comment on column DANGKOU.TB_MEMBER_COLLECTION.collection_type
  is '收藏类型 1产品 2游记攻略';
comment on column DANGKOU.TB_MEMBER_COLLECTION.member_id
  is '会员ID';
comment on column DANGKOU.TB_MEMBER_COLLECTION.collection_content_id
  is '对应收藏内容的ID 主键';
alter table DANGKOU.TB_MEMBER_COLLECTION
  add constraint PK_TB_MEMBER_COLLECTION primary key (ID)
  using index 
  tablespace DANGKOU_TBS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TB_MEMBER_DETAIL_INFO
prompt ====================================
prompt
create table DANGKOU.TB_MEMBER_DETAIL_INFO
(
  id                NUMBER(8) not null,
  fk_id             NUMBER(8),
  type              NUMBER(8),
  name_ch           VARCHAR2(100),
  name_ch_pin       VARCHAR2(100),
  name_en_f         VARCHAR2(100),
  name_en_s         VARCHAR2(100),
  sex               NUMBER(8),
  nationality       NUMBER(8),
  birthday          DATE,
  phone_ch          VARCHAR2(50),
  phone_overseas    VARCHAR2(50),
  fix_tel_area      VARCHAR2(20),
  fix_tel           VARCHAR2(20),
  fix_tel_extension VARCHAR2(20),
  mail              VARCHAR2(50),
  country_id        NUMBER(8),
  province_id       NUMBER(8),
  is_self           NUMBER(8),
  passenger_type    NUMBER(8),
  city_id           NUMBER(8),
  create_time       DATE,
  create_user       NUMBER(8),
  update_time       DATE,
  update_user       NUMBER(8)
)
tablespace DANGKOU_TBS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table DANGKOU.TB_MEMBER_DETAIL_INFO
  is '会员以及常旅客共有信息';
comment on column DANGKOU.TB_MEMBER_DETAIL_INFO.fk_id
  is '外部关联id';
comment on column DANGKOU.TB_MEMBER_DETAIL_INFO.type
  is '1 会员 2 常旅客';
comment on column DANGKOU.TB_MEMBER_DETAIL_INFO.name_ch
  is '常旅客中文姓名';
comment on column DANGKOU.TB_MEMBER_DETAIL_INFO.name_ch_pin
  is '常旅客中文拼音';
comment on column DANGKOU.TB_MEMBER_DETAIL_INFO.name_en_s
  is '英文名';
comment on column DANGKOU.TB_MEMBER_DETAIL_INFO.sex
  is '1 男 0 女';
comment on column DANGKOU.TB_MEMBER_DETAIL_INFO.nationality
  is '国籍';
comment on column DANGKOU.TB_MEMBER_DETAIL_INFO.birthday
  is '生日';
comment on column DANGKOU.TB_MEMBER_DETAIL_INFO.phone_ch
  is '大陆移动电话';
comment on column DANGKOU.TB_MEMBER_DETAIL_INFO.phone_overseas
  is '海外手机';
comment on column DANGKOU.TB_MEMBER_DETAIL_INFO.fix_tel_area
  is '固定电话区号';
comment on column DANGKOU.TB_MEMBER_DETAIL_INFO.fix_tel
  is '固定电话';
comment on column DANGKOU.TB_MEMBER_DETAIL_INFO.fix_tel_extension
  is '固定电话分机';
comment on column DANGKOU.TB_MEMBER_DETAIL_INFO.mail
  is '邮箱';
comment on column DANGKOU.TB_MEMBER_DETAIL_INFO.country_id
  is '国家id';
comment on column DANGKOU.TB_MEMBER_DETAIL_INFO.province_id
  is '省份id';
comment on column DANGKOU.TB_MEMBER_DETAIL_INFO.is_self
  is '是否本人（1、是；0、否）';
comment on column DANGKOU.TB_MEMBER_DETAIL_INFO.passenger_type
  is '常旅客类型（1:成人 、2:儿童、3:婴儿）';
comment on column DANGKOU.TB_MEMBER_DETAIL_INFO.city_id
  is '城市id';
alter table DANGKOU.TB_MEMBER_DETAIL_INFO
  add constraint PK_TB_M_D_I primary key (ID)
  using index 
  tablespace DANGKOU_TBS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TB_MEMBER_DOCUMENT
prompt =================================
prompt
create table DANGKOU.TB_MEMBER_DOCUMENT
(
  id                 NUMBER(8) not null,
  fk_id              NUMBER(8),
  type               NUMBER(8),
  document_type      NUMBER(8),
  document_no        VARCHAR2(100),
  documentexpiredate DATE,
  valid              NUMBER(8) default 1,
  guid               VARCHAR2(32),
  create_time        DATE,
  create_user        NUMBER(8),
  update_time        DATE,
  update_user        NUMBER(8)
)
tablespace DANGKOU_TBS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table DANGKOU.TB_MEMBER_DOCUMENT
  is '证件号';
comment on column DANGKOU.TB_MEMBER_DOCUMENT.fk_id
  is '外部关联id';
comment on column DANGKOU.TB_MEMBER_DOCUMENT.type
  is '外部关联类型（1会员，2常旅客）';
comment on column DANGKOU.TB_MEMBER_DOCUMENT.document_type
  is '1:身份证 2：护照 3：台胞证 4：军人证 5：户口本 6：警官证 9：士兵证  10：回乡证 13：港澳通行证 17：大陆通行证（国内航线） 19：大陆居民往来台湾通行证';
comment on column DANGKOU.TB_MEMBER_DOCUMENT.document_no
  is '证件号';
comment on column DANGKOU.TB_MEMBER_DOCUMENT.documentexpiredate
  is '失效时间';
comment on column DANGKOU.TB_MEMBER_DOCUMENT.valid
  is '1 有效 0 无效';
alter table DANGKOU.TB_MEMBER_DOCUMENT
  add constraint PK_TB_M_P_ID primary key (ID)
  using index 
  tablespace DANGKOU_TBS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TB_MEMBER_FEEDBACK
prompt =================================
prompt
create table DANGKOU.TB_MEMBER_FEEDBACK
(
  id               NUMBER(8) not null,
  member_id        NUMBER(8),
  feedback_title   VARCHAR2(500),
  feedback_content CLOB,
  feedback_time    DATE,
  link_man         VARCHAR2(50),
  link_phone       VARCHAR2(50)
)
tablespace DANGKOU_TBS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table DANGKOU.TB_MEMBER_FEEDBACK
  is '会员意见反馈';
comment on column DANGKOU.TB_MEMBER_FEEDBACK.member_id
  is '会员ID';
comment on column DANGKOU.TB_MEMBER_FEEDBACK.feedback_title
  is '反馈标题';
comment on column DANGKOU.TB_MEMBER_FEEDBACK.feedback_content
  is '反馈信息';
comment on column DANGKOU.TB_MEMBER_FEEDBACK.feedback_time
  is '反馈时间';
comment on column DANGKOU.TB_MEMBER_FEEDBACK.link_man
  is '联系人';
comment on column DANGKOU.TB_MEMBER_FEEDBACK.link_phone
  is '联系电话';
alter table DANGKOU.TB_MEMBER_FEEDBACK
  add constraint PK_MEMBER_FEEDBACK primary key (ID)
  using index 
  tablespace DANGKOU_TBS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table TB_MEMBER_FEEDBACK_IMG
prompt =====================================
prompt
create table DANGKOU.TB_MEMBER_FEEDBACK_IMG
(
  id          NUMBER(8) not null,
  feedback_id NUMBER(8),
  img_name    VARCHAR2(500),
  img_url     VARCHAR2(500)
)
tablespace DANGKOU_TBS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table DANGKOU.TB_MEMBER_FEEDBACK_IMG
  is '意见反馈图片';
comment on column DANGKOU.TB_MEMBER_FEEDBACK_IMG.id
  is '主键';
comment on column DANGKOU.TB_MEMBER_FEEDBACK_IMG.feedback_id
  is '意见反馈ID';
comment on column DANGKOU.TB_MEMBER_FEEDBACK_IMG.img_name
  is '图片名称';
comment on column DANGKOU.TB_MEMBER_FEEDBACK_IMG.img_url
  is '图片地址';
alter table DANGKOU.TB_MEMBER_FEEDBACK_IMG
  add constraint PK_TB_MEMBER_FEEDBACK_IMG primary key (ID)
  using index 
  tablespace DANGKOU_TBS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table TB_MEMBER_MSG
prompt ============================
prompt
create table DANGKOU.TB_MEMBER_MSG
(
  id          NUMBER(8) not null,
  member_id   NUMBER(8),
  msg_type    NUMBER(8),
  msg_title   VARCHAR2(500),
  msg_content CLOB,
  msg_status  NUMBER(8),
  business_id NUMBER(8),
  create_time DATE,
  create_user NUMBER(8)
)
tablespace DANGKOU_TBS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table DANGKOU.TB_MEMBER_MSG
  is '会员消息表';
comment on column DANGKOU.TB_MEMBER_MSG.id
  is '主键';
comment on column DANGKOU.TB_MEMBER_MSG.member_id
  is '会员ID';
comment on column DANGKOU.TB_MEMBER_MSG.msg_type
  is '小心类别：1、首次注册；2、密码更改；3、订单状态更改；4、公共消息';
comment on column DANGKOU.TB_MEMBER_MSG.msg_title
  is '消息标题';
comment on column DANGKOU.TB_MEMBER_MSG.msg_content
  is '消息内容';
comment on column DANGKOU.TB_MEMBER_MSG.msg_status
  is '消息状态：1、已阅读；0、未阅读';
comment on column DANGKOU.TB_MEMBER_MSG.business_id
  is '业务数据ID';
comment on column DANGKOU.TB_MEMBER_MSG.create_time
  is '创建时间';
comment on column DANGKOU.TB_MEMBER_MSG.create_user
  is '创建人';
alter table DANGKOU.TB_MEMBER_MSG
  add constraint PK_MEMBER_MSG primary key (ID)
  using index 
  tablespace DANGKOU_TBS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TB_MEMBER_PASSENGER
prompt ==================================
prompt
create table DANGKOU.TB_MEMBER_PASSENGER
(
  id             NUMBER(8) not null,
  member_id      NUMBER(8) not null,
  relation_type  NUMBER(8),
  passenger_type VARCHAR2(20) not null,
  valid          NUMBER(8),
  guid           VARCHAR2(32),
  default_flag   NUMBER(8) default 1,
  create_time    DATE,
  create_user    NUMBER(8),
  update_time    DATE,
  update_user    NUMBER(8)
)
tablespace DANGKOU_TBS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table DANGKOU.TB_MEMBER_PASSENGER
  is '常旅客';
comment on column DANGKOU.TB_MEMBER_PASSENGER.relation_type
  is '关系 0 就是本人 1 父亲/母亲 2 儿子/女儿 3 爷爷/奶奶/外公/外婆 4 其他亲戚 5 兄弟/姐妹 6 朋友 7 同事 8 其他';
comment on column DANGKOU.TB_MEMBER_PASSENGER.passenger_type
  is '常旅客类型ADT:成人 、CHD:儿童、INF:婴儿、UNK:未知';
comment on column DANGKOU.TB_MEMBER_PASSENGER.valid
  is '1 有效 0 无效';
comment on column DANGKOU.TB_MEMBER_PASSENGER.default_flag
  is '0 默认 1 非默认  初始化 1';
create index DANGKOU.IDX_MEMBER_ID on DANGKOU.TB_MEMBER_PASSENGER (MEMBER_ID)
  tablespace DANGKOU_TBS
  pctfree 10
  initrans 2
  maxtrans 255;
alter table DANGKOU.TB_MEMBER_PASSENGER
  add constraint PK_TB_MEMBER_PASSENGER primary key (ID)
  using index 
  tablespace DANGKOU_TBS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table TB_MEMBER_SHARED_ACCOUNT
prompt =======================================
prompt
create table DANGKOU.TB_MEMBER_SHARED_ACCOUNT
(
  id           NUMBER(8) not null,
  account_type NUMBER(8),
  account_num  VARCHAR2(100),
  member_id    NUMBER(8),
  create_user  NUMBER(8),
  create_time  DATE,
  update_user  NUMBER(8),
  update_time  DATE
)
tablespace DANGKOU_TBS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table DANGKOU.TB_MEMBER_SHARED_ACCOUNT
  is '会员共享账号表';
comment on column DANGKOU.TB_MEMBER_SHARED_ACCOUNT.id
  is '主键';
comment on column DANGKOU.TB_MEMBER_SHARED_ACCOUNT.account_type
  is '账号类型';
comment on column DANGKOU.TB_MEMBER_SHARED_ACCOUNT.account_num
  is '账号号码';
comment on column DANGKOU.TB_MEMBER_SHARED_ACCOUNT.member_id
  is '会员id';
comment on column DANGKOU.TB_MEMBER_SHARED_ACCOUNT.create_user
  is '创建人';
comment on column DANGKOU.TB_MEMBER_SHARED_ACCOUNT.create_time
  is '创建时间';
comment on column DANGKOU.TB_MEMBER_SHARED_ACCOUNT.update_user
  is '更新人';
comment on column DANGKOU.TB_MEMBER_SHARED_ACCOUNT.update_time
  is '更新时间';
alter table DANGKOU.TB_MEMBER_SHARED_ACCOUNT
  add constraint PK_TABLE1 primary key (ID)
  using index 
  tablespace DANGKOU_TBS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TB_MSG_SMS
prompt =========================
prompt
create table DANGKOU.TB_MSG_SMS
(
  id              NUMBER(8) not null,
  receiver_no     VARCHAR2(11),
  msg_content     VARCHAR2(500),
  business_type   VARCHAR2(100),
  verifycode_type VARCHAR2(3),
  send_status     NUMBER(8),
  create_time     DATE,
  update_time     DATE,
  create_user     NUMBER(8),
  update_user     NUMBER(8)
)
tablespace DANGKOU_TBS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table DANGKOU.TB_MSG_SMS
  is '短信表';
comment on column DANGKOU.TB_MSG_SMS.id
  is '主键';
comment on column DANGKOU.TB_MSG_SMS.receiver_no
  is '接收手机号';
comment on column DANGKOU.TB_MSG_SMS.msg_content
  is '短信内容';
comment on column DANGKOU.TB_MSG_SMS.business_type
  is '返回内容';
comment on column DANGKOU.TB_MSG_SMS.verifycode_type
  is '验证码类型';
comment on column DANGKOU.TB_MSG_SMS.send_status
  is '发送状态 0未发送 1以发送 2已返回';
comment on column DANGKOU.TB_MSG_SMS.create_time
  is '创建时间';
comment on column DANGKOU.TB_MSG_SMS.update_time
  is '修改时间';
comment on column DANGKOU.TB_MSG_SMS.create_user
  is '创建人';
comment on column DANGKOU.TB_MSG_SMS.update_user
  is '修改人';
alter table DANGKOU.TB_MSG_SMS
  add constraint PK_TB_MSG_SMS primary key (ID)
  using index 
  tablespace DANGKOU_TBS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TB_MSG_SMS_RECORD
prompt ================================
prompt
create table DANGKOU.TB_MSG_SMS_RECORD
(
  id             NUMBER(8) not null,
  order_no       VARCHAR2(100),
  receiver_no    VARCHAR2(50),
  msg_content    VARCHAR2(2000),
  return_content VARCHAR2(500),
  return_status  VARCHAR2(50),
  send_status    NUMBER(8),
  create_user    NUMBER(8),
  create_time    DATE,
  update_user    NUMBER(8),
  update_time    DATE
)
tablespace DANGKOU_TBS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table DANGKOU.TB_MSG_SMS_RECORD
  is '短信记录表';
comment on column DANGKOU.TB_MSG_SMS_RECORD.id
  is '主键';
comment on column DANGKOU.TB_MSG_SMS_RECORD.order_no
  is '订单号';
comment on column DANGKOU.TB_MSG_SMS_RECORD.receiver_no
  is '手机号';
comment on column DANGKOU.TB_MSG_SMS_RECORD.msg_content
  is '短信内容';
comment on column DANGKOU.TB_MSG_SMS_RECORD.return_content
  is '返回内容';
comment on column DANGKOU.TB_MSG_SMS_RECORD.return_status
  is '返回状态';
comment on column DANGKOU.TB_MSG_SMS_RECORD.send_status
  is '发送状态  0未发送 1成功 2 失败';
comment on column DANGKOU.TB_MSG_SMS_RECORD.create_user
  is '创建人';
comment on column DANGKOU.TB_MSG_SMS_RECORD.create_time
  is '创建时间';
comment on column DANGKOU.TB_MSG_SMS_RECORD.update_user
  is '修改人';
comment on column DANGKOU.TB_MSG_SMS_RECORD.update_time
  is '修改时间';
alter table DANGKOU.TB_MSG_SMS_RECORD
  add constraint PK_TB_MSG_SMS_RECORD primary key (ID)
  using index 
  tablespace DANGKOU_TBS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TB_ORDER
prompt =======================
prompt
create table DANGKOU.TB_ORDER
(
  id                   NUMBER(8) not null,
  order_no             VARCHAR2(100),
  third_no             VARCHAR2(100),
  third_from           VARCHAR2(200),
  product_name         VARCHAR2(600),
  product_code         VARCHAR2(50),
  product_id           NUMBER(8),
  meals_name           VARCHAR2(600),
  meals_id             NUMBER(8),
  order_status         NUMBER(8),
  pay_status           NUMBER(8),
  link_man             VARCHAR2(200),
  phone                VARCHAR2(11),
  email                VARCHAR2(100),
  order_price          NUMBER(8,2),
  order_count          NUMBER(8),
  order_type           NUMBER(8),
  remark               CLOB,
  seller_remark        CLOB,
  product_price        NUMBER(8,2),
  adult_price          NUMBER(8,2),
  adult_count          NUMBER(8),
  child_price          NUMBER(8,2),
  child_count          NUMBER(8),
  src                  NUMBER(8),
  confirm_time         DATE,
  user_know            CLOB,
  create_user          NUMBER(8),
  create_time          DATE,
  update_user          NUMBER(8),
  update_time          DATE,
  seller_id            NUMBER(8),
  member_id            NUMBER(8),
  member_account       VARCHAR2(100),
  travel_time          DATE,
  need_invoice         NUMBER(8),
  pay_price            NUMBER(8,2),
  payed_price          NUMBER(8,2),
  singleroom_price     NUMBER(8,2),
  make_user            NUMBER(8),
  cancel_time          DATE,
  weixin               VARCHAR2(100),
  saled_check          NUMBER(8),
  writeoffcode         VARCHAR2(50),
  express_company_name VARCHAR2(50),
  express_number       VARCHAR2(50),
  express_confirm_time DATE,
  delivery_address     VARCHAR2(500),
  delayed_delivery     NUMBER(8) default 0,
  recipient_address    VARCHAR2(500),
  uniformpostage       NUMBER(8)
)
tablespace DANGKOU_TBS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table DANGKOU.TB_ORDER
  is '订单表';
comment on column DANGKOU.TB_ORDER.id
  is '主键';
comment on column DANGKOU.TB_ORDER.order_no
  is '订单号';
comment on column DANGKOU.TB_ORDER.third_no
  is '第三方订单号';
comment on column DANGKOU.TB_ORDER.third_from
  is '第三方订单对接方';
comment on column DANGKOU.TB_ORDER.product_name
  is '产品名称';
comment on column DANGKOU.TB_ORDER.product_code
  is '商品编码';
comment on column DANGKOU.TB_ORDER.product_id
  is '商品ID';
comment on column DANGKOU.TB_ORDER.meals_name
  is '套餐名称';
comment on column DANGKOU.TB_ORDER.meals_id
  is '套餐ID';
comment on column DANGKOU.TB_ORDER.order_status
  is '订单状态';
comment on column DANGKOU.TB_ORDER.pay_status
  is '支付状态';
comment on column DANGKOU.TB_ORDER.link_man
  is '联系人';
comment on column DANGKOU.TB_ORDER.phone
  is '联系电话';
comment on column DANGKOU.TB_ORDER.email
  is '电子邮箱';
comment on column DANGKOU.TB_ORDER.order_price
  is '订单金额';
comment on column DANGKOU.TB_ORDER.order_count
  is '订单数量';
comment on column DANGKOU.TB_ORDER.order_type
  is '订单类型 ';
comment on column DANGKOU.TB_ORDER.remark
  is '游客备注';
comment on column DANGKOU.TB_ORDER.seller_remark
  is '商户备注';
comment on column DANGKOU.TB_ORDER.product_price
  is '单价';
comment on column DANGKOU.TB_ORDER.adult_price
  is '成人价';
comment on column DANGKOU.TB_ORDER.adult_count
  is '成人数量';
comment on column DANGKOU.TB_ORDER.child_price
  is '儿童价';
comment on column DANGKOU.TB_ORDER.child_count
  is '儿童数量';
comment on column DANGKOU.TB_ORDER.src
  is '来源';
comment on column DANGKOU.TB_ORDER.confirm_time
  is '确认时间';
comment on column DANGKOU.TB_ORDER.user_know
  is '用户需知';
comment on column DANGKOU.TB_ORDER.create_user
  is '创建人';
comment on column DANGKOU.TB_ORDER.create_time
  is '创建时间';
comment on column DANGKOU.TB_ORDER.update_user
  is '修改人';
comment on column DANGKOU.TB_ORDER.update_time
  is '修改时间';
comment on column DANGKOU.TB_ORDER.seller_id
  is '商户ID';
comment on column DANGKOU.TB_ORDER.member_id
  is '会员ID';
comment on column DANGKOU.TB_ORDER.member_account
  is '会员账号';
comment on column DANGKOU.TB_ORDER.travel_time
  is '订单出行时间';
comment on column DANGKOU.TB_ORDER.need_invoice
  is '是否需要发票（1：是）';
comment on column DANGKOU.TB_ORDER.pay_price
  is '应付金额';
comment on column DANGKOU.TB_ORDER.payed_price
  is '已付金额';
comment on column DANGKOU.TB_ORDER.singleroom_price
  is '单房差（旅游线路类产品）';
comment on column DANGKOU.TB_ORDER.make_user
  is '制单人（后台默认用户）';
comment on column DANGKOU.TB_ORDER.cancel_time
  is '取消时间';
comment on column DANGKOU.TB_ORDER.weixin
  is '微信';
comment on column DANGKOU.TB_ORDER.saled_check
  is '是否核销';
comment on column DANGKOU.TB_ORDER.writeoffcode
  is '核销码';
comment on column DANGKOU.TB_ORDER.express_company_name
  is '快递公司';
comment on column DANGKOU.TB_ORDER.express_number
  is '快递单号';
comment on column DANGKOU.TB_ORDER.express_confirm_time
  is '快递确认时间';
comment on column DANGKOU.TB_ORDER.delivery_address
  is '收件人地址';
comment on column DANGKOU.TB_ORDER.delayed_delivery
  is '退单次数';
comment on column DANGKOU.TB_ORDER.recipient_address
  is '收件人地址';
comment on column DANGKOU.TB_ORDER.uniformpostage
  is '购物类订单快递费';
alter table DANGKOU.TB_ORDER
  add constraint PK_TB_ORDER primary key (ID)
  using index 
  tablespace DANGKOU_TBS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TB_ORDER_CHARGEBACK_RECORD
prompt =========================================
prompt
create table DANGKOU.TB_ORDER_CHARGEBACK_RECORD
(
  id            NUMBER(8) not null,
  order_no      VARCHAR2(50),
  member_id     NUMBER(8),
  seller_id     NUMBER(8),
  refund_reason VARCHAR2(2000),
  create_time   DATE,
  create_user   NUMBER(8),
  type          NUMBER(8)
)
tablespace DANGKOU_TBS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table DANGKOU.TB_ORDER_CHARGEBACK_RECORD
  is '拒绝退单日志表';
comment on column DANGKOU.TB_ORDER_CHARGEBACK_RECORD.id
  is '主键ID';
comment on column DANGKOU.TB_ORDER_CHARGEBACK_RECORD.order_no
  is '订单ORDER_NO';
comment on column DANGKOU.TB_ORDER_CHARGEBACK_RECORD.member_id
  is '会员ID';
comment on column DANGKOU.TB_ORDER_CHARGEBACK_RECORD.seller_id
  is '商户ID';
comment on column DANGKOU.TB_ORDER_CHARGEBACK_RECORD.refund_reason
  is '拒绝理由';
comment on column DANGKOU.TB_ORDER_CHARGEBACK_RECORD.create_time
  is '创建时间';
comment on column DANGKOU.TB_ORDER_CHARGEBACK_RECORD.create_user
  is '创建人';
comment on column DANGKOU.TB_ORDER_CHARGEBACK_RECORD.type
  is '是否拒绝    1表示同意  2表示拒绝';
alter table DANGKOU.TB_ORDER_CHARGEBACK_RECORD
  add constraint PK_TB_ORDER_CHARGEBACK_RECORD primary key (ID)
  using index 
  tablespace DANGKOU_TBS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TB_ORDER_INVOICE
prompt ===============================
prompt
create table DANGKOU.TB_ORDER_INVOICE
(
  id              NUMBER(8) not null,
  type            NUMBER(8),
  order_no        VARCHAR2(50),
  phone           VARCHAR2(50),
  title           VARCHAR2(100),
  email           VARCHAR2(100),
  create_user     NUMBER(8),
  create_time     DATE,
  update_user     NUMBER(8),
  update_time     DATE,
  gain_type       NUMBER(8),
  take_address    VARCHAR2(500),
  pre_pay_price   NUMBER(8),
  deliver_address VARCHAR2(600),
  invoice_type    NUMBER(8)
)
tablespace DANGKOU_TBS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table DANGKOU.TB_ORDER_INVOICE
  is '订单发票表';
comment on column DANGKOU.TB_ORDER_INVOICE.id
  is '主键';
comment on column DANGKOU.TB_ORDER_INVOICE.type
  is '发票类别 1单位 2个人';
comment on column DANGKOU.TB_ORDER_INVOICE.order_no
  is '订单号';
comment on column DANGKOU.TB_ORDER_INVOICE.phone
  is '手机号';
comment on column DANGKOU.TB_ORDER_INVOICE.title
  is '发票抬头';
comment on column DANGKOU.TB_ORDER_INVOICE.email
  is '邮箱';
comment on column DANGKOU.TB_ORDER_INVOICE.create_user
  is '创建人';
comment on column DANGKOU.TB_ORDER_INVOICE.create_time
  is '创建时间';
comment on column DANGKOU.TB_ORDER_INVOICE.update_user
  is '修改人';
comment on column DANGKOU.TB_ORDER_INVOICE.update_time
  is '修改时间';
comment on column DANGKOU.TB_ORDER_INVOICE.gain_type
  is '获取方式 0:当面领取 1:邮寄到付2:快递预付';
comment on column DANGKOU.TB_ORDER_INVOICE.take_address
  is '发票领取地址';
comment on column DANGKOU.TB_ORDER_INVOICE.pre_pay_price
  is '快递预付金额';
comment on column DANGKOU.TB_ORDER_INVOICE.deliver_address
  is '发票邮寄地址';
comment on column DANGKOU.TB_ORDER_INVOICE.invoice_type
  is '发票类型2：电子发票 3：纸质发票';
alter table DANGKOU.TB_ORDER_INVOICE
  add constraint PK_TB_ORDER_INVOICE primary key (ID)
  using index 
  tablespace DANGKOU_TBS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TB_ORDER_LINKMAN_DOC
prompt ===================================
prompt
create table DANGKOU.TB_ORDER_LINKMAN_DOC
(
  id            NUMBER(8) not null,
  ref_id        NUMBER(8),
  document_id   NUMBER(8),
  document_name VARCHAR2(100),
  document_no   VARCHAR2(100),
  is_default    NUMBER(8)
)
tablespace DANGKOU_TBS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table DANGKOU.TB_ORDER_LINKMAN_DOC
  is '会员订单出行人证件表';
comment on column DANGKOU.TB_ORDER_LINKMAN_DOC.id
  is '主键';
comment on column DANGKOU.TB_ORDER_LINKMAN_DOC.ref_id
  is '订单出行人关联ID';
comment on column DANGKOU.TB_ORDER_LINKMAN_DOC.document_id
  is '证件ID（可能被修改，勿做业务处理）';
comment on column DANGKOU.TB_ORDER_LINKMAN_DOC.document_name
  is '证件名称';
comment on column DANGKOU.TB_ORDER_LINKMAN_DOC.document_no
  is '证件编号';
comment on column DANGKOU.TB_ORDER_LINKMAN_DOC.is_default
  is '是否默认';
alter table DANGKOU.TB_ORDER_LINKMAN_DOC
  add constraint PK_TB_ORDER_LINKMAN_DOC primary key (ID)
  using index 
  tablespace DANGKOU_TBS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TB_ORDER_LINKMAN_REF
prompt ===================================
prompt
create table DANGKOU.TB_ORDER_LINKMAN_REF
(
  id                    NUMBER(8) not null,
  order_id              NUMBER(8),
  order_no              VARCHAR2(100),
  member_id             NUMBER(8),
  member_detail_info_id NUMBER(8),
  name_ch               VARCHAR2(100),
  name_ch_pin           VARCHAR2(100),
  name_en_f             VARCHAR2(100),
  name_en_s             VARCHAR2(100),
  sex                   NUMBER(8),
  nationality           NUMBER(8),
  birthday              DATE,
  phone_ch              VARCHAR2(50),
  phone_overseas        VARCHAR2(50),
  fix_tel_area          VARCHAR2(50),
  fix_tel               VARCHAR2(50),
  fix_tel_extension     VARCHAR2(50),
  mail                  VARCHAR2(50),
  country_id            NUMBER(8),
  province_id           NUMBER(8),
  city_id               NUMBER(8),
  is_self               NUMBER(8),
  create_user           NUMBER(8),
  create_time           DATE,
  update_user           NUMBER(8),
  update_time           DATE
)
tablespace DANGKOU_TBS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table DANGKOU.TB_ORDER_LINKMAN_REF
  is '订单出行人关系表';
comment on column DANGKOU.TB_ORDER_LINKMAN_REF.id
  is '主键';
comment on column DANGKOU.TB_ORDER_LINKMAN_REF.order_id
  is '订单ID';
comment on column DANGKOU.TB_ORDER_LINKMAN_REF.order_no
  is '订单号';
comment on column DANGKOU.TB_ORDER_LINKMAN_REF.member_id
  is '会员ID';
comment on column DANGKOU.TB_ORDER_LINKMAN_REF.member_detail_info_id
  is '出行人ID（可能被会员删除，勿做业务关联）';
comment on column DANGKOU.TB_ORDER_LINKMAN_REF.name_ch
  is '中文姓名';
comment on column DANGKOU.TB_ORDER_LINKMAN_REF.name_ch_pin
  is '中文拼音';
comment on column DANGKOU.TB_ORDER_LINKMAN_REF.name_en_f
  is '英文姓';
comment on column DANGKOU.TB_ORDER_LINKMAN_REF.name_en_s
  is '英文名';
comment on column DANGKOU.TB_ORDER_LINKMAN_REF.sex
  is '性别（1 男 0 女）';
comment on column DANGKOU.TB_ORDER_LINKMAN_REF.nationality
  is '国籍';
comment on column DANGKOU.TB_ORDER_LINKMAN_REF.birthday
  is '生日';
comment on column DANGKOU.TB_ORDER_LINKMAN_REF.phone_ch
  is '大陆移动电话';
comment on column DANGKOU.TB_ORDER_LINKMAN_REF.phone_overseas
  is '海外手机';
comment on column DANGKOU.TB_ORDER_LINKMAN_REF.fix_tel_area
  is '固定电话区号';
comment on column DANGKOU.TB_ORDER_LINKMAN_REF.fix_tel
  is '固定电话';
comment on column DANGKOU.TB_ORDER_LINKMAN_REF.fix_tel_extension
  is '固定电话分机';
comment on column DANGKOU.TB_ORDER_LINKMAN_REF.mail
  is '邮箱';
comment on column DANGKOU.TB_ORDER_LINKMAN_REF.country_id
  is '国家';
comment on column DANGKOU.TB_ORDER_LINKMAN_REF.province_id
  is '省份';
comment on column DANGKOU.TB_ORDER_LINKMAN_REF.city_id
  is '城市';
comment on column DANGKOU.TB_ORDER_LINKMAN_REF.is_self
  is '是否本人（1、是；0、否）';
comment on column DANGKOU.TB_ORDER_LINKMAN_REF.create_user
  is '创建人';
comment on column DANGKOU.TB_ORDER_LINKMAN_REF.create_time
  is '创建时间';
comment on column DANGKOU.TB_ORDER_LINKMAN_REF.update_user
  is '修改人';
comment on column DANGKOU.TB_ORDER_LINKMAN_REF.update_time
  is '修改时间';
alter table DANGKOU.TB_ORDER_LINKMAN_REF
  add constraint PK_TB_ORDER_LINKMAN_REF primary key (ID)
  using index 
  tablespace DANGKOU_TBS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TB_ORDER_MONEY_CHANGE_REC
prompt ========================================
prompt
create table DANGKOU.TB_ORDER_MONEY_CHANGE_REC
(
  id          NUMBER(8) not null,
  order_no    VARCHAR2(50),
  money       NUMBER(8,2),
  remark      VARCHAR2(200),
  create_user NUMBER(8),
  create_time DATE,
  update_user NUMBER(8),
  update_time DATE
)
tablespace DANGKOU_TBS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table DANGKOU.TB_ORDER_MONEY_CHANGE_REC
  is '订单金额调整记录表';
comment on column DANGKOU.TB_ORDER_MONEY_CHANGE_REC.id
  is '主键';
comment on column DANGKOU.TB_ORDER_MONEY_CHANGE_REC.order_no
  is '订单号';
comment on column DANGKOU.TB_ORDER_MONEY_CHANGE_REC.money
  is '金额';
comment on column DANGKOU.TB_ORDER_MONEY_CHANGE_REC.remark
  is '备注';
comment on column DANGKOU.TB_ORDER_MONEY_CHANGE_REC.create_user
  is '创建人';
comment on column DANGKOU.TB_ORDER_MONEY_CHANGE_REC.create_time
  is '创建时间';
comment on column DANGKOU.TB_ORDER_MONEY_CHANGE_REC.update_user
  is '修改人';
comment on column DANGKOU.TB_ORDER_MONEY_CHANGE_REC.update_time
  is '修改时间';
alter table DANGKOU.TB_ORDER_MONEY_CHANGE_REC
  add constraint PK_TB_ORDER_MONEY_CHANGE_REC primary key (ID)
  using index 
  tablespace DANGKOU_TBS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TB_ORDER_OPERATION_LOG
prompt =====================================
prompt
create table DANGKOU.TB_ORDER_OPERATION_LOG
(
  id                   NUMBER,
  order_id             NUMBER,
  order_no             VARCHAR2(50),
  member_id            NUMBER,
  seller_id            NUMBER,
  express_company_name VARCHAR2(50),
  express_number       VARCHAR2(50),
  msg_title            VARCHAR2(2000),
  create_user          NUMBER,
  create_date          DATE,
  status               NUMBER
)
tablespace DANGKOU_TBS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 8K
    minextents 1
    maxextents unlimited
  );
comment on table DANGKOU.TB_ORDER_OPERATION_LOG
  is '订单操作日志记录表';
comment on column DANGKOU.TB_ORDER_OPERATION_LOG.id
  is 'ID';
comment on column DANGKOU.TB_ORDER_OPERATION_LOG.order_id
  is '订单ID';
comment on column DANGKOU.TB_ORDER_OPERATION_LOG.order_no
  is '订单号';
comment on column DANGKOU.TB_ORDER_OPERATION_LOG.member_id
  is '会员ID';
comment on column DANGKOU.TB_ORDER_OPERATION_LOG.seller_id
  is '商户ID';
comment on column DANGKOU.TB_ORDER_OPERATION_LOG.express_company_name
  is '快递公司名字';
comment on column DANGKOU.TB_ORDER_OPERATION_LOG.express_number
  is '快递运单号';
comment on column DANGKOU.TB_ORDER_OPERATION_LOG.msg_title
  is '信息内容';
comment on column DANGKOU.TB_ORDER_OPERATION_LOG.create_user
  is '创建者';
comment on column DANGKOU.TB_ORDER_OPERATION_LOG.create_date
  is '创建时间';
comment on column DANGKOU.TB_ORDER_OPERATION_LOG.status
  is '1：	确认收货  2：	申请退货 3：已发货 4：定时任务自动变为已完成 5：确认退货';

prompt
prompt Creating table TB_ORDER_PAY_LOG
prompt ===============================
prompt
create table DANGKOU.TB_ORDER_PAY_LOG
(
  id            NUMBER(8) not null,
  pay_serial_no VARCHAR2(50),
  trade_no      VARCHAR2(50),
  trade_status  VARCHAR2(50),
  notify_data   VARCHAR2(2000),
  notify_method NUMBER(1),
  notify_time   DATE
)
tablespace DANGKOU_TBS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on column DANGKOU.TB_ORDER_PAY_LOG.id
  is '主键';
comment on column DANGKOU.TB_ORDER_PAY_LOG.pay_serial_no
  is '交易流水号';
comment on column DANGKOU.TB_ORDER_PAY_LOG.trade_no
  is '第三方交易流水号';
comment on column DANGKOU.TB_ORDER_PAY_LOG.trade_status
  is '通知状态';
comment on column DANGKOU.TB_ORDER_PAY_LOG.notify_data
  is '通知内容';
comment on column DANGKOU.TB_ORDER_PAY_LOG.notify_method
  is '通知方式';
comment on column DANGKOU.TB_ORDER_PAY_LOG.notify_time
  is '通知时间';

prompt
prompt Creating table TB_ORDER_PAY_RECORD
prompt ==================================
prompt
create table DANGKOU.TB_ORDER_PAY_RECORD
(
  id             NUMBER(8) not null,
  order_no       VARCHAR2(50),
  pay_time       DATE,
  pay_type       NUMBER(8),
  remark         VARCHAR2(400),
  total_price    NUMBER(8,2),
  pay_serial_no  VARCHAR2(50),
  create_user    NUMBER(8),
  create_time    DATE,
  update_user    NUMBER(8),
  update_time    DATE,
  bank_check     NUMBER(8) default 0,
  commerce_check NUMBER(8) default 0,
  src            NUMBER(8),
  parent_id      NUMBER(8),
  pay_method     NUMBER(8),
  valid          NUMBER(8),
  order_id       NUMBER(8),
  trade_no       VARCHAR2(50),
  trade_status   VARCHAR2(50)
)
tablespace DANGKOU_TBS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table DANGKOU.TB_ORDER_PAY_RECORD
  is '支付记录表';
comment on column DANGKOU.TB_ORDER_PAY_RECORD.id
  is '主键';
comment on column DANGKOU.TB_ORDER_PAY_RECORD.order_no
  is '订单号';
comment on column DANGKOU.TB_ORDER_PAY_RECORD.pay_time
  is '支付时间';
comment on column DANGKOU.TB_ORDER_PAY_RECORD.pay_type
  is '支付方式';
comment on column DANGKOU.TB_ORDER_PAY_RECORD.remark
  is '备注';
comment on column DANGKOU.TB_ORDER_PAY_RECORD.total_price
  is '支付金额';
comment on column DANGKOU.TB_ORDER_PAY_RECORD.pay_serial_no
  is '支付流水号';
comment on column DANGKOU.TB_ORDER_PAY_RECORD.create_user
  is '创建人';
comment on column DANGKOU.TB_ORDER_PAY_RECORD.create_time
  is '创建时间';
comment on column DANGKOU.TB_ORDER_PAY_RECORD.update_user
  is '修改人';
comment on column DANGKOU.TB_ORDER_PAY_RECORD.update_time
  is '修改时间';
comment on column DANGKOU.TB_ORDER_PAY_RECORD.bank_check
  is '银行对账 ：1、已对账，0、未对账';
comment on column DANGKOU.TB_ORDER_PAY_RECORD.commerce_check
  is '商户对账 ：1、已对账，0、未对账';
comment on column DANGKOU.TB_ORDER_PAY_RECORD.src
  is '支付渠道来源';
comment on column DANGKOU.TB_ORDER_PAY_RECORD.parent_id
  is '父ID';
comment on column DANGKOU.TB_ORDER_PAY_RECORD.pay_method
  is '支付方式 1支付 2 退款';
comment on column DANGKOU.TB_ORDER_PAY_RECORD.valid
  is '支付状态 ：1待支付、2支付中、3支付失败、4支付成功、5退款中、6退款成功、7退款失败';
comment on column DANGKOU.TB_ORDER_PAY_RECORD.order_id
  is '订单id';
comment on column DANGKOU.TB_ORDER_PAY_RECORD.trade_no
  is '第三方交易号';
comment on column DANGKOU.TB_ORDER_PAY_RECORD.trade_status
  is '状态';
alter table DANGKOU.TB_ORDER_PAY_RECORD
  add constraint PK_TB_ORDER_PAY_RECORD primary key (ID)
  using index 
  tablespace DANGKOU_TBS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TB_ORDER_REFUND
prompt ==============================
prompt
create table DANGKOU.TB_ORDER_REFUND
(
  id                   NUMBER(8) not null,
  order_id             NUMBER(8),
  order_pay_record_id  NUMBER(8),
  price                NUMBER(8,2),
  status               VARCHAR2(50),
  refund_type          NUMBER(8),
  reason               VARCHAR2(1000),
  create_time          DATE,
  create_user          NUMBER(8),
  update_user          NUMBER(8),
  update_time          DATE,
  third_return_status  VARCHAR2(50),
  third_return_message VARCHAR2(1000)
)
tablespace DANGKOU_TBS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table DANGKOU.TB_ORDER_REFUND
  is '订单退单表';
comment on column DANGKOU.TB_ORDER_REFUND.id
  is '主键';
comment on column DANGKOU.TB_ORDER_REFUND.order_id
  is '订单ID';
comment on column DANGKOU.TB_ORDER_REFUND.order_pay_record_id
  is '支付流水表ID';
comment on column DANGKOU.TB_ORDER_REFUND.price
  is '退款金额';
comment on column DANGKOU.TB_ORDER_REFUND.status
  is '退款状态';
comment on column DANGKOU.TB_ORDER_REFUND.refund_type
  is '退款方式 1微信 2支付宝 3银联';
comment on column DANGKOU.TB_ORDER_REFUND.reason
  is '退款原因';
comment on column DANGKOU.TB_ORDER_REFUND.create_time
  is '退款时间';
comment on column DANGKOU.TB_ORDER_REFUND.create_user
  is '退款人';
comment on column DANGKOU.TB_ORDER_REFUND.update_time
  is '更新时间';
comment on column DANGKOU.TB_ORDER_REFUND.third_return_status
  is '第三方退款状态';
comment on column DANGKOU.TB_ORDER_REFUND.third_return_message
  is '第三方退单返回信息';
alter table DANGKOU.TB_ORDER_REFUND
  add constraint PK_TB_ORDER_REFUND primary key (ID)
  using index 
  tablespace DANGKOU_TBS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TB_ORDER_WRITEOFFCODE
prompt ====================================
prompt
create table DANGKOU.TB_ORDER_WRITEOFFCODE
(
  id           NUMBER(8) not null,
  order_no     VARCHAR2(50),
  scan_method  NUMBER(2),
  writeoffcode VARCHAR2(50),
  saled_check  NUMBER(8),
  seller_id    NUMBER(8),
  create_time  DATE,
  create_user  NUMBER(8),
  update_time  DATE
)
tablespace DANGKOU_TBS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table DANGKOU.TB_ORDER_WRITEOFFCODE
  is '订单核销流水表';
comment on column DANGKOU.TB_ORDER_WRITEOFFCODE.id
  is '主键';
comment on column DANGKOU.TB_ORDER_WRITEOFFCODE.order_no
  is '订单号';
comment on column DANGKOU.TB_ORDER_WRITEOFFCODE.scan_method
  is '核销方式    0表示 未操作  1表示扫码方式  2表示  手动输入';
comment on column DANGKOU.TB_ORDER_WRITEOFFCODE.writeoffcode
  is '核销码';
comment on column DANGKOU.TB_ORDER_WRITEOFFCODE.saled_check
  is '是否核销（景点类和购物）  0表示 未核销  1 已核销';
comment on column DANGKOU.TB_ORDER_WRITEOFFCODE.seller_id
  is '商户ID';
comment on column DANGKOU.TB_ORDER_WRITEOFFCODE.create_time
  is '创建时间 (M网会员下单时间)';
comment on column DANGKOU.TB_ORDER_WRITEOFFCODE.create_user
  is '创建者 (M网会员下单者)';
comment on column DANGKOU.TB_ORDER_WRITEOFFCODE.update_time
  is '修改时间';
alter table DANGKOU.TB_ORDER_WRITEOFFCODE
  add constraint TB_ORDER_WRITEOFFCODE_ID primary key (ID)
  using index 
  tablespace DANGKOU_TBS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TB_SCENIC_SELLER
prompt ===============================
prompt
create table DANGKOU.TB_SCENIC_SELLER
(
  id                NUMBER(8) not null,
  name              VARCHAR2(200),
  type              VARCHAR2(50),
  type_category     VARCHAR2(50),
  parent_id         NUMBER(8),
  city_id           NUMBER(8),
  city_area_id      NUMBER(8),
  address           VARCHAR2(500),
  tel               VARCHAR2(50),
  valid             NUMBER(8),
  business_time     VARCHAR2(200),
  traffics          CLOB,
  introduce         CLOB,
  tips              CLOB,
  star_level        VARCHAR2(50),
  guid              VARCHAR2(32),
  auty_status       NUMBER(8) default 0,
  create_time       DATE,
  create_user       NUMBER(8),
  update_time       DATE,
  update_user       NUMBER(8),
  covers_image_url  VARCHAR2(300),
  covers_image_name VARCHAR2(100)
)
tablespace DANGKOU_TBS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table DANGKOU.TB_SCENIC_SELLER
  is '景区商户管理';
comment on column DANGKOU.TB_SCENIC_SELLER.name
  is '名称';
comment on column DANGKOU.TB_SCENIC_SELLER.type
  is '1：景区/景点 2 商户';
comment on column DANGKOU.TB_SCENIC_SELLER.type_category
  is '类型的分类 ,应数据字典编码分类 scenic_seller_type_category 景点 商户等';
comment on column DANGKOU.TB_SCENIC_SELLER.address
  is '详细地址';
comment on column DANGKOU.TB_SCENIC_SELLER.tel
  is '电话或者手机';
comment on column DANGKOU.TB_SCENIC_SELLER.valid
  is '1 有效 0 无效';
comment on column DANGKOU.TB_SCENIC_SELLER.traffics
  is '交通方式';
comment on column DANGKOU.TB_SCENIC_SELLER.introduce
  is '详情介绍';
comment on column DANGKOU.TB_SCENIC_SELLER.tips
  is '小贴士';
comment on column DANGKOU.TB_SCENIC_SELLER.star_level
  is '1: 1A 2:2A 3:3A 4:4A 5:5A';
comment on column DANGKOU.TB_SCENIC_SELLER.auty_status
  is '认证状态  0 未认证 1 已认证';
comment on column DANGKOU.TB_SCENIC_SELLER.update_user
  is '营业时间';
comment on column DANGKOU.TB_SCENIC_SELLER.covers_image_name
  is '封面图片名称';
alter table DANGKOU.TB_SCENIC_SELLER
  add constraint PK_TB_SCENIC_SELLER primary key (ID)
  using index 
  tablespace DANGKOU_TBS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TB_PICTURES
prompt ==========================
prompt
create table DANGKOU.TB_PICTURES
(
  id            NUMBER(8) not null,
  url           VARCHAR2(100),
  name          VARCHAR2(50),
  remarks       VARCHAR2(200),
  logo          NUMBER(8) default 0,
  valid         NUMBER(8),
  related_id    NUMBER(8),
  category_type NUMBER(8),
  create_time   DATE,
  create_user   NUMBER(8),
  update_time   DATE,
  update_user   NUMBER(8)
)
tablespace DANGKOU_TBS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column DANGKOU.TB_PICTURES.url
  is '图片地址';
comment on column DANGKOU.TB_PICTURES.name
  is '图片名称';
comment on column DANGKOU.TB_PICTURES.remarks
  is '图片描述';
comment on column DANGKOU.TB_PICTURES.logo
  is '1 为 logo标示 默认 0 ';
comment on column DANGKOU.TB_PICTURES.valid
  is '1 有效 0 无效';
comment on column DANGKOU.TB_PICTURES.related_id
  is '外部关联id';
comment on column DANGKOU.TB_PICTURES.category_type
  is '1 景区商户  2 产品';
alter table DANGKOU.TB_PICTURES
  add constraint PK_TB_PICTURES primary key (ID)
  using index 
  tablespace DANGKOU_TBS
  pctfree 10
  initrans 2
  maxtrans 255;
alter table DANGKOU.TB_PICTURES
  add constraint FK_TB_PICTURES_TB_SCENIC_SE_01 foreign key (RELATED_ID)
  references DANGKOU.TB_SCENIC_SELLER (ID);

prompt
prompt Creating table TB_POSITION
prompt ==========================
prompt
create table DANGKOU.TB_POSITION
(
  id               NUMBER(8) not null,
  lgn              VARCHAR2(100),
  lat              VARCHAR2(100),
  type             NUMBER(8),
  valid            NUMBER(8),
  out_related_id   NUMBER(8),
  out_related_type NUMBER(8),
  create_time      DATE,
  create_user      NUMBER(8),
  update_time      DATE,
  update_user      NUMBER(8)
)
tablespace DANGKOU_TBS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table DANGKOU.TB_POSITION
  is '位置服务，经纬度';
comment on column DANGKOU.TB_POSITION.id
  is '位置服务';
comment on column DANGKOU.TB_POSITION.lgn
  is '经度';
comment on column DANGKOU.TB_POSITION.lat
  is '纬度';
comment on column DANGKOU.TB_POSITION.type
  is '1 百度 2 谷歌 3 高德 4 腾讯';
comment on column DANGKOU.TB_POSITION.valid
  is '1 有效 0 无效';
comment on column DANGKOU.TB_POSITION.out_related_id
  is '外部关联id';
comment on column DANGKOU.TB_POSITION.out_related_type
  is '数据类别（1地标，2城市，3景区商户）';
alter table DANGKOU.TB_POSITION
  add constraint PK_POSITION_ID primary key (ID)
  using index 
  tablespace DANGKOU_TBS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TB_PRODUCT
prompt =========================
prompt
create table DANGKOU.TB_PRODUCT
(
  id               NUMBER(8) not null,
  product_name     VARCHAR2(600),
  product_code     VARCHAR2(50),
  product_type     NUMBER(8),
  product_sub_type NUMBER(8),
  is_sale          NUMBER(8),
  sales_time       DATE,
  valid            NUMBER(8),
  min_count        NUMBER(8),
  max_count        NUMBER(8),
  last_order_day   NUMBER(8),
  last_order_time  NUMBER(8),
  recommend        CLOB,
  remark           CLOB,
  traffic          CLOB,
  order_rule       CLOB,
  return_rule      CLOB,
  seller_id        NUMBER(8),
  price            NUMBER(8,2),
  total_num        NUMBER(8),
  sale_num         NUMBER(8),
  goods_type       NUMBER(8),
  city_id          NUMBER(8),
  take_address     VARCHAR2(500),
  confirm_hour     NUMBER(8),
  operate_time     DATE,
  operate_user     NUMBER(8),
  create_user      NUMBER(8),
  create_time      DATE,
  update_user      NUMBER(8),
  update_time      DATE,
  read_count       NUMBER(8),
  uniform_postage  NUMBER(8),
  express_delivery VARCHAR2(2000)
)
tablespace DANGKOU_TBS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table DANGKOU.TB_PRODUCT
  is '产品表';
comment on column DANGKOU.TB_PRODUCT.id
  is '主键';
comment on column DANGKOU.TB_PRODUCT.product_name
  is '商品名称';
comment on column DANGKOU.TB_PRODUCT.product_code
  is '商品编码';
comment on column DANGKOU.TB_PRODUCT.product_type
  is '商品类别 1景点  2线路  3购物 ';
comment on column DANGKOU.TB_PRODUCT.product_sub_type
  is '子类别 如购物-土特产';
comment on column DANGKOU.TB_PRODUCT.is_sale
  is '是否上架 1上架 0下架';
comment on column DANGKOU.TB_PRODUCT.sales_time
  is '上架时间';
comment on column DANGKOU.TB_PRODUCT.valid
  is '状态 1启用 0禁用';
comment on column DANGKOU.TB_PRODUCT.min_count
  is '最小预定数量';
comment on column DANGKOU.TB_PRODUCT.max_count
  is '最大预定数量 -1不限制';
comment on column DANGKOU.TB_PRODUCT.last_order_day
  is '最晚预定 天';
comment on column DANGKOU.TB_PRODUCT.last_order_time
  is '最晚预定 点';
comment on column DANGKOU.TB_PRODUCT.recommend
  is '经理推荐';
comment on column DANGKOU.TB_PRODUCT.remark
  is '图文说明';
comment on column DANGKOU.TB_PRODUCT.traffic
  is '交通说明';
comment on column DANGKOU.TB_PRODUCT.order_rule
  is '预定规则';
comment on column DANGKOU.TB_PRODUCT.return_rule
  is '退改规则';
comment on column DANGKOU.TB_PRODUCT.seller_id
  is '所属商户';
comment on column DANGKOU.TB_PRODUCT.price
  is '单价';
comment on column DANGKOU.TB_PRODUCT.total_num
  is '总库存';
comment on column DANGKOU.TB_PRODUCT.sale_num
  is '销量';
comment on column DANGKOU.TB_PRODUCT.goods_type
  is '购物类别 1电子商品 2自提商品';
comment on column DANGKOU.TB_PRODUCT.city_id
  is '所在城市ID';
comment on column DANGKOU.TB_PRODUCT.take_address
  is '自提地址';
comment on column DANGKOU.TB_PRODUCT.confirm_hour
  is '确认时间 如：1 小时';
comment on column DANGKOU.TB_PRODUCT.operate_time
  is '操作时间';
comment on column DANGKOU.TB_PRODUCT.operate_user
  is '操作人';
comment on column DANGKOU.TB_PRODUCT.create_user
  is '创建人';
comment on column DANGKOU.TB_PRODUCT.create_time
  is '创建时间';
comment on column DANGKOU.TB_PRODUCT.update_user
  is '修改人';
comment on column DANGKOU.TB_PRODUCT.update_time
  is '修改时间';
comment on column DANGKOU.TB_PRODUCT.read_count
  is '查看次数';
comment on column DANGKOU.TB_PRODUCT.uniform_postage
  is '统一邮费';
comment on column DANGKOU.TB_PRODUCT.express_delivery
  is '快递说明';
alter table DANGKOU.TB_PRODUCT
  add constraint PK_TB_BUSI_PRODUCT primary key (ID)
  using index 
  tablespace DANGKOU_TBS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TB_PRODUCT_COMMENT
prompt =================================
prompt
create table DANGKOU.TB_PRODUCT_COMMENT
(
  id             NUMBER(8) not null,
  order_id       NUMBER(8),
  parente_id     NUMBER(8),
  content        VARCHAR2(2000),
  gread          NUMBER(8),
  is_recommend   NUMBER(8),
  seller_id      NUMBER(8),
  product_id     NUMBER(8),
  product_name   VARCHAR2(2000),
  src            NUMBER(8),
  seller_comtent VARCHAR2(2000),
  create_user    NUMBER(8),
  create_time    DATE,
  update_user    NUMBER(8),
  update_time    DATE,
  valid          NUMBER(8) default 1
)
tablespace DANGKOU_TBS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table DANGKOU.TB_PRODUCT_COMMENT
  is '商品点评表';
comment on column DANGKOU.TB_PRODUCT_COMMENT.id
  is '主键';
comment on column DANGKOU.TB_PRODUCT_COMMENT.order_id
  is '订单表主键';
comment on column DANGKOU.TB_PRODUCT_COMMENT.content
  is '内容';
comment on column DANGKOU.TB_PRODUCT_COMMENT.gread
  is '评级';
comment on column DANGKOU.TB_PRODUCT_COMMENT.is_recommend
  is '是否推荐 1是 0 否';
comment on column DANGKOU.TB_PRODUCT_COMMENT.seller_id
  is '商户ID（卖家）';
comment on column DANGKOU.TB_PRODUCT_COMMENT.product_id
  is '商品ID';
comment on column DANGKOU.TB_PRODUCT_COMMENT.product_name
  is '商品名称';
comment on column DANGKOU.TB_PRODUCT_COMMENT.src
  is '来源';
comment on column DANGKOU.TB_PRODUCT_COMMENT.seller_comtent
  is '商户回复';
comment on column DANGKOU.TB_PRODUCT_COMMENT.create_user
  is '创建人';
comment on column DANGKOU.TB_PRODUCT_COMMENT.create_time
  is '创建时间';
comment on column DANGKOU.TB_PRODUCT_COMMENT.update_user
  is '修改人';
comment on column DANGKOU.TB_PRODUCT_COMMENT.update_time
  is '修改时间';
comment on column DANGKOU.TB_PRODUCT_COMMENT.valid
  is '1：有效，0：无效';
alter table DANGKOU.TB_PRODUCT_COMMENT
  add constraint PK_TB_BUSI_ primary key (ID)
  using index 
  tablespace DANGKOU_TBS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TB_PRODUCT_COMMENT_FILE
prompt ======================================
prompt
create table DANGKOU.TB_PRODUCT_COMMENT_FILE
(
  id                 NUMBER(8) not null,
  product_comment_id NUMBER(8) not null,
  file_name          VARCHAR2(100),
  file_url           VARCHAR2(100),
  create_user        NUMBER(8),
  create_time        DATE,
  update_user        NUMBER(8),
  update_time        DATE,
  valid              NUMBER(8) default 1
)
tablespace DANGKOU_TBS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table DANGKOU.TB_PRODUCT_COMMENT_FILE
  is '评价图片表';
comment on column DANGKOU.TB_PRODUCT_COMMENT_FILE.id
  is '主键';
comment on column DANGKOU.TB_PRODUCT_COMMENT_FILE.product_comment_id
  is '产品评论ID';
comment on column DANGKOU.TB_PRODUCT_COMMENT_FILE.file_name
  is '文件名';
comment on column DANGKOU.TB_PRODUCT_COMMENT_FILE.file_url
  is '文件路径';
comment on column DANGKOU.TB_PRODUCT_COMMENT_FILE.create_user
  is '创建人';
comment on column DANGKOU.TB_PRODUCT_COMMENT_FILE.create_time
  is '创建时间';
comment on column DANGKOU.TB_PRODUCT_COMMENT_FILE.update_user
  is '修改人';
comment on column DANGKOU.TB_PRODUCT_COMMENT_FILE.update_time
  is '修改时间';
comment on column DANGKOU.TB_PRODUCT_COMMENT_FILE.valid
  is '是否有效 ：1表示有效 0 表示无效';
alter table DANGKOU.TB_PRODUCT_COMMENT_FILE
  add constraint PK_PRODUCT_COMMENT_FILE primary key (ID)
  using index 
  tablespace DANGKOU_TBS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TB_PRODUCT_MEALS
prompt ===============================
prompt
create table DANGKOU.TB_PRODUCT_MEALS
(
  id          NUMBER(8) not null,
  product_id  NUMBER(8),
  meals_name  VARCHAR2(600),
  meals_code  VARCHAR2(50),
  valid       NUMBER(8),
  create_user NUMBER(8),
  create_time DATE,
  update_user NUMBER(8),
  update_time DATE
)
tablespace DANGKOU_TBS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table DANGKOU.TB_PRODUCT_MEALS
  is '套餐表';
comment on column DANGKOU.TB_PRODUCT_MEALS.id
  is '主键';
comment on column DANGKOU.TB_PRODUCT_MEALS.product_id
  is '产品ID';
comment on column DANGKOU.TB_PRODUCT_MEALS.meals_name
  is '名称';
comment on column DANGKOU.TB_PRODUCT_MEALS.meals_code
  is '套餐CODE 对接ID';
comment on column DANGKOU.TB_PRODUCT_MEALS.valid
  is '是否显示 1显示 0不显示';
comment on column DANGKOU.TB_PRODUCT_MEALS.create_user
  is '创建人';
comment on column DANGKOU.TB_PRODUCT_MEALS.create_time
  is '创建时间';
comment on column DANGKOU.TB_PRODUCT_MEALS.update_user
  is '修改人';
comment on column DANGKOU.TB_PRODUCT_MEALS.update_time
  is '修改时间';
alter table DANGKOU.TB_PRODUCT_MEALS
  add constraint PK_TB_PRODUCT_MEALS primary key (ID)
  using index 
  tablespace DANGKOU_TBS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TB_PRODUCT_PIC_REL
prompt =================================
prompt
create table DANGKOU.TB_PRODUCT_PIC_REL
(
  id             NUMBER(8) not null,
  product_id     NUMBER(8),
  picture_lib_id NUMBER(8),
  is_logo        NUMBER(8),
  create_user    NUMBER(8),
  create_time    DATE,
  update_user    NUMBER(8),
  update_time    DATE
)
tablespace DANGKOU_TBS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table DANGKOU.TB_PRODUCT_PIC_REL
  is '产品图片关联表';
comment on column DANGKOU.TB_PRODUCT_PIC_REL.id
  is '主键';
comment on column DANGKOU.TB_PRODUCT_PIC_REL.product_id
  is '产品ID';
comment on column DANGKOU.TB_PRODUCT_PIC_REL.picture_lib_id
  is '图片库ID';
comment on column DANGKOU.TB_PRODUCT_PIC_REL.is_logo
  is '是否为LOGO 1是 0否';
comment on column DANGKOU.TB_PRODUCT_PIC_REL.create_user
  is '创建人';
comment on column DANGKOU.TB_PRODUCT_PIC_REL.create_time
  is '创建时间';
comment on column DANGKOU.TB_PRODUCT_PIC_REL.update_user
  is '修改人';
comment on column DANGKOU.TB_PRODUCT_PIC_REL.update_time
  is '修改时间';
alter table DANGKOU.TB_PRODUCT_PIC_REL
  add constraint PK_TB_PRODUCT_PIC_REL primary key (ID)
  using index 
  tablespace DANGKOU_TBS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TB_PRODUCT_RESO_FLIGHT
prompt =====================================
prompt
create table DANGKOU.TB_PRODUCT_RESO_FLIGHT
(
  id           NUMBER(8) not null,
  product_id   NUMBER(8),
  travel_day   NUMBER(8),
  traffic_type NUMBER(8),
  classes      VARCHAR2(50),
  from_city    VARCHAR2(100),
  from_station VARCHAR2(100),
  from_time    DATE,
  to_city      VARCHAR2(100),
  to_station   VARCHAR2(100),
  to_time      DATE,
  create_user  NUMBER(8),
  create_time  DATE,
  update_user  NUMBER(8),
  update_time  DATE
)
tablespace DANGKOU_TBS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table DANGKOU.TB_PRODUCT_RESO_FLIGHT
  is '行程资源 航班';
comment on column DANGKOU.TB_PRODUCT_RESO_FLIGHT.id
  is '主键';
comment on column DANGKOU.TB_PRODUCT_RESO_FLIGHT.product_id
  is '产品ID';
comment on column DANGKOU.TB_PRODUCT_RESO_FLIGHT.travel_day
  is '行程 如第几天';
comment on column DANGKOU.TB_PRODUCT_RESO_FLIGHT.traffic_type
  is '交通类型';
comment on column DANGKOU.TB_PRODUCT_RESO_FLIGHT.classes
  is '班次';
comment on column DANGKOU.TB_PRODUCT_RESO_FLIGHT.from_city
  is '出发城市';
comment on column DANGKOU.TB_PRODUCT_RESO_FLIGHT.from_station
  is '出发站';
comment on column DANGKOU.TB_PRODUCT_RESO_FLIGHT.from_time
  is '出发时间';
comment on column DANGKOU.TB_PRODUCT_RESO_FLIGHT.to_city
  is '到达城市';
comment on column DANGKOU.TB_PRODUCT_RESO_FLIGHT.to_station
  is '到达站';
comment on column DANGKOU.TB_PRODUCT_RESO_FLIGHT.to_time
  is '到达时间';
comment on column DANGKOU.TB_PRODUCT_RESO_FLIGHT.create_user
  is '创建人';
comment on column DANGKOU.TB_PRODUCT_RESO_FLIGHT.create_time
  is '创建时间';
comment on column DANGKOU.TB_PRODUCT_RESO_FLIGHT.update_user
  is '修改人';
comment on column DANGKOU.TB_PRODUCT_RESO_FLIGHT.update_time
  is '修改时间';
alter table DANGKOU.TB_PRODUCT_RESO_FLIGHT
  add constraint PK_TB_PRODUCT_RESO_FLIGHT primary key (ID)
  using index 
  tablespace DANGKOU_TBS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table TB_PRODUCT_RESO_HOTEL
prompt ====================================
prompt
create table DANGKOU.TB_PRODUCT_RESO_HOTEL
(
  id          NUMBER(8) not null,
  hotel_name  VARCHAR2(200),
  address     VARCHAR2(50),
  create_user NUMBER(8),
  create_time DATE,
  update_user NUMBER(8),
  update_time DATE
)
tablespace DANGKOU_TBS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table DANGKOU.TB_PRODUCT_RESO_HOTEL
  is '行程资源 酒店表';
comment on column DANGKOU.TB_PRODUCT_RESO_HOTEL.id
  is '主键';
comment on column DANGKOU.TB_PRODUCT_RESO_HOTEL.hotel_name
  is '酒店名称';
comment on column DANGKOU.TB_PRODUCT_RESO_HOTEL.address
  is '酒店地址';
comment on column DANGKOU.TB_PRODUCT_RESO_HOTEL.create_user
  is '创建人';
comment on column DANGKOU.TB_PRODUCT_RESO_HOTEL.create_time
  is '创建时间';
comment on column DANGKOU.TB_PRODUCT_RESO_HOTEL.update_user
  is '修改人';
comment on column DANGKOU.TB_PRODUCT_RESO_HOTEL.update_time
  is '修改时间';
alter table DANGKOU.TB_PRODUCT_RESO_HOTEL
  add constraint PK_TB_PRODUCT_RESO_HOTEL primary key (ID)
  using index 
  tablespace DANGKOU_TBS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table TB_PRODUCT_RESO_REFER
prompt ====================================
prompt
create table DANGKOU.TB_PRODUCT_RESO_REFER
(
  id          NUMBER(8) not null,
  product_id  NUMBER(8),
  travel_day  NUMBER(8),
  theme       VARCHAR2(400),
  food        VARCHAR2(400),
  stay        VARCHAR2(400),
  summary     VARCHAR2(500),
  create_user NUMBER(8),
  create_time DATE,
  update_user NUMBER(8),
  update_time DATE
)
tablespace DANGKOU_TBS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table DANGKOU.TB_PRODUCT_RESO_REFER
  is '行程资源-行程参考';
comment on column DANGKOU.TB_PRODUCT_RESO_REFER.id
  is '主键';
comment on column DANGKOU.TB_PRODUCT_RESO_REFER.product_id
  is '产品ID';
comment on column DANGKOU.TB_PRODUCT_RESO_REFER.travel_day
  is '第几天';
comment on column DANGKOU.TB_PRODUCT_RESO_REFER.theme
  is '主题';
comment on column DANGKOU.TB_PRODUCT_RESO_REFER.food
  is '用餐';
comment on column DANGKOU.TB_PRODUCT_RESO_REFER.stay
  is '住宿';
comment on column DANGKOU.TB_PRODUCT_RESO_REFER.summary
  is '简介';
comment on column DANGKOU.TB_PRODUCT_RESO_REFER.create_user
  is '创建人';
comment on column DANGKOU.TB_PRODUCT_RESO_REFER.create_time
  is '创建时间';
comment on column DANGKOU.TB_PRODUCT_RESO_REFER.update_user
  is '修改人';
comment on column DANGKOU.TB_PRODUCT_RESO_REFER.update_time
  is '修改时间';
alter table DANGKOU.TB_PRODUCT_RESO_REFER
  add constraint PK_TB_PRODUCT_RESO_REFER primary key (ID)
  using index 
  tablespace DANGKOU_TBS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table TB_PRODUCT_STOCK
prompt ===============================
prompt
create table DANGKOU.TB_PRODUCT_STOCK
(
  id                NUMBER(8) not null,
  product_type      NUMBER(2),
  meals_id          NUMBER(8),
  play_day          DATE,
  price             NUMBER(8,2),
  adult_price       NUMBER(8,2),
  child_price       NUMBER(8,2),
  single_room_price NUMBER(8,2),
  total_num         NUMBER(8),
  sale_num          NUMBER(8),
  create_user       NUMBER(8),
  create_time       DATE,
  update_user       NUMBER(8),
  update_time       DATE
)
tablespace DANGKOU_TBS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on column DANGKOU.TB_PRODUCT_STOCK.id
  is '主键';
comment on column DANGKOU.TB_PRODUCT_STOCK.product_type
  is '产品类型 ';
comment on column DANGKOU.TB_PRODUCT_STOCK.meals_id
  is '套餐ID';
comment on column DANGKOU.TB_PRODUCT_STOCK.play_day
  is '游玩日期';
comment on column DANGKOU.TB_PRODUCT_STOCK.price
  is '单价';
comment on column DANGKOU.TB_PRODUCT_STOCK.adult_price
  is '成人价';
comment on column DANGKOU.TB_PRODUCT_STOCK.child_price
  is '儿童价';
comment on column DANGKOU.TB_PRODUCT_STOCK.single_room_price
  is '单房差';
comment on column DANGKOU.TB_PRODUCT_STOCK.total_num
  is '总库存';
comment on column DANGKOU.TB_PRODUCT_STOCK.sale_num
  is '已售数量';
comment on column DANGKOU.TB_PRODUCT_STOCK.create_user
  is '创建人';
comment on column DANGKOU.TB_PRODUCT_STOCK.create_time
  is '创建时间';
comment on column DANGKOU.TB_PRODUCT_STOCK.update_user
  is '修改人';
comment on column DANGKOU.TB_PRODUCT_STOCK.update_time
  is '修改时间';
alter table DANGKOU.TB_PRODUCT_STOCK
  add constraint PK_TB_PRODUCT_LINES_STOCK primary key (ID)
  using index 
  tablespace DANGKOU_TBS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TB_PRODUCT_STOCK_LOG
prompt ===================================
prompt
create table DANGKOU.TB_PRODUCT_STOCK_LOG
(
  id          NUMBER(8) not null,
  meals_id    NUMBER(8) not null,
  remark      VARCHAR2(1000),
  create_user NUMBER(8),
  create_time DATE,
  update_type NUMBER(8),
  update_user NUMBER(8),
  update_time DATE
)
tablespace DANGKOU_TBS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table DANGKOU.TB_PRODUCT_STOCK_LOG
  is '库存操作日志';
comment on column DANGKOU.TB_PRODUCT_STOCK_LOG.id
  is '主键';
comment on column DANGKOU.TB_PRODUCT_STOCK_LOG.meals_id
  is '套餐主键';
comment on column DANGKOU.TB_PRODUCT_STOCK_LOG.remark
  is '操作说明';
comment on column DANGKOU.TB_PRODUCT_STOCK_LOG.create_user
  is '创建人';
comment on column DANGKOU.TB_PRODUCT_STOCK_LOG.create_time
  is '创建时间';
comment on column DANGKOU.TB_PRODUCT_STOCK_LOG.update_type
  is '修改类别 1 新增 2 修改';
comment on column DANGKOU.TB_PRODUCT_STOCK_LOG.update_user
  is '修改人';
comment on column DANGKOU.TB_PRODUCT_STOCK_LOG.update_time
  is '修改时间';
alter table DANGKOU.TB_PRODUCT_STOCK_LOG
  add constraint PK_TB_PRODUCT_STOCK_LOG primary key (ID)
  using index 
  tablespace DANGKOU_TBS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TB_PUSH_PRAISE
prompt =============================
prompt
create table DANGKOU.TB_PUSH_PRAISE
(
  id                NUMBER(8) not null,
  session_id        VARCHAR2(50),
  member_id         NUMBER(8),
  praise_type       NUMBER(8),
  praise_content_id NUMBER(8),
  is_view           NUMBER(8),
  create_time       DATE,
  create_user       NUMBER(8),
  update_time       DATE,
  update_user       NUMBER(8)
)
tablespace DANGKOU_TBS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table DANGKOU.TB_PUSH_PRAISE
  is '点赞表';
comment on column DANGKOU.TB_PUSH_PRAISE.id
  is '主键';
comment on column DANGKOU.TB_PUSH_PRAISE.session_id
  is '会话ID';
comment on column DANGKOU.TB_PUSH_PRAISE.member_id
  is '会员ID';
comment on column DANGKOU.TB_PUSH_PRAISE.praise_type
  is '点赞类别(1、游记攻略；2、产品的评论；3、直播)';
comment on column DANGKOU.TB_PUSH_PRAISE.praise_content_id
  is '点赞内容ID主键';
comment on column DANGKOU.TB_PUSH_PRAISE.is_view
  is '会员本人是否可见（1：是0：否）';
comment on column DANGKOU.TB_PUSH_PRAISE.create_time
  is '创建时间';
comment on column DANGKOU.TB_PUSH_PRAISE.create_user
  is '创建人';
comment on column DANGKOU.TB_PUSH_PRAISE.update_time
  is '修改时间';
comment on column DANGKOU.TB_PUSH_PRAISE.update_user
  is '修改人';
alter table DANGKOU.TB_PUSH_PRAISE
  add constraint PK_TB_PUSH_PRAISE primary key (ID)
  using index 
  tablespace DANGKOU_TBS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TB_RESOURCE_INVENTORYS
prompt =====================================
prompt
create table DANGKOU.TB_RESOURCE_INVENTORYS
(
  id                   NUMBER(8) not null,
  resource_id          NUMBER(8),
  inventory_mode       NUMBER(8),
  total_inventory      NUMBER(8),
  total_inventory_used NUMBER(8),
  sale_start_date      DATE,
  sale_end_date        DATE,
  daily_inventory_mode VARCHAR2(50),
  guid                 VARCHAR2(50),
  create_time          DATE,
  create_user          NUMBER(8),
  update_time          DATE,
  update_user          NUMBER(8)
)
tablespace DANGKOU_TBS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table DANGKOU.TB_RESOURCE_INVENTORYS
  is '资源库存';
comment on column DANGKOU.TB_RESOURCE_INVENTORYS.total_inventory
  is '总库存';
comment on column DANGKOU.TB_RESOURCE_INVENTORYS.sale_start_date
  is '售卖开始日期';
comment on column DANGKOU.TB_RESOURCE_INVENTORYS.sale_end_date
  is '售卖结束日期';
alter table DANGKOU.TB_RESOURCE_INVENTORYS
  add constraint PK_TB_RESOURCE_INVENTORYS primary key (ID)
  using index 
  tablespace DANGKOU_TBS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table TB_RESOURCE_SALES_PRICE
prompt ======================================
prompt
create table DANGKOU.TB_RESOURCE_SALES_PRICE
(
  id               NUMBER(8) not null,
  resource_id      NUMBER(8),
  suppliers_id     NUMBER(8),
  sale_price       NUMBER(8,2),
  package_price    NUMBER(8,2),
  settlement_price NUMBER(8,2),
  currency         VARCHAR2(50),
  saledate         DATE,
  guid             VARCHAR2(32),
  create_time      DATE,
  create_user      NUMBER(8),
  update_time      DATE,
  update_user      NUMBER(8)
)
tablespace DANGKOU_TBS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table DANGKOU.TB_RESOURCE_SALES_PRICE
  is '资源价格';
comment on column DANGKOU.TB_RESOURCE_SALES_PRICE.resource_id
  is '资源id';
comment on column DANGKOU.TB_RESOURCE_SALES_PRICE.suppliers_id
  is '供应商id';
comment on column DANGKOU.TB_RESOURCE_SALES_PRICE.sale_price
  is '卖价（门市价）';
comment on column DANGKOU.TB_RESOURCE_SALES_PRICE.package_price
  is '组合价';
comment on column DANGKOU.TB_RESOURCE_SALES_PRICE.settlement_price
  is '结算价';
comment on column DANGKOU.TB_RESOURCE_SALES_PRICE.currency
  is '币种';
comment on column DANGKOU.TB_RESOURCE_SALES_PRICE.saledate
  is '售卖日期';
alter table DANGKOU.TB_RESOURCE_SALES_PRICE
  add constraint PK_TB_SINGLE_CATEGORY primary key (ID)
  using index 
  tablespace DANGKOU_TBS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table TB_SCENIC_SELLER_AUTH
prompt ====================================
prompt
create table DANGKOU.TB_SCENIC_SELLER_AUTH
(
  id                     NUMBER(8) not null,
  name                   VARCHAR2(200),
  phone                  VARCHAR2(200),
  id_card_code           VARCHAR2(50),
  id_card_image          VARCHAR2(50),
  email                  VARCHAR2(50),
  business_license_code  VARCHAR2(200),
  business_license_image VARCHAR2(50),
  scenic_seller_id       NUMBER(8),
  guid                   VARCHAR2(32),
  valid                  NUMBER(8),
  create_time            DATE,
  create_user            NUMBER(8),
  update_time            DATE,
  update_user            NUMBER(8)
)
tablespace DANGKOU_TBS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table DANGKOU.TB_SCENIC_SELLER_AUTH
  is '景区商户认证';
comment on column DANGKOU.TB_SCENIC_SELLER_AUTH.name
  is '经营者名称';
comment on column DANGKOU.TB_SCENIC_SELLER_AUTH.phone
  is '手机号';
comment on column DANGKOU.TB_SCENIC_SELLER_AUTH.id_card_code
  is '身份证号';
comment on column DANGKOU.TB_SCENIC_SELLER_AUTH.business_license_code
  is '营业执照注册号';
alter table DANGKOU.TB_SCENIC_SELLER_AUTH
  add constraint PK_TB_SCENIC_SELLER_AUTH primary key (ID)
  using index 
  tablespace DANGKOU_TBS
  pctfree 10
  initrans 2
  maxtrans 255;
alter table DANGKOU.TB_SCENIC_SELLER_AUTH
  add constraint FK_TB_SCENIC_SE_TB_SCENIC_S_01 foreign key (SCENIC_SELLER_ID)
  references DANGKOU.TB_SCENIC_SELLER (ID);

prompt
prompt Creating table TB_SUPPLIERS
prompt ===========================
prompt
create table DANGKOU.TB_SUPPLIERS
(
  id              NUMBER(8) not null,
  name            VARCHAR2(200) not null,
  code            VARCHAR2(50) not null,
  remarks         VARCHAR2(2000),
  valid           VARCHAR2(50),
  status          NUMBER(8) not null,
  check_in_status NUMBER(8) default 0,
  guid            VARCHAR2(32),
  create_time     DATE,
  create_user     NUMBER(8),
  update_time     DATE,
  update_user     NUMBER(8)
)
tablespace DANGKOU_TBS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table DANGKOU.TB_SUPPLIERS
  is '供应商管理';
comment on column DANGKOU.TB_SUPPLIERS.name
  is '供应商名称';
comment on column DANGKOU.TB_SUPPLIERS.code
  is '供应商编码';
comment on column DANGKOU.TB_SUPPLIERS.remarks
  is '供应商简介';
comment on column DANGKOU.TB_SUPPLIERS.valid
  is '1 有效 0 无效';
comment on column DANGKOU.TB_SUPPLIERS.status
  is '1 临时 2 合格';
comment on column DANGKOU.TB_SUPPLIERS.check_in_status
  is '0 未入住 1 已入住            默认0';
alter table DANGKOU.TB_SUPPLIERS
  add constraint PK_TB_SUPPLIERS primary key (ID)
  using index 
  tablespace DANGKOU_TBS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table TB_SCENIC_SELLER_SUPPLIERS_RE
prompt ============================================
prompt
create table DANGKOU.TB_SCENIC_SELLER_SUPPLIERS_RE
(
  id               NUMBER(8) not null,
  scenic_seller_id NUMBER(8),
  suppliers_id     NUMBER(8),
  serve_type       NUMBER(8),
  create_user      NUMBER(8),
  create_time      DATE,
  update_time      DATE,
  update_user      NUMBER(8)
)
tablespace DANGKOU_TBS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table DANGKOU.TB_SCENIC_SELLER_SUPPLIERS_RE
  is '景区商户和供应商关联表';
comment on column DANGKOU.TB_SCENIC_SELLER_SUPPLIERS_RE.scenic_seller_id
  is '景区/商户 id';
comment on column DANGKOU.TB_SCENIC_SELLER_SUPPLIERS_RE.suppliers_id
  is '供应商id';
comment on column DANGKOU.TB_SCENIC_SELLER_SUPPLIERS_RE.serve_type
  is '1 平台 2 入驻';
alter table DANGKOU.TB_SCENIC_SELLER_SUPPLIERS_RE
  add constraint PK_TB_SCENIC_SELLER_SUPPL_01 primary key (ID)
  using index 
  tablespace DANGKOU_TBS
  pctfree 10
  initrans 2
  maxtrans 255;
alter table DANGKOU.TB_SCENIC_SELLER_SUPPLIERS_RE
  add constraint FK_TB_SCENIC_SE_TB_SCENIC_S_02 foreign key (SCENIC_SELLER_ID)
  references DANGKOU.TB_SCENIC_SELLER (ID);
alter table DANGKOU.TB_SCENIC_SELLER_SUPPLIERS_RE
  add constraint FK_TB_SCENIC_SE_TB_SUPPLIER_01 foreign key (SUPPLIERS_ID)
  references DANGKOU.TB_SUPPLIERS (ID);

prompt
prompt Creating table TB_SHARES
prompt ========================
prompt
create table DANGKOU.TB_SHARES
(
  id               NUMBER(8) not null,
  member_id        NUMBER(8),
  share_type       NUMBER(8),
  share_content_id NUMBER(8),
  create_user      NUMBER(8),
  create_time      DATE,
  update_user      NUMBER(8),
  update_time      DATE
)
tablespace DANGKOU_TBS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table DANGKOU.TB_SHARES
  is '分享表';
comment on column DANGKOU.TB_SHARES.id
  is '主键';
comment on column DANGKOU.TB_SHARES.member_id
  is '会员ID';
comment on column DANGKOU.TB_SHARES.share_type
  is '分享类别(1、游记攻略；2、产品)';
comment on column DANGKOU.TB_SHARES.share_content_id
  is '分享内容ID主键';
comment on column DANGKOU.TB_SHARES.create_user
  is '创建人';
comment on column DANGKOU.TB_SHARES.create_time
  is '创建时间';
comment on column DANGKOU.TB_SHARES.update_user
  is '修改人';
comment on column DANGKOU.TB_SHARES.update_time
  is '修改时间';
alter table DANGKOU.TB_SHARES
  add constraint PK_TB_SHARES primary key (ID)
  using index 
  tablespace DANGKOU_TBS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table TB_SUPPLIERS_CONTRACT
prompt ====================================
prompt
create table DANGKOU.TB_SUPPLIERS_CONTRACT
(
  id           NUMBER(8) not null,
  code         VARCHAR2(50),
  name         VARCHAR2(200),
  signdate     DATE,
  validdate    DATE,
  contract_url VARCHAR2(500),
  suppliers_id NUMBER(8),
  valid        NUMBER(8),
  guid         VARCHAR2(32),
  create_time  DATE,
  create_user  NUMBER(8),
  update_time  DATE,
  update_user  NUMBER(8)
)
tablespace DANGKOU_TBS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table DANGKOU.TB_SUPPLIERS_CONTRACT
  is '供应商合同';
comment on column DANGKOU.TB_SUPPLIERS_CONTRACT.code
  is '合同编号';
comment on column DANGKOU.TB_SUPPLIERS_CONTRACT.name
  is '合同名称';
comment on column DANGKOU.TB_SUPPLIERS_CONTRACT.signdate
  is '签约时间';
comment on column DANGKOU.TB_SUPPLIERS_CONTRACT.validdate
  is '有效期';
comment on column DANGKOU.TB_SUPPLIERS_CONTRACT.contract_url
  is '合同附件地址';
comment on column DANGKOU.TB_SUPPLIERS_CONTRACT.suppliers_id
  is '供应商id';
comment on column DANGKOU.TB_SUPPLIERS_CONTRACT.valid
  is '1 有效 0 无效';
alter table DANGKOU.TB_SUPPLIERS_CONTRACT
  add constraint PK_TB_SUPPLIERS_CONTRACT primary key (ID)
  using index 
  tablespace DANGKOU_TBS
  pctfree 10
  initrans 2
  maxtrans 255;
alter table DANGKOU.TB_SUPPLIERS_CONTRACT
  add constraint FK_TB_SUPPLIERS_TB_SUPPLIER_01 foreign key (SUPPLIERS_ID)
  references DANGKOU.TB_SUPPLIERS (ID);

prompt
prompt Creating table TB_SUPPLIERS_DEPARTMENT_RE
prompt =========================================
prompt
create table DANGKOU.TB_SUPPLIERS_DEPARTMENT_RE
(
  id            NUMBER(8) not null,
  suppliers_id  NUMBER(8),
  department_id NUMBER(8),
  create_time   DATE,
  create_user   NUMBER(8),
  update_time   DATE,
  update_user   NUMBER(8)
)
tablespace DANGKOU_TBS
  pctfree 10
  initrans 1
  maxtrans 255;
alter table DANGKOU.TB_SUPPLIERS_DEPARTMENT_RE
  add constraint PK_TB_SUPPLIERS_DEPARTMEN_01 primary key (ID)
  using index 
  tablespace DANGKOU_TBS
  pctfree 10
  initrans 2
  maxtrans 255;
alter table DANGKOU.TB_SUPPLIERS_DEPARTMENT_RE
  add constraint FK_TB_SUPPLIERS_TB_AUTH_DEP_01 foreign key (DEPARTMENT_ID)
  references DANGKOU.TB_AUTH_DEPARTMENT (ID);
alter table DANGKOU.TB_SUPPLIERS_DEPARTMENT_RE
  add constraint FK_TB_SUPPLIERS_TB_SUPPLIER_04 foreign key (SUPPLIERS_ID)
  references DANGKOU.TB_SUPPLIERS (ID);

prompt
prompt Creating table TB_SUPPLIERS_DOCUMENT
prompt ====================================
prompt
create table DANGKOU.TB_SUPPLIERS_DOCUMENT
(
  id            NUMBER(8) not null,
  name          VARCHAR2(200),
  valid         NUMBER(8),
  validdate     DATE,
  document_url  VARCHAR2(200),
  document_type NUMBER(8),
  suppliers_id  NUMBER(8),
  guid          VARCHAR2(32),
  create_time   DATE,
  create_user   NUMBER(8),
  update_time   DATE,
  update_user   NUMBER(8),
  type          NUMBER(8) default 1
)
tablespace DANGKOU_TBS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table DANGKOU.TB_SUPPLIERS_DOCUMENT
  is '供应商证件';
comment on column DANGKOU.TB_SUPPLIERS_DOCUMENT.name
  is '证件名称';
comment on column DANGKOU.TB_SUPPLIERS_DOCUMENT.valid
  is '1 有效 0 无效';
comment on column DANGKOU.TB_SUPPLIERS_DOCUMENT.validdate
  is '证件有效期';
comment on column DANGKOU.TB_SUPPLIERS_DOCUMENT.document_url
  is '证件地址';
comment on column DANGKOU.TB_SUPPLIERS_DOCUMENT.document_type
  is '冗余字段';
comment on column DANGKOU.TB_SUPPLIERS_DOCUMENT.type
  is '类型 1表示供应商管理  2表示商户证照管理';
alter table DANGKOU.TB_SUPPLIERS_DOCUMENT
  add constraint PK_TB_SUPPLIERS_DOCUMENT primary key (ID)
  using index 
  tablespace DANGKOU_TBS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TB_SUPPLIERS_PRODUCT_TYPE
prompt ========================================
prompt
create table DANGKOU.TB_SUPPLIERS_PRODUCT_TYPE
(
  id           NUMBER(8) not null,
  type         VARCHAR2(50),
  suppliers_id NUMBER(8),
  create_time  DATE,
  create_user  NUMBER(8),
  update_time  DATE,
  update_user  NUMBER(8)
)
tablespace DANGKOU_TBS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table DANGKOU.TB_SUPPLIERS_PRODUCT_TYPE
  is '供应商产品类型';
comment on column DANGKOU.TB_SUPPLIERS_PRODUCT_TYPE.type
  is '对应数据字典编码分类 travel_notes_details_type 下的参数值 ';
comment on column DANGKOU.TB_SUPPLIERS_PRODUCT_TYPE.suppliers_id
  is '供应商id';
alter table DANGKOU.TB_SUPPLIERS_PRODUCT_TYPE
  add constraint PK_TB_SUPPLIERS_PRODUCT_TYPE primary key (ID)
  using index 
  tablespace DANGKOU_TBS
  pctfree 10
  initrans 2
  maxtrans 255;
alter table DANGKOU.TB_SUPPLIERS_PRODUCT_TYPE
  add constraint FK_TB_SUPPLIERS_TB_SUPPLIER_02 foreign key (SUPPLIERS_ID)
  references DANGKOU.TB_SUPPLIERS (ID);

prompt
prompt Creating table TB_SUPPLIERS_RESOURCE_RE
prompt =======================================
prompt
create table DANGKOU.TB_SUPPLIERS_RESOURCE_RE
(
  id          NUMBER(8) not null,
  supplers_id NUMBER(8),
  type        NUMBER(8),
  guid        VARCHAR2(32),
  create_time DATE,
  create_user NUMBER(8),
  update_time DATE,
  update_user NUMBER(8)
)
tablespace DANGKOU_TBS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table DANGKOU.TB_SUPPLIERS_RESOURCE_RE
  is '供应商资源关联表';
comment on column DANGKOU.TB_SUPPLIERS_RESOURCE_RE.type
  is '1 单项 2 酒店 3 旅游线路';
alter table DANGKOU.TB_SUPPLIERS_RESOURCE_RE
  add constraint PK_TB_SUPPLIERS_RESOURCE_RE primary key (ID)
  using index 
  tablespace DANGKOU_TBS
  pctfree 10
  initrans 2
  maxtrans 255;
alter table DANGKOU.TB_SUPPLIERS_RESOURCE_RE
  add constraint FK_TB_SUPPLIERS_TB_SUPPLIER_05 foreign key (SUPPLERS_ID)
  references DANGKOU.TB_SUPPLIERS (ID);

prompt
prompt Creating table TB_SUPPLIERS_SINGLE
prompt ==================================
prompt
create table DANGKOU.TB_SUPPLIERS_SINGLE
(
  id           NUMBER(8) not null,
  name         VARCHAR2(200) not null,
  valid        NUMBER(8),
  type         NUMBER(8),
  min_quantity NUMBER(8),
  max_quantity NUMBER(8),
  advance_days NUMBER(8),
  advance_time NUMBER(8),
  descriptions VARCHAR2(50),
  book_rules   VARCHAR2(2000),
  back_rules   VARCHAR2(2000),
  guid         VARCHAR2(32),
  suppliers_id NUMBER(8),
  resource_id  NUMBER(8),
  create_user  NUMBER(8),
  create_time  DATE,
  update_user  NUMBER(8),
  update_time  DATE
)
tablespace DANGKOU_TBS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table DANGKOU.TB_SUPPLIERS_SINGLE
  is '供应商单项';
comment on column DANGKOU.TB_SUPPLIERS_SINGLE.name
  is '名称';
comment on column DANGKOU.TB_SUPPLIERS_SINGLE.valid
  is '1 有效 0 无效';
comment on column DANGKOU.TB_SUPPLIERS_SINGLE.type
  is 'supplers_single_type 数据字典';
comment on column DANGKOU.TB_SUPPLIERS_SINGLE.max_quantity
  is '最大预定份数';
comment on column DANGKOU.TB_SUPPLIERS_SINGLE.advance_days
  is '提前预定天数';
comment on column DANGKOU.TB_SUPPLIERS_SINGLE.advance_time
  is '提前预定时间';
comment on column DANGKOU.TB_SUPPLIERS_SINGLE.descriptions
  is '资源说明';
comment on column DANGKOU.TB_SUPPLIERS_SINGLE.resource_id
  is '资源id';
alter table DANGKOU.TB_SUPPLIERS_SINGLE
  add constraint PK_TB_SUPPLIERS_SINGLE_ID primary key (ID)
  using index 
  tablespace DANGKOU_TBS
  pctfree 10
  initrans 2
  maxtrans 255;
alter table DANGKOU.TB_SUPPLIERS_SINGLE
  add constraint FK_TB_SUPPLIERS_TB_SUPPLIER_06 foreign key (RESOURCE_ID)
  references DANGKOU.TB_SUPPLIERS_RESOURCE_RE (ID);

prompt
prompt Creating table TB_SYS
prompt =====================
prompt
create table DANGKOU.TB_SYS
(
  id          NUMBER(8) not null,
  sys_name    VARCHAR2(100),
  sys_code    VARCHAR2(50),
  sys_type    VARCHAR2(50),
  create_user NUMBER(8),
  create_time DATE,
  update_user NUMBER(8),
  update_time DATE
)
tablespace DANGKOU_TBS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table DANGKOU.TB_SYS
  is '系统表';
comment on column DANGKOU.TB_SYS.id
  is '主键';
comment on column DANGKOU.TB_SYS.sys_name
  is '系统名称';
comment on column DANGKOU.TB_SYS.sys_code
  is '系统编码';
comment on column DANGKOU.TB_SYS.sys_type
  is '系统类型';
comment on column DANGKOU.TB_SYS.create_user
  is '创建人';
comment on column DANGKOU.TB_SYS.create_time
  is '创建时间';
comment on column DANGKOU.TB_SYS.update_user
  is '修改人';
comment on column DANGKOU.TB_SYS.update_time
  is '修改时间';
alter table DANGKOU.TB_SYS
  add constraint PK_TB_SYS primary key (ID)
  using index 
  tablespace DANGKOU_TBS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table TB_SYS_CONFIG
prompt ============================
prompt
create table DANGKOU.TB_SYS_CONFIG
(
  id            NUMBER(8) not null,
  sys_type      NUMBER(8),
  location_name VARCHAR2(50),
  location_code VARCHAR2(50),
  location_type NUMBER(8),
  valid         NUMBER(8),
  remark        VARCHAR2(200),
  create_user   NUMBER(8),
  create_time   DATE,
  update_user   NUMBER(8),
  update_time   DATE
)
tablespace DANGKOU_TBS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table DANGKOU.TB_SYS_CONFIG
  is '系统配置表';
comment on column DANGKOU.TB_SYS_CONFIG.id
  is '主建';
comment on column DANGKOU.TB_SYS_CONFIG.sys_type
  is '所属系统';
comment on column DANGKOU.TB_SYS_CONFIG.location_name
  is '位置名称';
comment on column DANGKOU.TB_SYS_CONFIG.location_code
  is '位置代码';
comment on column DANGKOU.TB_SYS_CONFIG.location_type
  is '位置类型 1图文链接 2产品推荐 3搜索管理字';
comment on column DANGKOU.TB_SYS_CONFIG.valid
  is '是否有效 1有效 0无效';
comment on column DANGKOU.TB_SYS_CONFIG.remark
  is '备注';
comment on column DANGKOU.TB_SYS_CONFIG.create_user
  is '创建人';
comment on column DANGKOU.TB_SYS_CONFIG.create_time
  is '创建时间';
comment on column DANGKOU.TB_SYS_CONFIG.update_user
  is '修改人';
comment on column DANGKOU.TB_SYS_CONFIG.update_time
  is '修改时间';
alter table DANGKOU.TB_SYS_CONFIG
  add constraint PK_TB_SYS_CONFIG primary key (ID)
  using index 
  tablespace DANGKOU_TBS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TB_SYS_CONFIG_KEYWORD
prompt ====================================
prompt
create table DANGKOU.TB_SYS_CONFIG_KEYWORD
(
  id            NUMBER(8) not null,
  keyword_id    NUMBER(8) not null,
  sys_config_id NUMBER(8) not null,
  ord           NUMBER(8),
  create_user   NUMBER(8),
  create_time   DATE,
  update_user   NUMBER(8),
  update_time   DATE
)
tablespace DANGKOU_TBS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table DANGKOU.TB_SYS_CONFIG_KEYWORD
  is '系统配置-搜索关键字关联表';
comment on column DANGKOU.TB_SYS_CONFIG_KEYWORD.id
  is '主键';
comment on column DANGKOU.TB_SYS_CONFIG_KEYWORD.keyword_id
  is '关键字ID';
comment on column DANGKOU.TB_SYS_CONFIG_KEYWORD.sys_config_id
  is '系统配置ID';
comment on column DANGKOU.TB_SYS_CONFIG_KEYWORD.ord
  is '排序';
comment on column DANGKOU.TB_SYS_CONFIG_KEYWORD.create_user
  is '创建人';
comment on column DANGKOU.TB_SYS_CONFIG_KEYWORD.create_time
  is '创建时间';
comment on column DANGKOU.TB_SYS_CONFIG_KEYWORD.update_user
  is '修改人';
comment on column DANGKOU.TB_SYS_CONFIG_KEYWORD.update_time
  is '修改时间';
alter table DANGKOU.TB_SYS_CONFIG_KEYWORD
  add constraint PK_TB_BUSS_SYS_CONFIG_KEYWORD primary key (ID)
  using index 
  tablespace DANGKOU_TBS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table TB_SYS_CONFIG_PIC
prompt ================================
prompt
create table DANGKOU.TB_SYS_CONFIG_PIC
(
  id            NUMBER(8) not null,
  sys_config_id NUMBER(8) not null,
  title         VARCHAR2(200),
  sub_title     VARCHAR2(200),
  pic_size      VARCHAR2(50),
  url           VARCHAR2(1000),
  start_time    DATE,
  end_time      DATE,
  ord           NUMBER(2),
  material_id   NUMBER(8),
  create_user   NUMBER(8),
  create_time   DATE,
  update_user   NUMBER(8),
  update_time   DATE
)
tablespace DANGKOU_TBS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table DANGKOU.TB_SYS_CONFIG_PIC
  is '系统配置-图文链接表';
comment on column DANGKOU.TB_SYS_CONFIG_PIC.id
  is '主键';
comment on column DANGKOU.TB_SYS_CONFIG_PIC.sys_config_id
  is '系统配置ID';
comment on column DANGKOU.TB_SYS_CONFIG_PIC.title
  is '标题';
comment on column DANGKOU.TB_SYS_CONFIG_PIC.sub_title
  is '副标题';
comment on column DANGKOU.TB_SYS_CONFIG_PIC.pic_size
  is '尺寸';
comment on column DANGKOU.TB_SYS_CONFIG_PIC.url
  is '图片连接';
comment on column DANGKOU.TB_SYS_CONFIG_PIC.start_time
  is '有效期开始时间';
comment on column DANGKOU.TB_SYS_CONFIG_PIC.end_time
  is '有效期结束时间';
comment on column DANGKOU.TB_SYS_CONFIG_PIC.ord
  is '排序';
comment on column DANGKOU.TB_SYS_CONFIG_PIC.material_id
  is '素材图片ID';
comment on column DANGKOU.TB_SYS_CONFIG_PIC.create_user
  is '创建人';
comment on column DANGKOU.TB_SYS_CONFIG_PIC.create_time
  is '创建时间';
comment on column DANGKOU.TB_SYS_CONFIG_PIC.update_user
  is '修改人';
comment on column DANGKOU.TB_SYS_CONFIG_PIC.update_time
  is '修改时间';
alter table DANGKOU.TB_SYS_CONFIG_PIC
  add constraint PK_TB_CONTENT_CONFIG primary key (ID)
  using index 
  tablespace DANGKOU_TBS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TB_SYS_CONFIG_PRODUCT
prompt ====================================
prompt
create table DANGKOU.TB_SYS_CONFIG_PRODUCT
(
  id            NUMBER(8) not null,
  sys_config_id NUMBER(8) not null,
  product_id    NUMBER(8) not null,
  create_user   VARCHAR2(50),
  create_time   NUMBER(8),
  update_user   VARCHAR2(50),
  update_time   NUMBER(8)
)
tablespace DANGKOU_TBS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table DANGKOU.TB_SYS_CONFIG_PRODUCT
  is '系统配置-产品关联表';
comment on column DANGKOU.TB_SYS_CONFIG_PRODUCT.id
  is '主键';
comment on column DANGKOU.TB_SYS_CONFIG_PRODUCT.sys_config_id
  is '系统配置ID';
comment on column DANGKOU.TB_SYS_CONFIG_PRODUCT.product_id
  is '产品ID';
comment on column DANGKOU.TB_SYS_CONFIG_PRODUCT.create_user
  is '创建人';
comment on column DANGKOU.TB_SYS_CONFIG_PRODUCT.create_time
  is '创建时间';
comment on column DANGKOU.TB_SYS_CONFIG_PRODUCT.update_user
  is '修改人';
comment on column DANGKOU.TB_SYS_CONFIG_PRODUCT.update_time
  is '修改时间';
alter table DANGKOU.TB_SYS_CONFIG_PRODUCT
  add constraint PK_TB_BUSS_SYS_CONFIG_PRODUCT primary key (ID)
  using index 
  tablespace DANGKOU_TBS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table TB_SYS_NOTICE
prompt ============================
prompt
create table DANGKOU.TB_SYS_NOTICE
(
  id             NUMBER(8) not null,
  notice_type    NUMBER(8),
  notice_subject VARCHAR2(100),
  notice_content VARCHAR2(2000),
  member_id      NUMBER(8),
  read_status    NUMBER(8),
  create_user    NUMBER(8),
  create_time    DATE,
  update_user    NUMBER(8),
  update_time    DATE
)
tablespace DANGKOU_TBS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table DANGKOU.TB_SYS_NOTICE
  is '系统通知表';
comment on column DANGKOU.TB_SYS_NOTICE.id
  is '主键';
comment on column DANGKOU.TB_SYS_NOTICE.notice_type
  is '通知类型';
comment on column DANGKOU.TB_SYS_NOTICE.notice_subject
  is '通知主题';
comment on column DANGKOU.TB_SYS_NOTICE.notice_content
  is '通知内容';
comment on column DANGKOU.TB_SYS_NOTICE.member_id
  is '会员id';
comment on column DANGKOU.TB_SYS_NOTICE.read_status
  is '是否已读';
comment on column DANGKOU.TB_SYS_NOTICE.create_user
  is '创建人';
comment on column DANGKOU.TB_SYS_NOTICE.create_time
  is '创建时间';
comment on column DANGKOU.TB_SYS_NOTICE.update_user
  is '修改人';
comment on column DANGKOU.TB_SYS_NOTICE.update_time
  is '修改时间';
alter table DANGKOU.TB_SYS_NOTICE
  add constraint PK_TB_SYS_NOTICE primary key (ID)
  using index 
  tablespace DANGKOU_TBS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table TB_TRAVEL_NOTES
prompt ==============================
prompt
create table DANGKOU.TB_TRAVEL_NOTES
(
  id                NUMBER(8) not null,
  title             VARCHAR2(250),
  author_name       VARCHAR2(200),
  type              NUMBER(8),
  covers_image_url  VARCHAR2(300),
  covers_image_name VARCHAR2(200),
  departure_date    DATE,
  fee               VARCHAR2(100),
  persons           VARCHAR2(200),
  days              VARCHAR2(50),
  valid             NUMBER(8),
  status            NUMBER(8),
  publish_date      DATE,
  reviewed_user     NUMBER(8),
  create_user_type  NUMBER(8),
  read_count        NUMBER(8),
  create_time       DATE,
  create_user       NUMBER(8),
  update_time       DATE,
  update_user       NUMBER(8)
)
tablespace DANGKOU_TBS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table DANGKOU.TB_TRAVEL_NOTES
  is '游记攻略';
comment on column DANGKOU.TB_TRAVEL_NOTES.type
  is '1 游记 2 攻略';
comment on column DANGKOU.TB_TRAVEL_NOTES.covers_image_url
  is '封面图片地址';
comment on column DANGKOU.TB_TRAVEL_NOTES.covers_image_name
  is '封面图片';
comment on column DANGKOU.TB_TRAVEL_NOTES.departure_date
  is '出发时间';
comment on column DANGKOU.TB_TRAVEL_NOTES.fee
  is '人均费用';
comment on column DANGKOU.TB_TRAVEL_NOTES.persons
  is '人物';
comment on column DANGKOU.TB_TRAVEL_NOTES.days
  is '出行天数';
comment on column DANGKOU.TB_TRAVEL_NOTES.valid
  is '1 有效 0 无效';
comment on column DANGKOU.TB_TRAVEL_NOTES.status
  is '1 未审核 2 已审核 3 未通过';
comment on column DANGKOU.TB_TRAVEL_NOTES.publish_date
  is '发表时间';
comment on column DANGKOU.TB_TRAVEL_NOTES.reviewed_user
  is '审核人';
comment on column DANGKOU.TB_TRAVEL_NOTES.create_user_type
  is '创建人类别：1、是会员；2、是后台人员';
alter table DANGKOU.TB_TRAVEL_NOTES
  add constraint PK_ARTITLE primary key (ID)
  using index 
  tablespace DANGKOU_TBS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TB_TRAVEL_NOTES_COMMENT
prompt ======================================
prompt
create table DANGKOU.TB_TRAVEL_NOTES_COMMENT
(
  id            NUMBER(8) not null,
  travelnote_id NUMBER(8),
  comments      VARCHAR2(2000),
  comment_user  NUMBER(8),
  comment_time  DATE,
  update_user   NUMBER(8),
  update_time   DATE,
  valid         NUMBER(8)
)
tablespace DANGKOU_TBS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table DANGKOU.TB_TRAVEL_NOTES_COMMENT
  is '游记攻略评论';
comment on column DANGKOU.TB_TRAVEL_NOTES_COMMENT.id
  is '主键';
comment on column DANGKOU.TB_TRAVEL_NOTES_COMMENT.travelnote_id
  is '游记攻略ID';
comment on column DANGKOU.TB_TRAVEL_NOTES_COMMENT.comments
  is '点评内容';
comment on column DANGKOU.TB_TRAVEL_NOTES_COMMENT.comment_user
  is '点评人';
comment on column DANGKOU.TB_TRAVEL_NOTES_COMMENT.comment_time
  is '点评时间';
comment on column DANGKOU.TB_TRAVEL_NOTES_COMMENT.update_user
  is '修改人';
comment on column DANGKOU.TB_TRAVEL_NOTES_COMMENT.update_time
  is '修改时间';
comment on column DANGKOU.TB_TRAVEL_NOTES_COMMENT.valid
  is '是否有效';
alter table DANGKOU.TB_TRAVEL_NOTES_COMMENT
  add constraint PK_TB_TRAVEL_NOTES_COMMENT primary key (ID)
  using index 
  tablespace DANGKOU_TBS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TB_TRAVEL_NOTES_COMMENT_FILE
prompt ===========================================
prompt
create table DANGKOU.TB_TRAVEL_NOTES_COMMENT_FILE
(
  id          NUMBER(8) not null,
  comment_id  NUMBER(8),
  file_name   VARCHAR2(50),
  file_url    VARCHAR2(50),
  create_user NUMBER(8,2),
  create_time DATE,
  update_user NUMBER(8,2),
  update_time DATE
)
tablespace DANGKOU_TBS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table DANGKOU.TB_TRAVEL_NOTES_COMMENT_FILE
  is '游记攻略评论图片';
comment on column DANGKOU.TB_TRAVEL_NOTES_COMMENT_FILE.id
  is '主键';
comment on column DANGKOU.TB_TRAVEL_NOTES_COMMENT_FILE.comment_id
  is '外键';
comment on column DANGKOU.TB_TRAVEL_NOTES_COMMENT_FILE.file_name
  is '附件名称';
comment on column DANGKOU.TB_TRAVEL_NOTES_COMMENT_FILE.file_url
  is '附件地址';
comment on column DANGKOU.TB_TRAVEL_NOTES_COMMENT_FILE.create_user
  is '创建人';
comment on column DANGKOU.TB_TRAVEL_NOTES_COMMENT_FILE.create_time
  is '创建时间';
comment on column DANGKOU.TB_TRAVEL_NOTES_COMMENT_FILE.update_user
  is '修改人';
comment on column DANGKOU.TB_TRAVEL_NOTES_COMMENT_FILE.update_time
  is '修改时间';
alter table DANGKOU.TB_TRAVEL_NOTES_COMMENT_FILE
  add constraint PK_TB_TRAVEL_NOTES_COMMEN_01 primary key (ID)
  using index 
  tablespace DANGKOU_TBS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table TB_TRAVEL_NOTES_DETAILS
prompt ======================================
prompt
create table DANGKOU.TB_TRAVEL_NOTES_DETAILS
(
  id              NUMBER(8) not null,
  words           CLOB,
  url             VARCHAR2(300),
  file_name       VARCHAR2(50),
  type            VARCHAR2(50),
  title           VARCHAR2(500),
  travel_notes_id NUMBER(8),
  sort_index      NUMBER(8),
  guid            VARCHAR2(50),
  create_user     NUMBER(8),
  create_time     DATE,
  update_user     NUMBER(8),
  update_time     DATE
)
tablespace DANGKOU_TBS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table DANGKOU.TB_TRAVEL_NOTES_DETAILS
  is '游记攻略详情';
comment on column DANGKOU.TB_TRAVEL_NOTES_DETAILS.words
  is '文字';
comment on column DANGKOU.TB_TRAVEL_NOTES_DETAILS.url
  is '图片、视频、音频等链接地址';
comment on column DANGKOU.TB_TRAVEL_NOTES_DETAILS.file_name
  is '文件名称';
comment on column DANGKOU.TB_TRAVEL_NOTES_DETAILS.type
  is '1 文字 2 图片 3 语音 4 视频 5 标题';
comment on column DANGKOU.TB_TRAVEL_NOTES_DETAILS.title
  is '段落标题';
comment on column DANGKOU.TB_TRAVEL_NOTES_DETAILS.sort_index
  is '顺序';
alter table DANGKOU.TB_TRAVEL_NOTES_DETAILS
  add constraint PK_TB_TRAVEL_NOTES_DETAILS primary key (ID)
  using index 
  tablespace DANGKOU_TBS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table DANGKOU.TB_TRAVEL_NOTES_DETAILS
  add constraint FK_TB_TRAVEL_NO_TB_TRAVEL_N_01 foreign key (TRAVEL_NOTES_ID)
  references DANGKOU.TB_TRAVEL_NOTES (ID);

prompt
prompt Creating table TB_USER_LOG
prompt ==========================
prompt
create table DANGKOU.TB_USER_LOG
(
  id          NUMBER(8) not null,
  operated_id NUMBER(8),
  opt_type    NUMBER(8),
  opt_time    DATE,
  opt_by      NUMBER(8)
)
tablespace DANGKOU_TBS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table DANGKOU.TB_USER_LOG
  is '用户操作日志表';
comment on column DANGKOU.TB_USER_LOG.operated_id
  is '被操作用户';
comment on column DANGKOU.TB_USER_LOG.opt_type
  is '操作类型';
comment on column DANGKOU.TB_USER_LOG.opt_time
  is '操作时间';
comment on column DANGKOU.TB_USER_LOG.opt_by
  is '操作人';
alter table DANGKOU.TB_USER_LOG
  add constraint PK_TB_USER_LOG primary key (ID)
  using index 
  tablespace DANGKOU_TBS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table TB_VERSION_RECORD
prompt ================================
prompt
create table DANGKOU.TB_VERSION_RECORD
(
  id          NUMBER(8) not null,
  app_name    VARCHAR2(500),
  app_type    NUMBER(8),
  app_version VARCHAR2(100),
  app_url     VARCHAR2(500),
  is_valid    NUMBER(8),
  remark      VARCHAR2(1000),
  create_time DATE,
  create_user NUMBER(8),
  update_time DATE,
  update_user NUMBER(8)
)
tablespace DANGKOU_TBS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table DANGKOU.TB_VERSION_RECORD
  is '版本控制表';
comment on column DANGKOU.TB_VERSION_RECORD.id
  is '主键';
comment on column DANGKOU.TB_VERSION_RECORD.app_name
  is '应用名称';
comment on column DANGKOU.TB_VERSION_RECORD.app_type
  is '应该类型 1安卓 2 IOS';
comment on column DANGKOU.TB_VERSION_RECORD.app_version
  is '版本号';
comment on column DANGKOU.TB_VERSION_RECORD.app_url
  is '下载地址';
comment on column DANGKOU.TB_VERSION_RECORD.is_valid
  is '是否有效  0无效 1 有效';
comment on column DANGKOU.TB_VERSION_RECORD.remark
  is '描述';
comment on column DANGKOU.TB_VERSION_RECORD.create_time
  is '创建时间';
comment on column DANGKOU.TB_VERSION_RECORD.create_user
  is '创建人';
comment on column DANGKOU.TB_VERSION_RECORD.update_time
  is '修改时间';
comment on column DANGKOU.TB_VERSION_RECORD.update_user
  is '修改人';
alter table DANGKOU.TB_VERSION_RECORD
  add constraint PK_TB_VERSION_RECORD primary key (ID)
  using index 
  tablespace DANGKOU_TBS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating sequence SEQ_SCENIC_SELLER_SUPPLIERS_RE
prompt ================================================
prompt
create sequence DANGKOU.SEQ_SCENIC_SELLER_SUPPLIERS_RE
minvalue 1
maxvalue 999999999
start with 1
increment by 1
cache 20
order;

prompt
prompt Creating sequence SEQ_TB_AUTH_DEPARTMENT
prompt ========================================
prompt
create sequence DANGKOU.SEQ_TB_AUTH_DEPARTMENT
minvalue 2
maxvalue 999999999
start with 2
increment by 1
cache 20
order;

prompt
prompt Creating sequence SEQ_TB_AUTH_PERMISSION
prompt ========================================
prompt
create sequence DANGKOU.SEQ_TB_AUTH_PERMISSION
minvalue 209
maxvalue 999999999
start with 469
increment by 1
cache 20
order;

prompt
prompt Creating sequence SEQ_TB_AUTH_RESOURCE
prompt ======================================
prompt
create sequence DANGKOU.SEQ_TB_AUTH_RESOURCE
minvalue 296
maxvalue 999999999
start with 298
increment by 1
cache 20
order;

prompt
prompt Creating sequence SEQ_TB_AUTH_ROLE
prompt ==================================
prompt
create sequence DANGKOU.SEQ_TB_AUTH_ROLE
minvalue 2
maxvalue 999999999
start with 2
increment by 1
cache 20
order;

prompt
prompt Creating sequence SEQ_TB_AUTH_USER
prompt ==================================
prompt
create sequence DANGKOU.SEQ_TB_AUTH_USER
minvalue 3
maxvalue 999999999
start with 3
increment by 1
cache 20
order;

prompt
prompt Creating sequence SEQ_TB_AUTH_USERROLE
prompt ======================================
prompt
create sequence DANGKOU.SEQ_TB_AUTH_USERROLE
minvalue 2
maxvalue 999999999
start with 2
increment by 1
cache 20
order;

prompt
prompt Creating sequence SEQ_TB_BROWSER_HISTORY
prompt ========================================
prompt
create sequence DANGKOU.SEQ_TB_BROWSER_HISTORY
minvalue 1
maxvalue 999999999
start with 1
increment by 1
cache 20
order;

prompt
prompt Creating sequence SEQ_TB_BUSI_NOTICE
prompt ====================================
prompt
create sequence DANGKOU.SEQ_TB_BUSI_NOTICE
minvalue 1
maxvalue 999999999
start with 41
increment by 1
cache 20
order;

prompt
prompt Creating sequence SEQ_TB_BUSI_PICTURE_LIB
prompt =========================================
prompt
create sequence DANGKOU.SEQ_TB_BUSI_PICTURE_LIB
minvalue 1
maxvalue 999999999
start with 81
increment by 1
cache 20
order;

prompt
prompt Creating sequence SEQ_TB_BUSI_SELLER
prompt ====================================
prompt
create sequence DANGKOU.SEQ_TB_BUSI_SELLER
minvalue 1
maxvalue 999999999
start with 41
increment by 1
cache 20
order;

prompt
prompt Creating sequence SEQ_TB_BUSI_SELLER_USER
prompt =========================================
prompt
create sequence DANGKOU.SEQ_TB_BUSI_SELLER_USER
minvalue 1
maxvalue 999999999
start with 31
increment by 1
cache 20
order;

prompt
prompt Creating sequence SEQ_TB_CITY
prompt =============================
prompt
create sequence DANGKOU.SEQ_TB_CITY
minvalue 691
maxvalue 999999999
start with 691
increment by 1
cache 20
order;

prompt
prompt Creating sequence SEQ_TB_CITY_AREA
prompt ==================================
prompt
create sequence DANGKOU.SEQ_TB_CITY_AREA
minvalue 1
maxvalue 999999999
start with 1
increment by 1
cache 20
order;

prompt
prompt Creating sequence SEQ_TB_CITY_LAND_MARK
prompt =======================================
prompt
create sequence DANGKOU.SEQ_TB_CITY_LAND_MARK
minvalue 1
maxvalue 999999999
start with 21
increment by 1
cache 20
order;

prompt
prompt Creating sequence SEQ_TB_COMMENTS
prompt =================================
prompt
create sequence DANGKOU.SEQ_TB_COMMENTS
minvalue 1
maxvalue 999999999
start with 1
increment by 1
cache 20
order;

prompt
prompt Creating sequence SEQ_TB_COMMENTS_IMAGE
prompt =======================================
prompt
create sequence DANGKOU.SEQ_TB_COMMENTS_IMAGE
minvalue 1
maxvalue 999999999
start with 1
increment by 1
cache 20
order;

prompt
prompt Creating sequence SEQ_TB_COMMENTS_OPTION
prompt ========================================
prompt
create sequence DANGKOU.SEQ_TB_COMMENTS_OPTION
minvalue 1
maxvalue 999999999
start with 1
increment by 1
cache 20
order;

prompt
prompt Creating sequence SEQ_TB_COMMENTS_SCORE_ITEMS
prompt =============================================
prompt
create sequence DANGKOU.SEQ_TB_COMMENTS_SCORE_ITEMS
minvalue 1
maxvalue 999999999
start with 1
increment by 1
cache 20
order;

prompt
prompt Creating sequence SEQ_TB_COMMENT_OPTION
prompt =======================================
prompt
create sequence DANGKOU.SEQ_TB_COMMENT_OPTION
minvalue 1
maxvalue 999999999
start with 1
increment by 1
cache 20
order;

prompt
prompt Creating sequence SEQ_TB_COMMENT_REASON
prompt =======================================
prompt
create sequence DANGKOU.SEQ_TB_COMMENT_REASON
minvalue 1
maxvalue 999999999
start with 1
increment by 1
cache 20
order;

prompt
prompt Creating sequence SEQ_TB_COMMENT_TOPIC
prompt ======================================
prompt
create sequence DANGKOU.SEQ_TB_COMMENT_TOPIC
minvalue 1
maxvalue 999999999
start with 1
increment by 1
cache 20
order;

prompt
prompt Creating sequence SEQ_TB_COUNTRY
prompt ================================
prompt
create sequence DANGKOU.SEQ_TB_COUNTRY
minvalue 2
maxvalue 999999999
start with 2
increment by 1
cache 20
order;

prompt
prompt Creating sequence SEQ_TB_DICTIONARY
prompt ===================================
prompt
create sequence DANGKOU.SEQ_TB_DICTIONARY
minvalue 276
maxvalue 999999999
start with 301
increment by 1
cache 20
order;

prompt
prompt Creating sequence SEQ_TB_HISTORY_SEARCH
prompt =======================================
prompt
create sequence DANGKOU.SEQ_TB_HISTORY_SEARCH
minvalue 1
maxvalue 999999999
start with 155
increment by 1
cache 20
order;

prompt
prompt Creating sequence SEQ_TB_KEYWORD
prompt ================================
prompt
create sequence DANGKOU.SEQ_TB_KEYWORD
minvalue 1
maxvalue 999999999
start with 21
increment by 1
cache 20
order;

prompt
prompt Creating sequence SEQ_TB_KEYWORD_REF
prompt ====================================
prompt
create sequence DANGKOU.SEQ_TB_KEYWORD_REF
minvalue 1
maxvalue 999999999
start with 26
increment by 1
cache 20
order;

prompt
prompt Creating sequence SEQ_TB_MATERIAL
prompt =================================
prompt
create sequence DANGKOU.SEQ_TB_MATERIAL
minvalue 1
maxvalue 999999999
start with 21
increment by 1
cache 20
order;

prompt
prompt Creating sequence SEQ_TB_MATERIAL_AUTHORIZED
prompt ============================================
prompt
create sequence DANGKOU.SEQ_TB_MATERIAL_AUTHORIZED
minvalue 1
maxvalue 999999999
start with 1
increment by 1
cache 20
order;

prompt
prompt Creating sequence SEQ_TB_MEMBER_ADDRESS
prompt =======================================
prompt
create sequence DANGKOU.SEQ_TB_MEMBER_ADDRESS
minvalue 1
maxvalue 999999999
start with 1
increment by 1
cache 20
order;

prompt
prompt Creating sequence SEQ_TB_MEMBER_BASIC
prompt =====================================
prompt
create sequence DANGKOU.SEQ_TB_MEMBER_BASIC
minvalue 1
maxvalue 999999999
start with 61
increment by 1
cache 20
order;

prompt
prompt Creating sequence SEQ_TB_MEMBER_COLLECTION
prompt ==========================================
prompt
create sequence DANGKOU.SEQ_TB_MEMBER_COLLECTION
minvalue 1
maxvalue 999999999
start with 61
increment by 1
cache 20
order;

prompt
prompt Creating sequence SEQ_TB_MEMBER_DETAIL_INFO
prompt ===========================================
prompt
create sequence DANGKOU.SEQ_TB_MEMBER_DETAIL_INFO
minvalue 1
maxvalue 999999999
start with 81
increment by 1
cache 20
order;

prompt
prompt Creating sequence SEQ_TB_MEMBER_DOCUMENT
prompt ========================================
prompt
create sequence DANGKOU.SEQ_TB_MEMBER_DOCUMENT
minvalue 1
maxvalue 999999999
start with 61
increment by 1
cache 20
order;

prompt
prompt Creating sequence SEQ_TB_MEMBER_FEEDBACK
prompt ========================================
prompt
create sequence DANGKOU.SEQ_TB_MEMBER_FEEDBACK
minvalue 1
maxvalue 999999999
start with 1
increment by 1
cache 20
order;

prompt
prompt Creating sequence SEQ_TB_MEMBER_FEEDBACK_IMG
prompt ============================================
prompt
create sequence DANGKOU.SEQ_TB_MEMBER_FEEDBACK_IMG
minvalue 1
maxvalue 999999999
start with 1
increment by 1
cache 20
order;

prompt
prompt Creating sequence SEQ_TB_MEMBER_MSG
prompt ===================================
prompt
create sequence DANGKOU.SEQ_TB_MEMBER_MSG
minvalue 1
maxvalue 999999999
start with 351
increment by 1
cache 20
order;

prompt
prompt Creating sequence SEQ_TB_MEMBER_PASSENGER
prompt =========================================
prompt
create sequence DANGKOU.SEQ_TB_MEMBER_PASSENGER
minvalue 1
maxvalue 999999999
start with 1
increment by 1
cache 20
order;

prompt
prompt Creating sequence SEQ_TB_MEMBER_SHARED_ACCOUNT
prompt ==============================================
prompt
create sequence DANGKOU.SEQ_TB_MEMBER_SHARED_ACCOUNT
minvalue 1
maxvalue 999999999
start with 21
increment by 1
cache 20
order;

prompt
prompt Creating sequence SEQ_TB_MSG_SMS
prompt ================================
prompt
create sequence DANGKOU.SEQ_TB_MSG_SMS
minvalue 1
maxvalue 999999999
start with 62
increment by 1
cache 20
order;

prompt
prompt Creating sequence SEQ_TB_MSG_SMS_RECORD
prompt =======================================
prompt
create sequence DANGKOU.SEQ_TB_MSG_SMS_RECORD
minvalue 1
maxvalue 99999999
start with 435
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_TB_ORDER
prompt ==============================
prompt
create sequence DANGKOU.SEQ_TB_ORDER
minvalue 1
maxvalue 999999999
start with 242
increment by 1
cache 20
order;

prompt
prompt Creating sequence SEQ_TB_ORDER_CHARGEBACK_RECORD
prompt ================================================
prompt
create sequence DANGKOU.SEQ_TB_ORDER_CHARGEBACK_RECORD
minvalue 1
maxvalue 999999999
start with 81
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_TB_ORDER_INVOICE
prompt ======================================
prompt
create sequence DANGKOU.SEQ_TB_ORDER_INVOICE
minvalue 1
maxvalue 999999999
start with 63
increment by 1
cache 20
order;

prompt
prompt Creating sequence SEQ_TB_ORDER_LINKMAN_DOC
prompt ==========================================
prompt
create sequence DANGKOU.SEQ_TB_ORDER_LINKMAN_DOC
minvalue 1
maxvalue 999999999
start with 82
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_TB_ORDER_LINKMAN_REF
prompt ==========================================
prompt
create sequence DANGKOU.SEQ_TB_ORDER_LINKMAN_REF
minvalue 1
maxvalue 999999999
start with 102
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_TB_ORDER_MONEY_CHANGE_REC
prompt ===============================================
prompt
create sequence DANGKOU.SEQ_TB_ORDER_MONEY_CHANGE_REC
minvalue 1
maxvalue 999999999
start with 104
increment by 1
cache 20
order;

prompt
prompt Creating sequence SEQ_TB_ORDER_OPERATION_LOG
prompt ============================================
prompt
create sequence DANGKOU.SEQ_TB_ORDER_OPERATION_LOG
minvalue 283
maxvalue 999999999
start with 520
increment by 1
cache 20
order;

prompt
prompt Creating sequence SEQ_TB_ORDER_PAY_LOG
prompt ======================================
prompt
create sequence DANGKOU.SEQ_TB_ORDER_PAY_LOG
minvalue 1
maxvalue 99999999
start with 741
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_TB_ORDER_PAY_RECORD
prompt =========================================
prompt
create sequence DANGKOU.SEQ_TB_ORDER_PAY_RECORD
minvalue 1
maxvalue 999999999
start with 279
increment by 1
cache 20
order;

prompt
prompt Creating sequence SEQ_TB_ORDER_REFUND
prompt =====================================
prompt
create sequence DANGKOU.SEQ_TB_ORDER_REFUND
minvalue 1
maxvalue 99999999
start with 101
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_TB_ORDER_WRITEOFFCODE
prompt ===========================================
prompt
create sequence DANGKOU.SEQ_TB_ORDER_WRITEOFFCODE
minvalue 1
maxvalue 999999999
start with 235
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_TB_PAY_RECORD
prompt ===================================
prompt
create sequence DANGKOU.SEQ_TB_PAY_RECORD
minvalue 1
maxvalue 999999999
start with 1
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_TB_PICTURES
prompt =================================
prompt
create sequence DANGKOU.SEQ_TB_PICTURES
minvalue 1
maxvalue 999999999
start with 1
increment by 1
cache 20
order;

prompt
prompt Creating sequence SEQ_TB_POSITION
prompt =================================
prompt
create sequence DANGKOU.SEQ_TB_POSITION
minvalue 1
maxvalue 999999999
start with 21
increment by 1
cache 20
order;

prompt
prompt Creating sequence SEQ_TB_PRODUCT
prompt ================================
prompt
create sequence DANGKOU.SEQ_TB_PRODUCT
minvalue 1
maxvalue 999999999
start with 69
increment by 1
cache 20
order;

prompt
prompt Creating sequence SEQ_TB_PRODUCT_COMMENT
prompt ========================================
prompt
create sequence DANGKOU.SEQ_TB_PRODUCT_COMMENT
minvalue 1
maxvalue 999999999
start with 41
increment by 1
cache 20
order;

prompt
prompt Creating sequence SEQ_TB_PRODUCT_COMMENT_FILE
prompt =============================================
prompt
create sequence DANGKOU.SEQ_TB_PRODUCT_COMMENT_FILE
minvalue 1
maxvalue 999999999
start with 21
increment by 1
cache 20
order;

prompt
prompt Creating sequence SEQ_TB_PRODUCT_MEALS
prompt ======================================
prompt
create sequence DANGKOU.SEQ_TB_PRODUCT_MEALS
minvalue 1
maxvalue 999999999
start with 21
increment by 1
cache 20
order;

prompt
prompt Creating sequence SEQ_TB_PRODUCT_PIC_REL
prompt ========================================
prompt
create sequence DANGKOU.SEQ_TB_PRODUCT_PIC_REL
minvalue 1
maxvalue 999999999
start with 61
increment by 1
cache 20
order;

prompt
prompt Creating sequence SEQ_TB_PRODUCT_RESO_FLIGHT
prompt ============================================
prompt
create sequence DANGKOU.SEQ_TB_PRODUCT_RESO_FLIGHT
minvalue 1
maxvalue 999999999
start with 1
increment by 1
cache 20
order;

prompt
prompt Creating sequence SEQ_TB_PRODUCT_RESO_HOTEL
prompt ===========================================
prompt
create sequence DANGKOU.SEQ_TB_PRODUCT_RESO_HOTEL
minvalue 1
maxvalue 999999999
start with 1
increment by 1
cache 20
order;

prompt
prompt Creating sequence SEQ_TB_PRODUCT_RESO_REFER
prompt ===========================================
prompt
create sequence DANGKOU.SEQ_TB_PRODUCT_RESO_REFER
minvalue 1
maxvalue 999999999
start with 1
increment by 1
cache 20
order;

prompt
prompt Creating sequence SEQ_TB_PRODUCT_STOCK
prompt ======================================
prompt
create sequence DANGKOU.SEQ_TB_PRODUCT_STOCK
minvalue 1
maxvalue 999999999
start with 261
increment by 1
cache 20
order;

prompt
prompt Creating sequence SEQ_TB_PRODUCT_STOCK_LOG
prompt ==========================================
prompt
create sequence DANGKOU.SEQ_TB_PRODUCT_STOCK_LOG
minvalue 1
maxvalue 999999999
start with 41
increment by 1
cache 20
order;

prompt
prompt Creating sequence SEQ_TB_PROVINCE
prompt =================================
prompt
create sequence DANGKOU.SEQ_TB_PROVINCE
minvalue 32
maxvalue 999999999
start with 32
increment by 1
cache 20
order;

prompt
prompt Creating sequence SEQ_TB_PUSH_PRAISE
prompt ====================================
prompt
create sequence DANGKOU.SEQ_TB_PUSH_PRAISE
minvalue 1
maxvalue 999999999
start with 41
increment by 1
cache 20
order;

prompt
prompt Creating sequence SEQ_TB_RESOURCE_INVENTORYS
prompt ============================================
prompt
create sequence DANGKOU.SEQ_TB_RESOURCE_INVENTORYS
minvalue 1
maxvalue 999999999
start with 1
increment by 1
cache 20
order;

prompt
prompt Creating sequence SEQ_TB_RESOURCE_SALES_PRICE
prompt =============================================
prompt
create sequence DANGKOU.SEQ_TB_RESOURCE_SALES_PRICE
minvalue 1
maxvalue 999999999
start with 1
increment by 1
cache 20
order;

prompt
prompt Creating sequence SEQ_TB_SCENIC_SELLER
prompt ======================================
prompt
create sequence DANGKOU.SEQ_TB_SCENIC_SELLER
minvalue 1
maxvalue 999999999
start with 21
increment by 1
cache 20
order;

prompt
prompt Creating sequence SEQ_TB_SCENIC_SELLER_AUTH
prompt ===========================================
prompt
create sequence DANGKOU.SEQ_TB_SCENIC_SELLER_AUTH
minvalue 1
maxvalue 999999999
start with 1
increment by 1
cache 20
order;

prompt
prompt Creating sequence SEQ_TB_SCENIC_SELLER_SUPPLIERS
prompt ================================================
prompt
create sequence DANGKOU.SEQ_TB_SCENIC_SELLER_SUPPLIERS
minvalue 1
maxvalue 999999999
start with 1
increment by 1
cache 20
order;

prompt
prompt Creating sequence SEQ_TB_SCENIC_SELLER_SUP_RE
prompt =============================================
prompt
create sequence DANGKOU.SEQ_TB_SCENIC_SELLER_SUP_RE
minvalue 1
maxvalue 999999999
start with 1
increment by 1
cache 20
order;

prompt
prompt Creating sequence SEQ_TB_SHARES
prompt ===============================
prompt
create sequence DANGKOU.SEQ_TB_SHARES
minvalue 1
maxvalue 999999999
start with 1
increment by 1
cache 20
order;

prompt
prompt Creating sequence SEQ_TB_SUPPLIERS
prompt ==================================
prompt
create sequence DANGKOU.SEQ_TB_SUPPLIERS
minvalue 1
maxvalue 999999999
start with 1
increment by 1
cache 20
order;

prompt
prompt Creating sequence SEQ_TB_SUPPLIERS_CONTRACT
prompt ===========================================
prompt
create sequence DANGKOU.SEQ_TB_SUPPLIERS_CONTRACT
minvalue 1
maxvalue 999999999
start with 1
increment by 1
cache 20
order;

prompt
prompt Creating sequence SEQ_TB_SUPPLIERS_DEPARTMENT_RE
prompt ================================================
prompt
create sequence DANGKOU.SEQ_TB_SUPPLIERS_DEPARTMENT_RE
minvalue 1
maxvalue 999999999
start with 1
increment by 1
cache 20
order;

prompt
prompt Creating sequence SEQ_TB_SUPPLIERS_DOCUMENT
prompt ===========================================
prompt
create sequence DANGKOU.SEQ_TB_SUPPLIERS_DOCUMENT
minvalue 1
maxvalue 999999999
start with 21
increment by 1
cache 20
order;

prompt
prompt Creating sequence SEQ_TB_SUPPLIERS_PRODUCT_TYPE
prompt ===============================================
prompt
create sequence DANGKOU.SEQ_TB_SUPPLIERS_PRODUCT_TYPE
minvalue 1
maxvalue 999999999
start with 1
increment by 1
cache 20
order;

prompt
prompt Creating sequence SEQ_TB_SUPPLIERS_RESOURCE_RE
prompt ==============================================
prompt
create sequence DANGKOU.SEQ_TB_SUPPLIERS_RESOURCE_RE
minvalue 1
maxvalue 999999999
start with 1
increment by 1
cache 20
order;

prompt
prompt Creating sequence SEQ_TB_SUPPLIERS_SINGLE
prompt =========================================
prompt
create sequence DANGKOU.SEQ_TB_SUPPLIERS_SINGLE
minvalue 1
maxvalue 999999999
start with 1
increment by 1
cache 20
order;

prompt
prompt Creating sequence SEQ_TB_SYS
prompt ============================
prompt
create sequence DANGKOU.SEQ_TB_SYS
minvalue 1
maxvalue 999999999
start with 1
increment by 1
cache 20
order;

prompt
prompt Creating sequence SEQ_TB_SYS_CONFIG
prompt ===================================
prompt
create sequence DANGKOU.SEQ_TB_SYS_CONFIG
minvalue 1
maxvalue 999999999
start with 21
increment by 1
cache 20
order;

prompt
prompt Creating sequence SEQ_TB_SYS_CONFIG_KEYWORD
prompt ===========================================
prompt
create sequence DANGKOU.SEQ_TB_SYS_CONFIG_KEYWORD
minvalue 1
maxvalue 999999999
start with 1
increment by 1
cache 20
order;

prompt
prompt Creating sequence SEQ_TB_SYS_CONFIG_PIC
prompt =======================================
prompt
create sequence DANGKOU.SEQ_TB_SYS_CONFIG_PIC
minvalue 1
maxvalue 999999999
start with 21
increment by 1
cache 20
order;

prompt
prompt Creating sequence SEQ_TB_SYS_CONFIG_PRODUCT
prompt ===========================================
prompt
create sequence DANGKOU.SEQ_TB_SYS_CONFIG_PRODUCT
minvalue 1
maxvalue 999999999
start with 1
increment by 1
cache 20
order;

prompt
prompt Creating sequence SEQ_TB_SYS_NOTICE
prompt ===================================
prompt
create sequence DANGKOU.SEQ_TB_SYS_NOTICE
minvalue 1
maxvalue 999999999
start with 1
increment by 1
cache 20
order;

prompt
prompt Creating sequence SEQ_TB_TRAVELNOTES_COMMENTFILE
prompt ================================================
prompt
create sequence DANGKOU.SEQ_TB_TRAVELNOTES_COMMENTFILE
minvalue 1
maxvalue 999999999
start with 1
increment by 1
cache 20
order;

prompt
prompt Creating sequence SEQ_TB_TRAVEL_NOTES
prompt =====================================
prompt
create sequence DANGKOU.SEQ_TB_TRAVEL_NOTES
minvalue 1
maxvalue 999999999
start with 41
increment by 1
cache 20
order;

prompt
prompt Creating sequence SEQ_TB_TRAVEL_NOTES_COMMENT
prompt =============================================
prompt
create sequence DANGKOU.SEQ_TB_TRAVEL_NOTES_COMMENT
minvalue 1
maxvalue 999999999
start with 21
increment by 1
cache 20
order;

prompt
prompt Creating sequence SEQ_TB_TRAVEL_NOTES_DETAILS
prompt =============================================
prompt
create sequence DANGKOU.SEQ_TB_TRAVEL_NOTES_DETAILS
minvalue 1
maxvalue 999999999
start with 6
increment by 1
cache 20
order;

prompt
prompt Creating sequence SEQ_TB_USER_LOG
prompt =================================
prompt
create sequence DANGKOU.SEQ_TB_USER_LOG
minvalue 1
maxvalue 999999999
start with 1
increment by 1
cache 20
order;

prompt
prompt Creating sequence SEQ_TB_VERSION_RECORD
prompt =======================================
prompt
create sequence DANGKOU.SEQ_TB_VERSION_RECORD
minvalue 1
maxvalue 999999999
start with 21
increment by 1
cache 20
order;


spool off
