set names utf8;
drop database if exists zszq;
create database zszq charset=utf8;
use zszq;

/**用户信息**/
create table zs_user(
	u_id int primary key auto_increment,
	u_name varchar(32),
	u_pwd varchar(32),
	u_account varchar(64),                  #资金账号
	u_phone varchar(16)
);

/**首页轮播图**/
create table zs_carousel(
	cid  int primary key auto_increment,
	img varchar(64),
	title varchar(32),
	url varchar(128)
);

/**理财产品**/
create table zs_product(
	p_id int primary key auto_increment,
	p_name varchar(32),                      #产品名称
	p_code varchar(32),                      #产品代码
	p_TimeLimit varchar(64),                 #期限
	p_price DECIMAL(10,2),                   #产品价格
	p_RiskLevel varchar(32),                 #风险等级
	p_institutions varchar(32)               #机构
	is_onsale BOOLEAN                        #出售状态 
);
