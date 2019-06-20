set names utf8;
drop database if exists zszq;
create database zszq charset=utf8;
use zszq;

/**�û���Ϣ**/
create table zs_user(
	u_id int primary key auto_increment,
	u_name varchar(32),
	u_pwd varchar(32),
	u_account varchar(64),                  #�ʽ��˺�
	u_phone varchar(16)
);

/**��ҳ�ֲ�ͼ**/
create table zs_carousel(
	cid  int primary key auto_increment,
	img varchar(64),
	title varchar(32),
	url varchar(128)
);

/**��Ʋ�Ʒ**/
create table zs_product(
	p_id int primary key auto_increment,
	p_name varchar(32),                      #��Ʒ����
	p_code varchar(32),                      #��Ʒ����
	p_TimeLimit varchar(64),                 #����
	p_price DECIMAL(10,2),                   #��Ʒ�۸�
	p_RiskLevel varchar(32),                 #���յȼ�
	p_institutions varchar(32)               #����
	is_onsale BOOLEAN                        #����״̬ 
);
