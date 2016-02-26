/*
SQLyog Enterprise - MySQL GUI v8.1 
MySQL - 5.6.21-enterprise-commercial-advanced-log : Database - 1yyg
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*Table structure for table `applymention` */

DROP TABLE IF EXISTS `applymention`;

CREATE TABLE `applymention` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(20) DEFAULT NULL,
  `money` double(10,2) DEFAULT '0.00',
  `fee` double(10,2) DEFAULT '0.00',
  `bankName` varchar(100) DEFAULT NULL COMMENT '银行名称',
  `bankUser` varchar(20) DEFAULT NULL COMMENT '开  户 人',
  `bankSubbranch` varchar(100) DEFAULT NULL COMMENT '开户支行',
  `bankNo` varchar(30) DEFAULT NULL COMMENT '银行帐号',
  `phone` varchar(20) DEFAULT NULL COMMENT '联系电话',
  `userId` int(11) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `applymention` */

/*Table structure for table `auctionproduct` */

DROP TABLE IF EXISTS `auctionproduct`;

CREATE TABLE `auctionproduct` (
  `auctionProductId` int(11) NOT NULL AUTO_INCREMENT,
  `fkProductId` int(11) NOT NULL COMMENT '商品id',
  `auctionStartDate` varchar(20) NOT NULL COMMENT '开始竞拍时间  yyyyMMddHHmmss ',
  `auctionEndDate` varchar(20) NOT NULL COMMENT '竞拍结束时间   yyyyMMddHHmmss',
  `auctionCount` varchar(15) NOT NULL COMMENT '拍购总人数',
  `Attribute_62` varchar(10) DEFAULT NULL,
  `Attribute_63` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`auctionProductId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='竞拍商品表';

/*Data for the table `auctionproduct` */

/*Table structure for table `auctionrecord` */

DROP TABLE IF EXISTS `auctionrecord`;

CREATE TABLE `auctionrecord` (
  `auctionRecordId` int(11) NOT NULL AUTO_INCREMENT,
  `fkAuctionProductId` int(11) NOT NULL COMMENT '竞拍商品id',
  `bidder` int(11) NOT NULL COMMENT '竞拍人',
  `bidderPrice` int(11) NOT NULL COMMENT '竞拍价',
  `bidderDate` varchar(20) NOT NULL COMMENT '竞拍时间',
  `arRandomNo` varchar(32) NOT NULL COMMENT '拼购随机码',
  `arWinningStatus` varchar(1) NOT NULL DEFAULT '0' COMMENT '中奖状态  0:未中奖   1:中奖  2:未中奖差价购买',
  `bidderStatus` varchar(1) NOT NULL DEFAULT '0' COMMENT '竞拍状态   本次竞拍是否成功. 0:未完成1:已完成',
  `Attribute_68` varchar(10) DEFAULT NULL,
  `Attribute_69` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`auctionRecordId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='竞拍记录表';

/*Data for the table `auctionrecord` */

/*Table structure for table `cardpassword` */

DROP TABLE IF EXISTS `cardpassword`;

CREATE TABLE `cardpassword` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `randomNo` varchar(32) NOT NULL COMMENT '卡号',
  `cardPwd` varchar(32) DEFAULT NULL COMMENT '密码',
  `money` double(10,2) DEFAULT '0.00' COMMENT '面值',
  `date` varchar(20) DEFAULT NULL COMMENT '日期',
  PRIMARY KEY (`id`,`randomNo`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `cardpassword` */

insert  into `cardpassword`(id,randomNo,cardPwd,money,date) values (19,'4C18E1C86A02450B9C7907020BFE59EC','PKFLOKHFMBHHEFEOBEJKABFBEOKLANPG',100.00,'2014-09-10 18:39:24'),(20,'DCC3F377944B41A7ADA3A6BC556C6F64','NJLFEIDDAKBBGLHKGPCHMNOHCHEPIHEJ',100.00,'2014-09-10 18:39:24'),(21,'618DDE89F8BE4914AD60F9C7338ECC2B','DMNKFBFNNIGJJNEPNLAMJNPILNDMHKPH',100.00,'2014-09-10 18:39:25'),(22,'A19B120F886F44E088DF4CB002FD47E7','HKCBKNELDLOFGDBFOHAHNMKMLEIJFLHK',100.00,'2014-09-10 18:39:25'),(23,'86F2E6B898964DB3AA748DEEF5698FD1','NJHGCHKJKFAHLBDKPAJPJIHKDPBHJIOC',100.00,'2014-09-10 18:39:25'),(24,'F6CB6CB620DA4B96BACD65C9B8000D6C','MPKDOMEBMLBCGJAEPAHHPKFJJPLJKOEP',100.00,'2014-09-10 18:39:25'),(25,'DC5525C690F94DC6AA4A738BFFFD7D05','DAGIKOINJDEAKFHKFNGEFMIBIBHAGKFF',100.00,'2014-09-10 18:39:25'),(26,'57E063A3336749D59B9943CC040C806D','GCELKOOMOHPAEBPKBFICPJLKJHCIHMEM',100.00,'2014-09-10 18:39:25'),(29,'20BB5AA4C3774547A2819A8FC62803BD','LJGDLODBFDGFBDAALMEJOKMJMOGKAONE',100.00,'2014-09-17 18:21:24'),(30,'8F4792640FE2426B88A1A6E6325491B1','BOACBILANCBCCHLJEMNIHNPHPEIDBKHD',100.00,'2014-09-17 18:21:24'),(31,'0BC13B11D7494C608AB4AE7F6594E3AE','EAAOHKBMFIGFODIOMPKDOMOKBIAAAFAK',100.00,'2014-09-17 18:21:25'),(32,'104F5C72DD444C4AB54F2F1655B2DEAB','FPDFHKHEKFNNGGPDJOKHFMALCPCLOIEK',100.00,'2014-09-17 18:21:25'),(33,'E83559F57CA84FB5B57FA4BAA5334C65','MFNKJAPMCCIFEBFIGOBEPEIOFFBPKLNN',100.00,'2014-09-17 18:21:25'),(34,'D5C81A5FE8F042ACA7BD60F17D0B8847','ENBGGOADBDFKKHPNDPOLEMMJDLIJJKEK',100.00,'2014-09-17 18:21:25'),(35,'48EA863F01C44CF3947F998AD4476493','DAHLHAHEMCDBIMPBFAABPKDKCAMJNNEP',100.00,'2014-09-17 18:21:25'),(36,'45D7CA1494CB468582E92A288C7DC670','HEGBKMHJIKOBALJMGOKOIDBPKIHGHNHC',100.00,'2014-09-17 18:21:25'),(37,'D7E635FEC3AB4A2BA82BE43037BBD405','IAJNOACLFKCIIMLLMCAJHDJGIBDHLONP',100.00,'2014-09-17 18:21:25'),(38,'7BF3FC1B875D498CA8A09708A55AF3B7','DPAKJOKEGIJMPLCNGNPBCAMDGPKPFFCF',100.00,'2014-09-17 18:21:25'),(39,'97211E63DBE54A98BC180A59BFAB9B1A','JLELEDNLNKHDKGHLLPCLCOHDJGGPLDOG',100.00,'2014-09-17 18:21:50'),(40,'E178B6BC06A24AC19889ADA49435B067','DDPGDDDJHDPEGOIGMLNKNIKHOBFHMALP',100.00,'2014-09-17 18:21:50'),(41,'3D359080DD1043E89B027F9C75AD7085','IKLAGPBFDJALKCLLDLEHBAGGAOHMDMAD',100.00,'2014-09-17 18:21:50'),(42,'DC501BC933F44A7BB9062028B3E6786E','AIDHOLJFFLMMBJNJCCLKJMAGLLAAIIJO',100.00,'2014-09-17 18:21:50'),(43,'F785C2CFAB8E4E9CAB52314C2BDA8EC3','JDLNKJGDJDPDIOFOEECDNOLJEOEKHAPH',100.00,'2014-09-17 18:21:50'),(44,'5B9D2A9F249544548B6EB344FDE6C8FB','MIBIBDJGNILGAKLPLOADEBCNCBMMCLGH',100.00,'2014-09-17 18:21:50'),(45,'ACEE64290B6F4932AEC2B7DC04C636C4','BGDDGALKCJGFKFCPNOBIPOHKJNEAIHCD',100.00,'2014-09-17 18:21:50'),(46,'05425A850C774BFBBBE42AB51720A705','EPKLAAADHBCCJMJNAGEECOILFIEMEADK',100.00,'2014-09-17 18:21:50'),(47,'A59D3BE129D043E1B8881CB6AFB7667A','IFBJLLMKAFLHHGEJDIMPHDNGCJGAGLJE',100.00,'2014-09-17 18:21:50'),(48,'FA41D841246B4974B56AF2705B6CBD8A','KEPNGJODPJGOOKICEOOOKMNJIIPKEEHC',100.00,'2014-09-17 18:21:51'),(49,'7D4F0F82D04D49EA98800BE83A05E468','JPNKPCEECKLKCBLOKAOOIFJIKEPEJKAD',100.00,'2014-09-19 16:15:32'),(50,'223620204163','2453A7804D39695F78B1CA907C2E289B',30.00,'2015-10-08 17:12:40'),(51,'416473352510','3B13EE4285C5C68CB56189A97FA6E9EB',30.00,'2015-10-08 17:12:41');

/*Table structure for table `collectproduct` */

DROP TABLE IF EXISTS `collectproduct`;

CREATE TABLE `collectproduct` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `collectUserId` int(11) NOT NULL,
  `collectProductId` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `collectproduct` */

/*Table structure for table `commissionpoints` */

DROP TABLE IF EXISTS `commissionpoints`;

CREATE TABLE `commissionpoints` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `toUserId` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `date` varchar(20) NOT NULL COMMENT '时间',
  `pay` varchar(20) NOT NULL COMMENT '获得/支出',
  `detailed` varchar(100) DEFAULT NULL COMMENT '详情',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=209 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `commissionpoints` */

insert  into `commissionpoints`(id,toUserId,date,pay,detailed) values (202,1001640332,'2014-09-13 13:49:20','+121','梦购商品编码(11476)支付121元获得福分'),(203,1001640342,'2014-10-17 12:44:46','+1','1元闪购商品编码(1)支付1元获得福分'),(204,1001640342,'2014-10-17 12:48:55','+100','1元闪购商品编码(1)支付100元获得福分'),(205,1001640342,'2014-10-17 12:51:54','+5000','1元闪购商品编码(1)支付5000元获得福分'),(206,1001640342,'2014-10-17 12:52:53','+121','1元闪购商品编码(1)支付121元获得福分'),(207,1001640342,'2014-10-17 12:57:01','+3333','1元闪购商品编码(3)支付3333元获得福分'),(208,1001640347,'2014-11-05 11:29:04','+1','1元哄抢商品编码(6)支付1元获得福分');

/*Table structure for table `commissionquery` */

DROP TABLE IF EXISTS `commissionquery`;

CREATE TABLE `commissionquery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(20) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL COMMENT '描述',
  `buyMoney` double(10,2) DEFAULT '0.00' COMMENT '拍购金额',
  `commission` double(10,2) DEFAULT '0.00' COMMENT '佣金',
  `toUserId` int(11) DEFAULT NULL,
  `invitedId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `commissionquery` */

/*Table structure for table `consumerdetail` */

DROP TABLE IF EXISTS `consumerdetail`;

CREATE TABLE `consumerdetail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `consumetableId` varchar(32) NOT NULL COMMENT '消费记录ID',
  `productId` int(11) NOT NULL COMMENT '商品ID',
  `buyCount` int(11) NOT NULL COMMENT '拍购次数',
  `buyMoney` double(10,2) NOT NULL COMMENT '金额',
  `productTitle` varchar(200) DEFAULT NULL COMMENT '商品标题',
  `productName` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `productPeriod` int(11) NOT NULL COMMENT '商品期数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `consumerdetail` */

/*Table structure for table `consumetable` */

DROP TABLE IF EXISTS `consumetable`;

CREATE TABLE `consumetable` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `money` double(10,2) NOT NULL DEFAULT '0.00' COMMENT '金额',
  `date` varchar(32) NOT NULL COMMENT '交易时间',
  `buyCount` int(11) DEFAULT NULL COMMENT '拍购次数',
  `userId` int(11) NOT NULL COMMENT '用户ID',
  `transactionId` varchar(32) DEFAULT NULL COMMENT '财付通订单号',
  `outTradeNo` varchar(32) NOT NULL COMMENT '商户订单号',
  `interfaceType` varchar(32) DEFAULT NULL COMMENT '接口类型',
  `withold` text NOT NULL COMMENT '商品购买数量预扣明细',
  `payStatus` int(10) unsigned NOT NULL COMMENT '0-未支付，1-已支付，2-支付超时（订单取消），3-已支付但超时（需退款）',
  `balance` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '余额支付额',
  `integral` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '福分抵扣额',
  `bankMoney` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '网银支付额',
  `buyIp` varchar(20) DEFAULT NULL COMMENT '网银支付时记录买家IP - 在收到支付成功通知时设置到“购买记录”中',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `consumetable` */

/*Table structure for table `core_admin` */

DROP TABLE IF EXISTS `core_admin`;

CREATE TABLE `core_admin` (
  `admin_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `login_time` datetime DEFAULT NULL,
  `login_count` int(11) DEFAULT NULL,
  `is_disabled` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `core_admin` */

insert  into `core_admin`(admin_id,user_id,create_time,login_time,login_count,is_disabled) values (1,1,'2015-11-30 10:36:58','2015-11-30 10:36:58',0,0);

/*Table structure for table `core_admin_function` */

DROP TABLE IF EXISTS `core_admin_function`;

CREATE TABLE `core_admin_function` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `admin_id` bigint(20) DEFAULT NULL,
  `function_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `core_admin_function` */

insert  into `core_admin_function`(id,admin_id,function_id) values (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,1,13),(14,1,14),(15,1,15),(16,1,16),(17,1,17),(18,1,18),(19,1,19),(20,1,20),(21,1,21),(22,1,22),(23,1,23),(24,1,24),(25,1,25),(26,1,26),(27,1,27),(28,1,28),(29,1,29),(30,1,30),(31,1,31),(32,1,32),(33,1,33),(34,1,34),(35,1,35),(36,1,36),(37,1,37),(38,1,38),(39,1,39),(40,1,40),(41,1,41),(42,1,42),(43,1,43),(44,1,44),(45,1,45),(46,1,46),(47,1,47),(48,1,48),(49,1,49),(50,1,50),(51,1,51),(52,1,52),(53,1,53),(54,1,54),(55,1,55),(56,1,56),(57,1,57),(58,1,58),(59,1,59),(60,1,60),(61,1,61),(62,1,62),(63,1,63),(64,1,64),(65,1,65),(66,1,66),(67,1,67),(68,1,68),(69,1,69),(70,1,70),(71,1,71),(72,1,72),(73,1,73),(74,1,74),(75,1,75);

/*Table structure for table `core_admin_role` */

DROP TABLE IF EXISTS `core_admin_role`;

CREATE TABLE `core_admin_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `admin_id` bigint(20) DEFAULT NULL,
  `role_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `core_admin_role` */

/*Table structure for table `core_function` */

DROP TABLE IF EXISTS `core_function`;

CREATE TABLE `core_function` (
  `function_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) DEFAULT NULL,
  `name` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `url` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `url_type` tinyint(1) DEFAULT NULL,
  `funcs` text COLLATE utf8_bin,
  `description` varchar(150) COLLATE utf8_bin DEFAULT NULL,
  `priority` int(6) DEFAULT NULL,
  `is_menu` tinyint(1) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`function_id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `core_function` */

insert  into `core_function`(function_id,parent_id,name,url,url_type,funcs,description,priority,is_menu,is_active) values (1,NULL,'系统设置','setting',1,NULL,NULL,1,0,1),(2,NULL,'内容管理','content',1,NULL,NULL,2,0,1),(3,NULL,'商品管理','shop',1,NULL,NULL,3,0,1),(4,NULL,'用户管理','user',1,NULL,NULL,4,0,1),(5,NULL,'云应用','yunapp',1,NULL,NULL,5,0,1),(6,1,'站点设置','site',1,NULL,NULL,1,0,1),(7,1,'管理员管理','admin',1,NULL,NULL,2,0,1),(8,1,'权限管理','rights',1,NULL,NULL,3,0,0),(9,1,'站长运营','zhanzhang',1,NULL,NULL,4,0,1),(10,1,'后台首页','console',1,NULL,NULL,5,0,1),(11,2,'新闻管理','newsmanage',1,NULL,NULL,1,0,1),(12,2,'首页幻灯管理','slidemanage',1,NULL,NULL,2,0,1),(13,2,'投诉建议管理','tsjymanage',1,NULL,NULL,3,0,1),(14,2,'QQ群管理','qqgroupmanage',1,NULL,NULL,4,0,1),(15,3,'商品管理','productmanage',1,NULL,NULL,1,0,1),(16,3,'商品分类管理','producttypemanage',1,NULL,NULL,2,0,1),(17,3,'商品品牌管理','productbrandmanage',1,NULL,NULL,3,0,1),(18,3,'订单管理','ordermanage',1,NULL,NULL,4,0,1),(19,3,'发货管理','sendmanage',1,NULL,NULL,5,0,1),(20,3,'促销管理','promotionmanage',1,NULL,NULL,6,0,1),(21,3,'晒单管理','sharemanage',1,NULL,NULL,7,0,1),(22,3,'账单管理','billmanage',1,NULL,NULL,8,0,1),(23,4,'用户管理','usermanage',1,NULL,NULL,1,0,1),(24,5,'插件管理','chajian',1,NULL,NULL,1,0,1),(25,6,'SEO设置','/admin_back/toSeoSet',1,NULL,NULL,1,1,1),(26,6,'基本设置','/admin_back/toBasicSet',1,NULL,NULL,2,1,1),(27,6,'邮箱配置','/admin_back/toMailSet',1,NULL,NULL,3,1,1),(28,6,'短信配置','/admin_back/toMessageSet',1,NULL,NULL,4,1,1),(29,6,'支付方式','/admin_back/toPaySet',1,NULL,NULL,5,1,1),(30,7,'管理员管理','/admin_back/toAdminList',1,NULL,NULL,1,1,1),(31,7,'添加管理员','/admin_back/toAddAdmin',1,NULL,NULL,2,1,1),(32,7,'修改密码','/admin_back/updateAdminPwd',1,NULL,NULL,3,1,1),(33,7,'管理员角色','/admin_back/roleList',1,NULL,NULL,1,1,1),(34,8,'功能菜单',NULL,1,NULL,NULL,2,1,0),(35,9,'站点地图','/admin_back/toSaitMap',1,NULL,NULL,1,1,1),(36,9,'网站提交','/admin_back/toSaitPost',1,NULL,NULL,2,1,1),(37,9,'站长统计','/admin_back/toSaitCount',1,NULL,NULL,3,1,1),(38,10,'后台首页','/admin_back/sysInfo',1,NULL,NULL,1,1,1),(39,11,'添加新闻','/admin_back/toAddNews',1,NULL,NULL,1,1,1),(40,11,'新闻列表','/admin_back/newsList',1,NULL,NULL,2,1,1),(41,11,'更新新闻','/admin_back/replaceNews',1,NULL,NULL,3,1,1),(42,12,'幻灯管理','/admin_back/indexImgAll',1,NULL,NULL,1,1,1),(43,12,'添加幻灯片','/admin_back/toAddIndexImg',1,NULL,NULL,2,1,1),(44,13,'投诉建议','/admin_back/suggestion',1,NULL,NULL,1,1,1),(45,14,'添加QQ群','/admin_back/toQqGroup',1,NULL,NULL,1,1,1),(46,14,'管理QQ群','/admin_back/qqGroupByList',1,NULL,NULL,2,1,1),(47,15,'添加商品','/admin_back/toAddProduct',1,NULL,NULL,1,1,1),(48,15,'商品列表','/admin_back/productList',1,NULL,NULL,2,1,1),(49,15,'在售商品管理','/admin_back/index.action?id=hot20',2,NULL,NULL,3,1,1),(50,16,'添加商品分类','/admin_back/toAddProductType',1,NULL,NULL,1,1,1),(51,16,'商品分类列表','/admin_back/productTypeList',1,NULL,NULL,2,1,1),(52,17,'添加商品品牌','/admin_back/toAddProductBrand',1,NULL,NULL,1,1,1),(53,17,'商品品牌列表','/admin_back/productBrandList',1,NULL,NULL,2,1,1),(54,18,'订单列表','/admin_back/orderList',1,NULL,NULL,1,1,1),(55,18,'中奖订单','/admin_back/latestList',1,NULL,NULL,2,1,1),(56,19,'已发货管理','/admin_back/latestList.action?typeId=3',2,NULL,NULL,1,1,1),(57,19,'未发货管理','/admin_back/latestList.action?typeId=2',2,NULL,NULL,2,1,1),(58,20,'生成卡密','/admin_back/toAddCard',1,NULL,NULL,1,1,1),(59,20,'卡密管理','/admin_back/cardList',1,NULL,NULL,2,1,1),(60,21,'已晒单管理','/admin_back/shareByStatus.action?tId=0',2,NULL,NULL,1,1,1),(61,21,'未晒单管理','/admin_back/shareByStatus.action?tId=-1',2,NULL,NULL,2,1,1),(62,21,'晒单审核','/admin_back/shareList.action?typeId=hot20',2,NULL,NULL,3,1,1),(63,21,'晒单评论管理','/admin_back/shareList.action?typeId=hot20',2,NULL,NULL,4,1,0),(64,22,'充值消费统计','/admin_back/totalRecharge',1,NULL,NULL,1,1,1),(65,22,'剩余财富统计','/admin_back/totalOverplus',1,NULL,NULL,2,1,1),(66,23,'会员列表','/admin_back/userListAll',1,NULL,NULL,1,1,1),(67,23,'添加会员','/admin_back/toAddUser',1,NULL,NULL,2,1,1),(68,23,'会员福利配置','/admin_back/toUserConfigure',1,NULL,NULL,3,1,1),(69,23,'充值记录','/admin_back/rechargeAllList',1,NULL,NULL,4,1,1),(70,23,'消费记录','/admin_back/consumeAllList',1,NULL,NULL,5,1,1),(71,23,'提现管理','/admin_back/applymentionList',1,NULL,NULL,6,1,1),(72,23,'快递管理','/admin_back/orderdetailaddressList',1,NULL,NULL,7,1,1),(73,24,'QQ登录','/admin_back/qqSetInfo',1,NULL,NULL,1,1,1),(74,24,'微信登录','/admin_back/wxSetInfo',1,NULL,NULL,2,1,1),(75,24,'公益基金设置','/admin_back/qqGyjjNumber',1,NULL,NULL,3,1,1);

/*Table structure for table `core_role` */

DROP TABLE IF EXISTS `core_role`;

CREATE TABLE `core_role` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `description` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `core_role` */

insert  into `core_role`(role_id,name,description) values (1,'超级管理员','拥有后台管理系统的所有操作功能权限'),(2,'普通管理员','拥有运营管理的功能权限'),(3,'查询统计人员','');

/*Table structure for table `core_role_function` */

DROP TABLE IF EXISTS `core_role_function`;

CREATE TABLE `core_role_function` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) DEFAULT NULL,
  `function_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `core_role_function` */

/*Table structure for table `friends` */

DROP TABLE IF EXISTS `friends`;

CREATE TABLE `friends` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `friendsId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `friends` */

/*Table structure for table `index_img` */

DROP TABLE IF EXISTS `index_img`;

CREATE TABLE `index_img` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) CHARACTER SET utf8 DEFAULT NULL COMMENT '标题',
  `proUrl` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT 'URL链接',
  `proImg` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '商品幻灯图片',
  `status` int(1) DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `index_img` */

insert  into `index_img`(id,title,proUrl,proImg,status) values (1,'111','','/productImg/show/indexImg/1415092716688.jpg',0),(2,'苹果（Apple）iPad Air 2 9.7英寸平板电脑 16G WiFi版','http://www.1yhq.com/products/15.html','/productImg/show/indexImg/1415092989625.jpg',0),(3,'Iphone 6','http://www.1yhq.com/products/14.html','/productImg/show/indexImg/1415154646011.jpg',0),(4,'小米电视2','http://www.1yhq.com/products/12.html','/productImg/show/indexImg/1415153179970.jpg',0);

/*Table structure for table `latestlottery` */

DROP TABLE IF EXISTS `latestlottery`;

CREATE TABLE `latestlottery` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `productId` int(11) DEFAULT NULL COMMENT '商品ID',
  `productType` int(11) DEFAULT NULL COMMENT '商品类型',
  `productName` varchar(200) CHARACTER SET utf8 DEFAULT NULL COMMENT '商品名称',
  `productTitle` varchar(200) CHARACTER SET utf8 DEFAULT NULL COMMENT '商品Title',
  `productPrice` int(11) DEFAULT NULL COMMENT '商品价格',
  `productImg` varchar(200) CHARACTER SET utf8 DEFAULT NULL COMMENT '商品图片',
  `productPeriod` int(11) DEFAULT NULL COMMENT '商品期数',
  `userName` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '获得人名称',
  `Location` varchar(200) CHARACTER SET utf8 DEFAULT NULL COMMENT '所在地',
  `announcedTime` varchar(25) CHARACTER SET utf8 DEFAULT NULL COMMENT '揭晓时间',
  `announcedType` int(2) DEFAULT '0' COMMENT '揭晓类型(1限时0普通)',
  `buyTime` varchar(25) CHARACTER SET utf8 DEFAULT NULL COMMENT '购买时间',
  `spellbuyRecordId` int(11) DEFAULT NULL COMMENT '购买记录ID',
  `spellbuyProductId` int(11) DEFAULT NULL COMMENT '某期商品ID',
  `randomNumber` int(11) DEFAULT NULL COMMENT '中奖码',
  `dateSum` bigint(20) DEFAULT NULL COMMENT '时间总和',
  `sscNumber` int(11) DEFAULT NULL,
  `sscPeriod` bigint(20) DEFAULT NULL,
  `buyNumberCount` int(11) DEFAULT NULL COMMENT '购买总数',
  `userId` int(11) DEFAULT NULL COMMENT '用户ID',
  `buyUser` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '手机号域邮箱',
  `userFace` varchar(300) CHARACTER SET utf8 DEFAULT NULL COMMENT '用户头像',
  `status` int(2) DEFAULT '0' COMMENT '状态 1未提交收获地址 2等待发货 3等待收货 4已确认收货 10交易完成 11交易取消',
  `shareStatus` int(2) DEFAULT '-1' COMMENT '晒单状态 -1 暂未晒单 0等待审核 1未审核通过，请重新修改晒单信息 2审核通过，奖励10元',
  `shareId` int(11) DEFAULT NULL COMMENT '晒单ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

/*Data for the table `latestlottery` */

/*Table structure for table `lotteryproductutil` */

DROP TABLE IF EXISTS `lotteryproductutil`;

CREATE TABLE `lotteryproductutil` (
  `lotteryId` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lotteryProductId` int(11) DEFAULT '0',
  `lotteryProductName` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `lotteryProductTitle` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `lotteryProductPrice` double(10,2) DEFAULT '0.00',
  `lotteryProductPeriod` int(11) DEFAULT NULL,
  `lotteryProductImg` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `lotteryProductEndDate` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`lotteryId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `lotteryproductutil` */

/*Table structure for table `message` */

DROP TABLE IF EXISTS `message`;

CREATE TABLE `message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `sender` int(11) DEFAULT NULL,
  `message` varchar(1000) CHARACTER SET utf8 DEFAULT NULL COMMENT '信息',
  `date` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `type` int(2) DEFAULT NULL COMMENT '信息类型',
  `status` int(2) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `message` */

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `newsId` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL COMMENT '标题',
  `postDate` varchar(20) NOT NULL COMMENT '发布时间',
  `content` varchar(10000) NOT NULL COMMENT '内容',
  PRIMARY KEY (`newsId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `news` */

insert  into `news`(newsId,title,postDate,content) values (1,'2015年1元淘拍端午放假通知','2015-06-18','<p><span style=\"text-transform:none;background-color:#ffffff;text-indent:0px;display:inline !important;font:14px/30px 微软雅黑, arial;float:none;letter-spacing:normal;color:#666666;word-spacing:0px;-webkit-text-stroke-width:0px\">大家好！端午节终于来啦！</span><img style=\"border-bottom:0px;border-left:0px;text-transform:none;background-color:#ffffff;text-indent:0px;margin:0px;font:14px/30px 微软雅黑, arial;letter-spacing:normal;color:#999999;border-top:0px;border-right:0px;word-spacing:0px;-webkit-text-stroke-width:0px;padding:0px;\" src=\"http://skin.1yyg.com/Images/Emoticons/37.gif\" /><span style=\"text-transform:none;background-color:#ffffff;text-indent:0px;display:inline !important;font:14px/30px 微软雅黑, arial;float:none;letter-spacing:normal;color:#666666;word-spacing:0px;-webkit-text-stroke-width:0px\">根据国家法定节假日规定，1元淘拍2015年端午节放假安排如下：</span><br style=\"text-transform:none;background-color:#ffffff;text-indent:0px;margin:0px;font:14px/30px 微软雅黑, arial;letter-spacing:normal;color:#666666;word-spacing:0px;-webkit-text-stroke-width:0px;padding:0px;\" /><span style=\"text-transform:none;background-color:#ffffff;text-indent:0px;display:inline !important;font:14px/30px 微软雅黑, arial;float:none;letter-spacing:normal;color:#666666;word-spacing:0px;-webkit-text-stroke-width:0px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;6月20日（周六）至6月22日（周一）放假（共3天），6月23日（星期二）正常上班。</span><br style=\"text-transform:none;background-color:#ffffff;text-indent:0px;margin:0px;font:14px/30px 微软雅黑, arial;letter-spacing:normal;color:#666666;word-spacing:0px;-webkit-text-stroke-width:0px;padding:0px;\" /><br style=\"text-transform:none;background-color:#ffffff;text-indent:0px;margin:0px;font:14px/30px 微软雅黑, arial;letter-spacing:normal;color:#666666;word-spacing:0px;-webkit-text-stroke-width:0px;padding:0px;\" /><span style=\"text-transform:none;background-color:#ffffff;text-indent:0px;display:inline !important;font:14px/30px 微软雅黑, arial;float:none;letter-spacing:normal;color:#666666;word-spacing:0px;-webkit-text-stroke-width:0px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;放假期间揭晓的商品，6月23日正式上班后第一时间安排发出，我们将竭诚为您解答。给您带来的不便，敬请谅解！</span><br style=\"text-transform:none;background-color:#ffffff;text-indent:0px;margin:0px;font:14px/30px 微软雅黑, arial;letter-spacing:normal;color:#666666;word-spacing:0px;-webkit-text-stroke-width:0px;padding:0px;\" /><br style=\"text-transform:none;background-color:#ffffff;text-indent:0px;margin:0px;font:14px/30px 微软雅黑, arial;letter-spacing:normal;color:#666666;word-spacing:0px;-webkit-text-stroke-width:0px;padding:0px;\" /><span style=\"text-transform:none;background-color:#ffffff;text-indent:0px;display:inline !important;font:14px/30px 微软雅黑, arial;float:none;letter-spacing:normal;color:#666666;word-spacing:0px;-webkit-text-stroke-width:0px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;亲爱的拍友，五月五，是端阳，剥个粽子沾上糖，祝您节日愉快！</span><img style=\"border-bottom:0px;border-left:0px;text-transform:none;background-color:#ffffff;text-indent:0px;margin:0px;font:14px/30px 微软雅黑, arial;letter-spacing:normal;color:#999999;border-top:0px;border-right:0px;word-spacing:0px;-webkit-text-stroke-width:0px;padding:0px;\" src=\"http://skin.1yyg.com/Images/Emoticons/12.gif\" /></p>'),(2,'1元哄抢即将进入中国大陆','2014-11-04','<p>1元哄抢即将进入中国大陆，敬请期待。一元出品，必为精品！</p><p>我们不卖东西，我们只为他人提供一个便利的平台。</p>');

/*Table structure for table `orderdetail` */

DROP TABLE IF EXISTS `orderdetail`;

CREATE TABLE `orderdetail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderDetailId` int(11) DEFAULT NULL,
  `date` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `detailText` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `userName` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `addressId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

/*Data for the table `orderdetail` */

/*Table structure for table `orderdetailaddress` */

DROP TABLE IF EXISTS `orderdetailaddress`;

CREATE TABLE `orderdetailaddress` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderDetailId` int(11) DEFAULT NULL,
  `consignee` varchar(20) CHARACTER SET utf8 DEFAULT NULL COMMENT '收货人',
  `phone` varchar(20) CHARACTER SET utf8 DEFAULT NULL COMMENT '联系电话',
  `address` varchar(200) CHARACTER SET utf8 DEFAULT NULL COMMENT '收货地址',
  `postDate` varchar(20) CHARACTER SET utf8 DEFAULT NULL COMMENT '配送时间',
  `orderRemarks` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '订单备注',
  `expressNo` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '快递单号',
  `expressCompany` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '快递公司',
  `deliverTime` varchar(20) CHARACTER SET utf8 DEFAULT NULL COMMENT '发货时间',
  `DeliverRemarks` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '发货备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

/*Data for the table `orderdetailaddress` */

/*Table structure for table `orderid` */

DROP TABLE IF EXISTS `orderid`;

CREATE TABLE `orderid` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'order-id suffix',
  `tm` bigint(20) unsigned NOT NULL COMMENT 'time(ms) from epoch, after formating the yyyyMMddHHmm part as order-id prefix',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii COMMENT='订单号记录';

/*Data for the table `orderid` */

/*Table structure for table `product` */

DROP TABLE IF EXISTS `product`;

CREATE TABLE `product` (
  `productId` int(11) NOT NULL AUTO_INCREMENT,
  `productName` varchar(200) NOT NULL COMMENT '商品名称',
  `productPrice` int(11) NOT NULL COMMENT '商品参考价',
  `singlePrice` int(11) NOT NULL DEFAULT '1',
  `productLimit` int(11) DEFAULT '0',
  `productRealPrice` varchar(15) DEFAULT NULL COMMENT '商品买入价  不显示.',
  `productTitle` varchar(200) NOT NULL COMMENT '网页显示商品标题.',
  `productDetail` text NOT NULL COMMENT '商品详情',
  `productType` int(11) NOT NULL,
  `productBrand` int(11) DEFAULT NULL,
  `headImage` varchar(500) DEFAULT NULL,
  `status` int(2) NOT NULL DEFAULT '0' COMMENT '是否上架 0未上架 1已上架 2已下架',
  `style` varchar(10) DEFAULT NULL COMMENT '样式 goods_xp 新品 goods_rq 人气 goods_tj 推荐 goods_xs 限时',
  `winner` varchar(200) DEFAULT NULL,
  `Attribute_71` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`productId`)
) ENGINE=InnoDB AUTO_INCREMENT=1020 DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

/*Data for the table `product` */

insert  into `product`(productId,productName,productPrice,singlePrice,productLimit,productRealPrice,productTitle,productDetail,productType,productBrand,headImage,status,style,winner,Attribute_71) values (1016,'中国农业银行传世之宝 〃金元宝〃 Au9999 200g',58999,1,5,'58999','采用传统元宝形制，福禄纹饰及如意花纹，美观精美、工艺精湛，金元宝带来成功新财富！','<p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-align: center;\"><img src=\"http://goodsimg.1yyg.com/GoodsInfo/20140814164412240.jpg\" style=\"border: 0px none; color: rgb(153, 153, 153);\"/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 30px 0px 0px; font-size: 28px; line-height: 35px; text-align: center; letter-spacing: 2px;\">中国农业银行传世之宝——金元宝</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 15px 25px 30px; font-size: 14px; line-height: 22px; text-indent: 28px; letter-spacing: 1px;\">中国农业银行传世之宝系列——金元宝 Au9999 200g由中国农业银行总行监制发行。金元宝采用传统元宝形制，正面为&quot;传世之宝&quot;字样、福禄纹饰及如意花纹， 背面为中国农业银行标识、标注成色&quot;Au99.99&quot;、规格，并黏贴有防伪标签。金元宝采用99.99金精工打造，运用复杂的油压技术精炼锻造而成，外形精美、工艺精湛，黄金质感十足。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-align: center;\"><img src=\"http://goodsimg.1yyg.com/GoodsInfo/20140814164423691.jpg\" style=\"border: 0px none; color: rgb(153, 153, 153);\"/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 30px 25px; font-size: 14px; line-height: 22px; text-indent: 28px; letter-spacing: 1px;\">&quot;传世之宝&quot;——金元宝是中国农业银行自主品牌的实物黄金产品，信誉卓著， 为投资者提供更多理财选择。银行销售的实物黄金产品原料都采购自上海黄金交易所，成色有保证； 产品加工企业选取国内最大的金产品加工企业－山东招金集团，加工工艺精美，质量上乘。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-align: center;\"><img src=\"http://goodsimg.1yyg.com/GoodsInfo/20140814164707295.jpg\" style=\"border: 0px none; color: rgb(153, 153, 153);\"/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 30px 25px; font-size: 14px; line-height: 22px; text-indent: 28px; letter-spacing: 1px;\">&quot;传世之宝&quot;——金元宝黄金纯度为99.99%，配备有质量鉴定证书和购回证书。 &quot;传世之宝&quot;是商业银行品牌金条中首个可办理购回的产品，交易时间内随时可变现，交易成本低，手续简便，让您尽享投资收益。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-align: center;\"><img src=\"http://goodsimg.1yyg.com/GoodsInfo/20140814164714552.jpg\" style=\"border: 0px none; color: rgb(153, 153, 153);\"/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; font-size: 20px; line-height: 35px; text-align: center; letter-spacing: 2px;\">正面</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-align: center;\"><img src=\"http://goodsimg.1yyg.com/GoodsInfo/20140814164721437.jpg\" style=\"border: 0px none; color: rgb(153, 153, 153);\"/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; font-size: 20px; line-height: 35px; text-align: center; letter-spacing: 2px;\">反面</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 30px 25px; font-size: 14px; line-height: 22px; text-indent: 28px; letter-spacing: 1px;\">&quot;传世之宝&quot;——金元宝寓意为&quot;福禄双至—吉祥如意；传世之宝—招财进宝&quot;。工艺精湛、成色标准、质量上乘， 结合农行国有大行的良好信誉，免去客户挑选鉴定之忧，有较高的收藏价值，同时也是馈赠的佳品。&quot;传世之宝&quot;产品报价优，销售与购回报价紧贴国际黄金市场价格，是投资者的明智之选。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-align: center;\"><img src=\"http://goodsimg.1yyg.com/GoodsInfo/20140814164728117.jpg\" style=\"border: 0px none; color: rgb(153, 153, 153);\"/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 10px; font-size: 16px; line-height: 25px;\">重要说明：</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 10px; font-size: 14px; line-height: 22px;\">1、商品获得者拥有中国农业银行传世之宝&quot;金元宝&quot; Au9999 200g 10年免费使用权。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 10px; font-size: 14px; line-height: 22px;\">2、此款商品由于是银行定制，订货周期需要15-20个工作日，1元云购将在商品到货后的第一时间按订单顺序发出，请谅解。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 10px; font-size: 14px; line-height: 22px;\">3、1元云购对本商品使用权在法律范围内拥有最终解释权。</p><p><span style=\"margin: 0px; padding: 0px; display: inline-block; color: rgb(102, 102, 102); line-height: 20px; word-break: break-all; font-family: arial, 微软雅黑;\"><span style=\"margin: 0px; padding: 0px; color: rgb(232, 0, 0);\"></span></span><br/></p><p><span style=\"margin: 0px; padding: 0px; display: inline-block; color: rgb(102, 102, 102); line-height: 20px; word-break: break-all; font-family: arial, 微软雅黑;\"><span style=\"margin: 0px; padding: 0px; color: rgb(232, 0, 0);\"><br/></span></span></p>',1005,1041,'/productImg/show/1016/1441097504012.jpg',1,'goods_xp',NULL,'2'),(1017,'闪迪（SanDisk）至尊高速MicroSDHC-TF 存储卡 32G-Class10-48MB/S',89,1,0,'89','升级更新为48M/S，相机、手机一卡双用！10年质保，重数据安全，选闪迪！','<p style=\"margin-top: 0px; margin-bottom: 0px; padding: 305px 40px 0px 50px; font-size: 15px; line-height: 26px;\">闪迪至尊高速移动<sup>TM&nbsp;</sup>microSDHC<sup>TM</sup>存储卡48MB/S速度是普通移动卡的两到三倍，具备更快应用程序加载、更流畅的全高清摄录和高级拍照功能。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 52px 40px 0px 385px; font-size: 18px; line-height: 26px; font-weight: bold;\">充分发挥您的智能手机或平板电脑的性能</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 20px 40px 0px 385px; font-size: 14px; line-height: 24px; width: 360px;\">闪迪至尊高速移动<sup>TM&nbsp;</sup>microSDHC<sup>TM</sup>存储卡可提高您的智能手机或平板电脑的性能。最高容量可达128GB，为您提供更多空间来容纳数以千计的高精度照片，音乐及全高清视频(1080p)。Class 10 ^的视频等级，可用于录制不间断的全高清视频。高达48MB/秒**的读取速度可缩短应用程序的装载时间，并提升手机的整体性能。搭配原装SD<sup>TM</sup>适配器，轻松完成手机与电脑间的文件传输。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 150px 30px 0px 65px; font-size: 15px; line-height: 24px;\">闪迪至尊高速移动 TMmicroSDHC&nbsp;<sup>TM</sup>存储卡可在恶劣环境下工作，可防水、防震、耐寒耐热、抗X光。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 40px 0px 5px 60px; font-size: 15px; line-height: 22px;\">产品名称：闪迪至尊高速移动<sup style=\"font-size: 12px;\">TM</sup>&nbsp;microSDHC<sup style=\"font-size: 12px;\">TM</sup>存储卡</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 5px 60px; font-size: 15px; line-height: 24px;\">可选容量：8GB、16GB、32GB、64GB、128GB</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 5px 60px; font-size: 15px; line-height: 24px;\">当前选择：32GB</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 25px 0px 0px 60px; width: 380px; font-size: 15px; line-height: 28px;\">如今，智能手机和平板电脑的功能越来越强大，因此需要大量的存储空间。闪迪至尊高速移动<sup>TM</sup>&nbsp;microSDHC<sup>TM</sup>UHS-I存储卡提供了从8GB到128GB多种容量选择，充分满足您照片、视频、音乐等的存储需要。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 80px 0px 0px 460px; font-size: 25px; line-height: 28px;\">选择合适的存储卡</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 20px 0px 0px 400px; font-size: 15px; line-height: 28px;\">选择何种存储卡取决于你希望存储的内容及价格因素。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 5px 0px 0px 400px; font-size: 15px; line-height: 28px; width: 350px;\">例如，全高清视频需要较大的存储容量。左侧表格清楚显示了不同容量存储卡可以保存多少照片，视频，音乐及应用 程序，您可以选择最合适您的存储卡。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 60px 0px 0px 100px; font-size: 25px; line-height: 28px;\">更快的传输速度</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 15px 0px 0px 50px; font-size: 15px; line-height: 28px; width: 340px;\">闪迪至尊高速移动<sup style=\"font-size: 12px;\">TM</sup>&nbsp;microSDHC<sup style=\"font-size: 12px;\">TM</sup>&nbsp;存储卡具有Class 10视频等级，<span style=\"font-weight: bold;\">&nbsp;可在智能手机和平板电脑上录制不间断的全高清视频(1080p)。高达48MB/秒的读取速度</span>可缩短与电脑间的文件传输时间</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 50px 0px 0px 460px; font-size: 25px; line-height: 28px;\">可靠的性能</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 15px 0px 0px 360px; font-size: 15px; line-height: 28px; width: 370px;\">闪迪设计生产的microSDHC存储卡具备高度可靠性，您可使用闪迪至尊高速移动<sup style=\"font-size: 12px;\">TM</sup>&nbsp;microSDHC<sup style=\"font-size: 12px;\">TM</sup>&nbsp;存储卡保存您的重要文件，<span style=\"font-weight: bold;\">并享有10年有限质保。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 70px 0px 0px 150px; font-size: 25px; line-height: 25px;\">售后服务</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 20px 0px 0px 50px; font-size: 15px; line-height: 28px; width: 320px;\">另外，闪迪在全国设有<span style=\"font-weight: bold;\">30家售后服务中心</span>，遍及各大省市，让您真正的<span style=\"font-weight: bold;\">售后无忧！</span><br/>注：产品批次不同，外包装可能不同，防伪码验证，正品无忧！</p><p><br/></p>',1002,NULL,'/productImg/show/1017/1441098155167.jpg',1,'goods_tj',NULL,'2'),(1018,'苹果（Apple）iPhone 6 A1586 64G版 4G手机',5788,1,0,'5788','4.7 英寸LED 背光宽，Retina HD 高清显示屏，Multi-Touch 显示屏，具有 IPS 技术，1334 x 750 像素分辨率，是 iPhone 的至大之作！','<p style=\"margin-top: 0px; margin-bottom: 0px; padding: 30px 0px 0px; font-size: 60px; line-height: 65px; text-align: center; letter-spacing: 2px;\">iPhone6</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 20px 0px 0px; font-size: 38px; line-height: 38px; text-align: center; letter-spacing: 5px; color: rgb(51, 51, 51);\">比更大还更大</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 20px 20px 0px; font-size: 16px; line-height: 28px; text-align: center;\">iPhone 6 之大，不只是简简单单地放大，而是方方面面都大有提升。<br/>它尺寸更大，却纤薄得不可思议；性能更强，却效能非凡。光滑圆润的金属机身，<br/>与全新 Retina HD 高清显示屏精准契合，浑然一体。而软硬件间的搭配，更是默契得宛如天作之合。<br/>无论以何种尺度衡量，这一切，都让 iPhone 新一代的至大之作，成为至为出众之作。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px; text-align: center;\"><img src=\"http://goodsimg.1yyg.com/GoodsInfo/20140910143950500.jpg\" style=\"border: 0px none; color: rgb(153, 153, 153);\"/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 220px 0px 0px 60px; font-size: 34px; line-height: 48px; letter-spacing: 2px; color: rgb(51, 51, 51);\">是 iPhone 的至大之作，<br/>也是至薄之作。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 20px 10px 0px 60px; font-size: 15px; line-height: 28px;\">要开发一个尺寸更大，更先进的 iPhone 显示屏，就要在设计上大大突破极限。从金属与玻璃的精密结合，到光滑圆润的流线机身，每处细节都是深思熟虑的结晶，旨在带给你更为出众的使用体验。因此，虽然 iPhone 6 的显示屏变大了，但却让人感觉大得恰到好处。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 240px 0px 0px 80px; font-size: 25px; line-height: 48px; letter-spacing: 2px; color: rgb(51, 51, 51);\"><span style=\"font-size: 65px; line-height: 70px;\">6.9</span>&nbsp;毫米</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 0px 90px; font-size: 15px; line-height: 22px; letter-spacing: 2px; color: rgb(51, 51, 51);\">iPHONE 6</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 25px 0px 0px 80px; font-size: 25px; line-height: 48px; letter-spacing: 1px; color: rgb(51, 51, 51);\"><span style=\"font-size: 65px; line-height: 70px;\">7.1</span>&nbsp;毫米</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 0px 90px; font-size: 15px; line-height: 22px; letter-spacing: 1px; color: rgb(51, 51, 51);\">iPHONE 6 PLUS</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 20px 0px 0px; text-align: center;\"><img src=\"http://goodsimg.1yyg.com/GoodsInfo/20140910144019403.jpg\" style=\"border: 0px none; color: rgb(153, 153, 153);\"/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 120px 0px 0px 20px; font-size: 42px; line-height: 55px; letter-spacing: 2px; color: rgb(51, 51, 51);\">不仅更大<br/>更大放异彩</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 20px 10px 0px 20px; font-size: 15px; line-height: 28px; width: 390px;\">把显示屏做大并非难事，但打造一块将绚丽色彩、更高对比度、更广阔浏览视角集于一身的大尺寸 Multi-Touch 显示屏，则完全是另一个境界的事。 而这，也正是我们在全新 Retina HD 高清显示屏上所做到的。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 20px 0px 0px 20px; font-size: 42px; line-height: 55px; letter-spacing: 2px; color: rgb(51, 51, 51);\">1334×750</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 10px 0px 20px; font-size: 16px; line-height: 28px; width: 390px;\">iPHONE 6分辨率</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px 0px 20px; font-size: 42px; line-height: 55px; letter-spacing: 2px; color: rgb(51, 51, 51);\">1920×1080</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 10px 0px 20px; font-size: 16px; line-height: 28px; width: 390px;\">iPHONE 6 PLUS 分辨率</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 265px 0px 0px 20px; font-size: 42px; line-height: 55px; letter-spacing: 2px; color: rgb(51, 51, 51);\">大有动力,大有能效。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 20px 10px 0px 20px; font-size: 15px; line-height: 28px; width: 390px;\">新一代 A8 芯片基于 64 位台式电脑级架构，可提供更为强劲的动力，即使是驱动这样一个更大的显示屏也游刃有余。M8 运动协处理器则能通过先进的传感器和全新的气压计来高效地收集数据。再加上提升的电池使用时间，iPhone 6 能让你拥有更多时间，去做到更多。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 320px 0px 0px; font-size: 38px; line-height: 55px; letter-spacing: 2px; color: rgb(51, 51, 51); text-align: center;\">一个相机，改变了摄影，<br/>又将颠覆摄像。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 20px 10px 0px 20px; font-size: 15px; line-height: 28px; text-align: center;\">越来越多的人喜欢用 iPhone 来随时随地拍摄照片。而现在，配备全新传感器的 iSight 摄像头不仅支持 Focus Pixels，还新增更多视频功能。比如你可以拍摄 60 fps 的 1080p HD 高清视频，240 fps 的慢动作视频，还可以选择延时摄影模式。因此，你将有更多理由用视频去捕捉更多的美好时刻，就像拍照一样简单自然。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 20px 10px 0px 160px; line-height: 22px;\">全新的传感器支持 Focus Pixels，<br/>可实现更快的自动对焦。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 100px 0px 0px 430px; font-size: 42px; line-height: 55px; letter-spacing: 2px; color: rgb(51, 51, 51);\">更快无线连接，<br/>连接更宽广。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 20px 10px 0px 430px; font-size: 15px; line-height: 28px; width: 350px;\">有了更快的 4G LTE 网络下载速度*，以及更多 LTE 频段支持，iPhone 6 能让你在更广阔的天地，更自由地遨游。而当你接入无线网络时，还能体验到快达 3 倍的无线网络速度。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 140px 0px 0px 20px; font-size: 42px; line-height: 55px; letter-spacing: 2px; color: rgb(51, 51, 51);\">安全，全凭指尖。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 20px 10px 0px 20px; font-size: 15px; line-height: 28px; width: 360px;\">突破性的 Touch ID 技术让你安全访问自己的 iPhone 有了独一无二的密码：你的指纹。并且，这一方式还能用来确认你在 iBooks 和 App Store 中的下载或购买，从而无需再输入密码。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 140px 0px 0px 430px; font-size: 42px; line-height: 55px; letter-spacing: 2px; color: rgb(51, 51, 51);\">有史以来极其重大的 iOS 版本</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 20px 10px 0px 430px; font-size: 15px; line-height: 28px; width: 350px;\">iOS 8 是了不起的先进移动操作系统，它以令人惊叹的全新功能和特性，将大显示屏的优势尽致呈现。对 iPhone 6 来说，这不仅仅是一次软硬件间宛如天成的绝佳匹配，更是创造了一种将每个细微之处，都变得大为出众的绝佳体验。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 20px 0px 5px 5px; font-size: 18px; line-height: 25px;\">重要说明：</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 5px 5px; font-size: 14px; line-height: 22px;\">1、1元云购将在商品到货后第一时间按订单顺序发出，颜色随机发货。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 5px 5px; font-size: 14px; line-height: 22px;\">2、商品获得者拥有苹果（Apple）iPhone 6 A1586 64G版 4G手机 10年免费使用权。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 0px 5px 5px; font-size: 14px; line-height: 22px;\">3、1元云购对本商品使用权在法律范围内拥有最终解释权。</p><p><br/></p>',1001,1029,'/productImg/show/1018/1441100359777.jpg',1,'goods_rq',NULL,'2'),(1019,'2015款 宝马（BMW）3系 320Li 豪华型 四门轿',459999,1,0,'459999','（商品价格已包含购置税、上牌费、保险费费用）以丰富设计套装，彰显独特品味！','<p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px 0px; font-size: 32px; line-height: 40px; text-align: center; letter-spacing: 3px;\">2015款 宝马3系 320Li 豪华型 四门轿车</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 15px 0px 0px; font-size: 18px; line-height: 28px; text-align: center; letter-spacing: 3px;\">以丰富设计套装，彰显独特品味！</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px 20px; font-size: 14px; line-height: 24px; text-indent: 28px;\"><span style=\"font-weight: bold;\">新BMW&nbsp;</span>3系四门轿车传承了BMW品牌的设计传统和特点。运动而优雅的外观创造出BMW品牌特有的统一效果，第一眼便能感受到其中蕴含的美感和动感。第6代车型再一次树立了新标准，成为全球最畅销的BMW车辆。 受车型悠久历史的启发，时尚而强健的设计凸显了BMW品牌的核心灵魂--始终通过BMW特有的比例令人心悦诚服。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-align: center;\"><img src=\"http://goodsimg.1yyg.com/GoodsInfo/20150821182136489.jpg\" style=\"border: 0px none; color: rgb(153, 153, 153);\"/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px 20px; font-size: 14px; line-height: 24px; text-indent: 28px;\">新BMW 3系首次充分利用了双肾型进气格栅的侧面效果。配有11根镀铬板条的BMW双肾型进气格栅给人以繁复但又醒目的印象。 此外，前裙板进气口中两个稍稍偏移的镀铬板条也与该设计套装的整体形象完美匹配。配备豪华设计套装的BMW 3系四门轿车极为经典而优雅的设计令人印象深刻。 审慎而优雅的高光镀铬设计元素将外部的独特性与运动灵活性结合在一起，成为该设计套装个性化配置的特征。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-align: center;\"><img src=\"http://goodsimg.1yyg.com/GoodsInfo/20150821182143801.jpg\" style=\"border: 0px none; color: rgb(153, 153, 153);\"/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px 20px; font-size: 14px; line-height: 24px; text-indent: 28px;\">多辐17英寸轻质铝合金轮圈与经过镀铬处理侧窗镶边，使配备豪华设计套装的BMW 3系四门轿车的侧视更显优雅。 沿着后保险杠分布的一条优雅的高光镀铬饰条进一步强调了豪华设计套装的经典设计。排气管饰件采用高光镀铬设计。新BMW 3系车型的出色动力表现主要得益于经典的BMW后轮驱动系统。每个车轮上的减震阀均通过传感器进行控制，以确保始终提供不折不扣的舒适性。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-align: center;\"><img src=\"http://goodsimg.1yyg.com/GoodsInfo/20150821182149480.jpg\" style=\"border: 0px none; color: rgb(153, 153, 153);\"/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px 20px; font-size: 14px; line-height: 24px; text-indent: 28px;\">带有哑光镀铬高光装饰性饰条的炫晶灰色优质装饰性木制表面，或带有精美镶嵌件的优雅的根木表面树立了独特性方面的新标准。 三种带有独特缝线的优质真皮套和一种织物套 (提供有四种经典的优雅颜色，带有独特缝线) 强调了豪华设计套装营造出的诱人氛围。这是唯一一个为收音机和自动空调控制单元提供镀铬条镶边的设计套装。 作为豪华设计套装一项与众不同的特点，车钥匙采用了带有镀铬装饰条的黑色设计。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-align: center;\"><img src=\"http://goodsimg.1yyg.com/GoodsInfo/20150821182155190.jpg\" style=\"border: 0px none; color: rgb(153, 153, 153);\"/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px 20px; font-size: 14px; line-height: 24px; text-indent: 28px;\">8速手自一体变速箱。最动态最舒适的节省方式： 8速手自一体变速箱不仅能够确保令人惊叹的轻柔换档操作，降低高速行驶时的背景噪音，而且还能显著降低耗油量。该变速箱可与包括入门级发动机在内的所有发动机搭配使用。8速手自一体变速箱换档过程迅速而舒适，如果不是有转速表的显示，驾驶者几乎难以察觉。 各个档位经过了精细的调校，因此缩短了发动机的换档行程，从而使您几乎察觉不到换档过程。 同时，发动机的性能水平始终保持在动力和效率完美配合的最佳状态。 全新开发的效率更高的变矩器离合器为系统提供辅助。 转速较高时，发动机转速因附加档位而下降，因此降低了油耗和发动机噪音。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-align: center;\"><img src=\"http://goodsimg.1yyg.com/GoodsInfo/20150821182202500.jpg\" style=\"border: 0px none; color: rgb(153, 153, 153);\"/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px 20px; font-size: 14px; line-height: 24px; text-indent: 28px;\">BMW 3系四门轿车上市时提供了四款采用最新BMW双涡管单涡轮增压技术的高扭矩、低油耗发动机。它们是BMW 3系四门轿车强劲动力的来源。 采用BMW双涡管单涡轮增压技术的全新高动力2.0升发动机是新一代四缸火花点火发动机中最强劲的一款发动机，它们沿用了备受赞誉的六缸汽油发动机的技术。 作为BMW高效动力策略 (BMW EfficientDynamics) 发展战略的组成部分，这些发动机经过了系统化的设计，目标是在增强动态驾驶性能的同时降低耗油量和排放值。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; text-align: center;\"><img src=\"http://goodsimg.1yyg.com/GoodsInfo/20150821182208232.jpg\" style=\"border: 0px none; color: rgb(153, 153, 153);\"/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 20px 0px 0px; font-size: 18px; line-height: 25px;\">重要说明：</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 10px 0px 0px; font-size: 14px; line-height: 25px;\">1、商品获得者拥有2015款 宝马（BMW）3系 320Li 豪华型 四门轿车 20年免费使用权。<br/>2、商品价格已包含购置税、上牌费、保险费费用，其中，不含居住证费用。因深圳地区限购，目前揭晓的商品将会上深圳、东莞或惠州的车牌。<br/>3、1元云购对本商品使用权在法律范围内拥有最终解释权。</p><p><br/></p>',1007,NULL,'/productImg/show/1019/1441100945972.jpg',1,'goods_tj',NULL,'2');

/*Table structure for table `productimage` */

DROP TABLE IF EXISTS `productimage`;

CREATE TABLE `productimage` (
  `productImageId` int(11) NOT NULL AUTO_INCREMENT,
  `piProductId` int(11) NOT NULL COMMENT '商品id',
  `image` varchar(200) NOT NULL COMMENT '图片',
  `imageType` varchar(10) NOT NULL COMMENT '图片类型',
  `Attribute_75` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`productImageId`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='商品图片表';

/*Data for the table `productimage` */

insert  into `productimage`(productImageId,piProductId,image,imageType,Attribute_75) values (78,1016,'1441097701280','.jpg','show'),(79,1016,'1441097701461','.jpg','show'),(80,1016,'1441097701575','.jpg','show'),(81,1017,'1441098173130','.jpg','show'),(82,1017,'1441098173251','.jpg','show'),(83,1017,'1441098173352','.jpg','show'),(84,1017,'1441098173456','.jpg','show'),(85,1018,'1441100494436','.jpg','show'),(86,1018,'1441100494653','.jpg','show'),(87,1018,'1441100494775','.jpg','show'),(88,1018,'1441100494885','.jpg','show'),(89,1018,'1441100494974','.jpg','show'),(90,1018,'1441100495057','.jpg','show'),(91,1018,'1441100495169','.jpg','show'),(92,1019,'1441101137342','.jpg','show'),(93,1019,'1441101137446','.jpg','show'),(94,1019,'1441101137553','.jpg','show'),(95,1019,'1441101137668','.jpg','show'),(96,1019,'1441101137750','.jpg','show');

/*Table structure for table `producttype` */

DROP TABLE IF EXISTS `producttype`;

CREATE TABLE `producttype` (
  `typeId` int(11) NOT NULL AUTO_INCREMENT,
  `typeName` varchar(50) NOT NULL COMMENT '类别名称',
  `fTypeId` varchar(32) NOT NULL COMMENT '父类别ID',
  `sTypeId` varchar(32) NOT NULL COMMENT '子类别id',
  `Attribute_70` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`typeId`)
) ENGINE=InnoDB AUTO_INCREMENT=1042 DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='商品类别';

/*Data for the table `producttype` */

insert  into `producttype`(typeId,typeName,fTypeId,sTypeId,Attribute_70) values (1000,'全部分类','0','0','type'),(1001,'手机数码','1000','0','type'),(1002,'电脑办公','1000','0','type'),(1003,'家用电器','1000','0','type'),(1004,'化妆个护','1000','0','type'),(1005,'钟表首饰','1000','0','type'),(1006,'礼品箱包','1000','0','type'),(1007,'其它商品','1000','0','type'),(1008,'上网本','1002','0','type'),(1009,'平板电脑','1002','0','type'),(1010,'眼霜','1004','0','type'),(1011,'洁面','1004','0','type'),(1012,'乳液面霜','1004','0','type'),(1013,'防晒隔离霜','1004','0','type'),(1014,'晚霜','1004','0','type'),(1015,'精华','1004','0','type'),(1016,'BB霜','1004','0','type'),(1017,'面膜','1004','0','type'),(1018,'口红','1004','0','type'),(1019,'女士香水','1004','0','type'),(1020,'手机','1001','0','type'),(1021,'便携相机','1001','0','type'),(1022,'单反相机','1001','0','type'),(1023,'数码相框','1001','0','type'),(1024,'MP3/MP4','1001','0','type'),(1025,'音箱','1001','0','type'),(1026,'笔记本','1002','0','type'),(1029,'苹果','1001','0','brand'),(1030,'三星','1001','0','brand'),(1031,'小米','1001','0','brand'),(1032,'联想','1001','0','brand'),(1033,'酷派','1001','0','brand'),(1034,'华为','1001','0','brand'),(1035,'手机话费','1001','0','type'),(1036,'中国移动','','0','brand'),(1037,'中国联通','','0','brand'),(1038,'中国电信','','0','brand'),(1039,'闪迪','','0','brand'),(1040,'金士顿','1001','0','brand'),(1041,'农行','1005','0','brand');

/*Table structure for table `qqgroup` */

DROP TABLE IF EXISTS `qqgroup`;

CREATE TABLE `qqgroup` (
  `qqid` int(11) NOT NULL AUTO_INCREMENT,
  `groupName` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '群名称',
  `groupNo` int(11) DEFAULT NULL COMMENT '群号码',
  `groupProvince` int(11) DEFAULT NULL COMMENT '群省份',
  `groupCity` int(11) DEFAULT NULL COMMENT '群市',
  `groupDistrict` int(11) DEFAULT NULL COMMENT '群区',
  `groupShowName` varchar(200) CHARACTER SET utf8 DEFAULT NULL COMMENT '所属地区文本',
  PRIMARY KEY (`qqid`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

/*Data for the table `qqgroup` */

insert  into `qqgroup`(qqid,groupName,groupNo,groupProvince,groupCity,groupDistrict,groupShowName) values (15,'测试3群',123123,4,17,239,'山西省 长治市 屯留县'),(17,'测试5群',213123,NULL,NULL,NULL,''),(19,'测试2群',12313,NULL,NULL,NULL,''),(20,'测试4群11',123123,NULL,NULL,NULL,''),(21,'测试5群1123',123123,NULL,NULL,NULL,''),(22,'123123',12323,NULL,NULL,NULL,''),(23,'测试5群1123213123',123123,NULL,NULL,NULL,''),(24,'测试4群12111',123123,NULL,NULL,NULL,''),(25,'21',1111111111,NULL,NULL,NULL,''),(26,'111',1222222222,NULL,NULL,NULL,''),(27,'312413',1111111111,NULL,NULL,NULL,''),(28,'测试5群',2313213,1,1,3,'北京市 北京市 崇文区');

/*Table structure for table `randomnumber` */

DROP TABLE IF EXISTS `randomnumber`;

CREATE TABLE `randomnumber` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '随机码ID',
  `spellbuyrecordId` int(11) NOT NULL COMMENT '购买记录ID',
  `userId` int(11) DEFAULT NULL COMMENT '用户ID',
  `productId` int(11) NOT NULL COMMENT '购买记录ID',
  `randomNumber` longtext COMMENT '随机码',
  `buyDate` varchar(25) CHARACTER SET utf8 DEFAULT NULL COMMENT '购买时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=299 DEFAULT CHARSET=latin1;

/*Data for the table `randomnumber` */

insert  into `randomnumber`(id,spellbuyrecordId,userId,productId,randomNumber,buyDate) values (1,1,1821,10003,'10000656,10000297,10000262,10000664,10000007,10000590,10000516,10000127,10000151,10000536','2015-08-03 20:14:27.398'),(2,2,1001639336,10015,'10003003','2015-08-12 13:17:44.452'),(3,3,2524,10012,'10003596,10001451,10001583,10001501,10003128','2015-08-12 13:21:19.374'),(4,4,4715,10002,'10000500,10000176,10000252,10003364,10000570,10003923,10003518,10000519','2015-08-12 13:25:37.560'),(5,5,6447,10007,'10000854,10000240,10000749,10001215,10000216,10000771,10000953,10000083,10000787,10000391,10000893,10001434,10001047,10000446,10000759','2015-08-12 13:26:12.794'),(6,6,1001639246,10004,'10000810','2015-08-12 13:29:29.475'),(7,7,6425,10010,'10000062','2015-08-12 13:33:20.879'),(8,8,4933,10006,'10000070,10000005,10000009','2015-08-12 13:33:25.885'),(9,9,2179,10014,'10000968,10000848,10003333,10000716,10005201','2015-08-12 13:34:07.176'),(10,10,1715,10003,'10000083,10000487,10000460,10000094,10000496','2015-08-12 13:35:04.446'),(11,11,2351,10006,'10000047,10000027','2015-08-12 13:36:04.695'),(12,12,2055,10006,'10000058','2015-08-12 13:39:00.762'),(13,13,2778,10012,'10000242,10001197,10000728,10002489,10000039,10000570','2015-08-12 13:39:35.390'),(14,14,7371,10003,'10000382,10000422','2015-08-12 13:40:57.412'),(15,15,7749,10002,'10003255,10002489,10001524','2015-08-12 13:41:29.373'),(16,16,4862,10002,'10003647,10001497,10004233,10000190,10002424','2015-08-12 13:41:00.273'),(17,17,3333,10009,'10000710,10000368','2015-08-12 13:44:30.358'),(18,18,4672,10003,'10000279,10000270','2015-08-12 13:46:56.203'),(19,19,2211,10007,'10000167','2015-08-12 13:46:29.295'),(20,20,2516,10010,'10000018,10000028,10000085','2015-08-12 13:50:22.459'),(21,21,6787,10014,'10002728,10003192','2015-08-12 13:51:30.440'),(22,22,3969,10009,'10000840,10000077','2015-08-12 13:52:44.705'),(23,23,5676,10012,'10002368,10003103','2015-08-12 13:56:07.207'),(24,24,2119,10005,'10000944,10003615','2015-08-12 13:59:15.565'),(25,25,6931,10007,'10001036,10001467,10001113,10000106,10000855,10000175,10000608,10000697,10001088,10001279,10000612,10000795,10001020,10000445,10000963,10000840,10000385,10000259,10000658,10001575,10000935,10000074,10000037','2015-08-12 14:02:55.068'),(26,26,2441,10010,'10000015,10000057','2015-08-12 14:05:30.166'),(27,27,4267,10011,'10000008,10000027','2015-08-12 14:19:50.222'),(28,28,6880,10003,'10000287','2015-08-12 14:22:03.162'),(29,29,2766,10005,'10005602','2015-08-12 14:30:24.926'),(30,30,5776,10015,'10002679','2015-08-12 14:36:46.077'),(31,31,3651,10014,'10004887,10000974,10002279,10003729,10004604,10005051,10003394,10000915,10002321,10003293,10004731,10000881,10000909,10001210,10003923,10002331,10002542,10001915,10003818,10004001,10000310,10002134,10000161,10002313,10004540,10001614,10004836,10002710,10004950,10000295','2015-08-12 14:38:57.344'),(32,32,6434,10003,'10000673,10000562','2015-08-12 15:00:54.408'),(33,33,6507,10005,'10003629,10004233,10003494,10004001,10000978,10000739,10002345,10003648,10001073,10002352,10005298,10002073,10001820,10003140,10000196,10004468,10001973,10002049,10002159,10003783,10002635,10005896,10000772','2015-08-12 15:00:43.292'),(34,34,7415,10013,'10000004,10000011','2015-08-12 15:00:29.323'),(35,35,6953,10003,'10000025,10000243,10000411,10000414','2015-08-12 15:02:21.179'),(36,36,4608,10010,'10000040,10000096','2015-08-12 15:07:51.741'),(37,37,3406,10010,'10000023,10000059,10000073,10000030,10000065,10000039,10000068,10000045,10000088,10000066,10000074,10000043,10000091,10000007,10000022,10000025,10000055,10000052,10000032,10000008,10000075,10000064,10000070,10000050,10000084','2015-08-12 15:21:08.865'),(38,38,5296,10011,'10000069','2015-08-12 15:22:02.710'),(39,39,6361,10010,'10000013,10000024,10000086,10000094','2015-08-12 15:24:44.270'),(40,40,2430,10009,'10000755,10000970,10001031,10001004','2015-08-12 15:25:30.964'),(41,41,2015,10002,'10000487,10004381,10003420,10004105,10000346,10003241,10003286,10002273,10001487,10003283,10000050,10001479,10000210,10004397,10000541,10002558,10000694,10002443,10002368,10001568','2015-08-12 15:31:59.567'),(42,42,2277,10006,'10000017,10000016','2015-08-12 15:35:06.331'),(43,43,4046,10012,'10000203,10001271,10000949,10002962','2015-08-12 15:39:33.140'),(44,44,2016,10005,'10003084,10005712','2015-08-12 15:43:56.818'),(45,45,1434,10002,'10001042,10004231','2015-08-12 16:08:21.185'),(46,46,2602,10011,'10000054','2015-08-12 16:14:42.832'),(47,47,7556,10011,'10000029,10000068,10000080,10000045,10000048','2015-08-12 16:17:12.842'),(48,48,3314,10002,'10004676,10002428,10003663,10000860,10000261,10003953,10004243,10002912,10004340,10002568,10003000,10000955,10002247,10001594,10002041,10003773,10000687,10003416,10004349,10002415,10003382,10001518,10001757,10001714,10004569','2015-08-12 16:21:46.124'),(49,49,2405,10012,'10001107,10004644,10002892,10001414,10001568,10000318','2015-08-12 16:28:09.217'),(50,50,1644,10006,'10000020,10000031','2015-08-12 16:30:14.410'),(51,51,2382,10009,'10000743,10000062,10000176,10000150,10000437,10000438','2015-08-12 16:41:22.913'),(52,52,4361,10006,'10000044,10000015','2015-08-12 16:56:22.904'),(53,53,7323,10010,'10000026,10000076','2015-08-12 17:08:40.750'),(54,54,1957,10007,'10001429,10001273,10000993,10001392,10000273,10000222,10001139,10000114,10000256,10001248,10000538,10001035,10001182,10000632,10000692,10000611,10001472,10000308,10001470,10000427','2015-08-12 17:08:01.578'),(55,55,1001639330,10013,'10000032,10000036','2015-08-12 17:10:28.780'),(56,56,1672,10007,'10000459,10001355','2015-08-12 17:11:44.116'),(57,57,2196,10010,'10000099,10000067,10000069,10000061,10000017,10000031,10000056,10000044,10000016,10000054','2015-08-12 17:15:23.695'),(58,58,2775,10007,'10000274,10000084','2015-08-12 17:19:25.008'),(59,59,5211,10006,'10000077','2015-08-12 17:27:40.930'),(60,60,5673,10006,'10000080,10000042,10000073,10000048','2015-08-12 17:31:56.176'),(61,61,5786,10011,'10000032,10000015','2015-08-12 17:33:52.703'),(62,62,1665,10008,'10001666,10000323,10001690,10001825','2015-08-12 17:36:39.192'),(63,63,1001639196,10007,'10000947,10000786','2015-08-12 17:40:24.562'),(64,64,5130,10005,'10002987,10003588,10004826,10005228,10004484,10006100,10001168,10002483','2015-08-12 17:41:41.291'),(65,65,7793,10006,'10000067,10000045,10000075,10000055,10000036,10000018,10000028,10000071,10000004,10000010,10000007,10000035,10000003,10000061,10000053,10000068,10000002,10000008,10000076,10000081,10000059,10000060,10000049,10000050,10000011,10000041,10000025,10000029,10000030,10000079,10000013,10000082,10000062,10000085,10000074,10000063,10000006,10000040,10000086,10000022,10000026,10000054,10000078,10000034,10000019,10000039,10000038,10000083,10000087,10000051','2015-08-12 17:48:27.151'),(66,66,4575,10006,'10000084','2015-08-12 17:48:48.790'),(67,67,4107,10004,'10000468,10001567,10002254','2015-08-12 17:49:09.085'),(68,68,5569,10006,'10000024','2015-08-12 17:57:41.032'),(69,69,7803,10014,'10002742,10001257','2015-08-12 18:02:16.454'),(70,70,3518,10014,'10005276','2015-08-12 18:03:09.189'),(71,71,5204,10002,'10001745','2015-08-12 18:05:24.411'),(72,72,2247,10007,'10000276','2015-08-12 18:10:29.569'),(73,73,4858,10007,'10000492','2015-08-12 18:10:17.119'),(74,74,1959,10013,'10000038,10000046,10000012,10000029,10000015','2015-08-12 18:12:38.115'),(75,75,4850,10009,'10000530,10001094','2015-08-12 18:15:55.097'),(76,76,2029,10013,'10000014,10000021','2015-08-12 18:17:47.377'),(77,77,7539,10006,'10000012,10000043','2015-08-12 18:22:51.163'),(78,78,3874,10013,'10000043,10000007,10000045,10000037,10000009,10000002,10000035,10000048,10000044,10000013,10000039,10000026,10000019,10000047,10000049,10000018,10000034,10000025,10000022,10000010,10000016,10000042,10000028,10000030,10000020,10000008,10000024,10000040,10000023','2015-08-13 11:29:48.154'),(79,79,2831,10014,'10004201,10004195,10003242,10004660,10000861,10004802','2015-08-13 11:40:43.237'),(80,80,4850,10006,'10000052,10000014','2015-08-13 11:41:46.072'),(81,81,3590,10015,'10000547,10001402,10002304,10000630','2015-08-13 11:43:16.080'),(82,82,6957,10003,'10000515,10000310','2015-08-13 11:47:18.796'),(83,83,7402,10003,'10000220,10000102,10000637','2015-08-13 11:55:01.371'),(84,84,3918,10005,'10003037,10003701','2015-08-13 11:57:19.060'),(85,85,5222,10002,'10000015','2015-08-13 12:03:34.218'),(86,86,7549,10015,'10002825,10001641,10001159,10001429,10002743,10001398,10002027,10001587,10001130,10002230,10000152,10003420,10001038,10003436,10003011,10000085,10000498,10003522,10003355,10003437,10001636,10000841,10003055,10003361,10001568,10002431,10002907,10003322,10003232,10002549,10003395,10002658,10000879,10001443,10001476,10002656,10001330,10000981,10000613,10000247,10003670,10003693,10000971,10000677,10003657,10000975,10002923,10003347,10000995,10001250','2015-08-13 12:06:11.119'),(87,87,7451,10003,'10000589,10000011,10000835','2015-08-13 12:06:50.065'),(88,88,5606,10010,'10000093,10000080','2015-08-13 12:17:28.669'),(89,89,1001639210,10006,'10000032','2015-08-13 12:19:24.413'),(90,90,7770,10012,'10003569,10004468,10003079,10001280,10003282','2015-08-13 12:22:49.347'),(91,91,3632,10004,'10001208','2015-08-13 12:25:36.220'),(92,92,2353,10004,'10002588,10001557,10000398,10001297,10002226,10001432,10000193,10001592,10000404,10001577,10002290,10000064,10002852,10001898,10000483,10002551,10001749,10000359,10001943,10000054,10003309,10001902,10002359','2015-08-13 12:35:48.780'),(93,93,3645,10002,'10001738,10000141','2015-08-13 12:36:34.953'),(94,94,1001639455,10004,'10001312,10002900','2015-08-13 12:39:27.380'),(95,95,2544,10007,'10000100','2015-08-13 12:44:37.461'),(96,96,2773,10006,'10000056','2015-08-13 12:46:38.515'),(97,97,3205,10009,'10000976','2015-08-13 12:51:08.041'),(98,98,1125,10010,'10000051,10000014','2015-08-13 12:56:38.002'),(99,99,4168,10011,'10000026,10000006,10000003,10000073,10000078,10000050,10000066,10000037,10000084,10000007,10000025,10000030,10000075,10000065,10000021,10000010,10000085,10000058,10000053,10000041','2015-08-13 13:01:53.567'),(100,100,3274,10011,'10000092,10000098','2015-08-13 13:01:10.124'),(101,101,2996,10008,'10002471','2015-08-13 13:11:52.438'),(102,102,3584,10003,'10000318','2015-08-13 13:11:14.751'),(103,103,6721,10003,'10000725','2015-08-13 13:17:12.703'),(104,104,7515,10004,'10002879,10000931,10000153,10000665,10001616,10002115,10002360,10002327,10001944,10001174,10002236,10001080,10003374,10002299,10001676,10003145,10002355,10001306,10001683,10001611,10000357,10001183,10002199,10002186,10002343,10002366,10002886,10002532,10002925,10000650','2015-08-13 13:20:07.992'),(105,105,6962,10011,'10000052','2015-08-13 13:23:06.452'),(106,106,4859,10010,'10000071,10000001,10000058,10000033,10000011','2015-08-13 13:33:52.258'),(107,107,1074,10007,'10001103,10001168,10001563,10000226,10000581','2015-08-13 13:38:18.373'),(108,108,6510,10003,'10000475,10000454,10000446,10000315,10000316','2015-08-13 13:47:18.578'),(109,109,1001639182,10006,'10000033,10000065,10000088,10000046,10000064,10000072','2015-08-13 13:50:40.834'),(110,110,3728,10004,'10002077,10001446,10002252','2015-08-13 13:57:11.829'),(111,111,5673,10016,'10000040','2015-08-13 13:59:32.724'),(112,112,5426,10010,'10000038,10000006','2015-08-13 14:03:50.981'),(113,113,2861,10015,'10001855','2015-08-13 14:05:04.923'),(114,114,3632,10012,'10003866,10002757','2015-08-13 14:08:32.529'),(115,115,4523,10015,'10000715','2015-08-13 14:11:45.566'),(116,116,1001639501,10012,'10000444,10002779','2015-08-13 14:12:07.800'),(117,117,4352,10004,'10001383,10000449,10001371','2015-08-13 14:19:29.859'),(118,118,3153,10014,'10001470,10000050','2015-08-13 14:21:19.326'),(119,119,5930,10007,'10001343,10001093','2015-08-13 14:27:19.231'),(120,120,7012,10003,'10000603,10000089','2015-08-13 14:27:07.085'),(121,121,5738,10002,'10002565,10000422,10003971','2015-08-13 14:30:51.117'),(122,122,4814,10005,'10003977','2015-08-13 14:32:37.802'),(123,123,6304,10016,'10000015,10000024','2015-08-13 14:32:54.171'),(124,124,5274,10009,'10000483','2015-08-13 14:35:48.381'),(125,125,2622,10015,'10003533,10003692','2015-08-13 14:39:41.364'),(126,126,4975,10014,'10004299','2015-08-13 14:43:22.477'),(127,127,6050,10016,'10000026,10000001,10000005,10000014,10000037','2015-08-13 14:48:48.680'),(128,128,2852,10014,'10003104,10005151','2015-08-13 14:48:16.004'),(129,129,2198,10008,'10000524','2015-08-13 15:04:54.182'),(130,130,2021,10011,'10000016,10000047,10000028','2015-08-13 15:07:12.731'),(131,131,4196,10014,'10002418,10000206,10005345,10001908','2015-08-13 15:08:01.077'),(132,132,7760,10007,'10000332','2015-08-13 15:11:57.218'),(133,133,1418,10008,'10000381','2015-08-13 15:13:53.236'),(134,134,5471,10005,'10003574','2015-08-13 15:14:17.911'),(135,135,4106,10002,'10002995,10002149','2015-08-13 15:17:31.885'),(136,136,5108,10011,'10000087','2015-08-13 15:18:27.100'),(137,137,5903,10010,'10000098,10000021,10000037,10000078,10000089,10000027','2015-08-13 15:20:12.509'),(138,138,2602,10007,'10001514','2015-08-13 15:20:52.508'),(139,139,2922,10011,'10000044,10000090','2015-08-13 15:26:10.962'),(140,140,3467,10010,'10000004,10000077,10000063,10000036,10000002','2015-08-13 15:29:06.464'),(141,141,6618,10009,'10000300','2015-08-13 15:31:32.487'),(142,142,6278,10012,'10003093','2015-08-13 15:34:59.492'),(143,143,1873,10002,'10003999,10000121','2015-08-13 15:36:53.340'),(144,144,6711,10007,'10001549','2015-08-13 15:43:06.864'),(145,145,1353,10009,'10001189,10001263,10000114,10000373,10000497,10000934,10000595,10000949,10000877,10001120,10000563,10000791,10001114,10000003,10000472,10000916,10001141,10000972,10000404,10000854,10000464,10000078,10000418','2015-08-13 15:49:56.114'),(146,146,5829,10003,'10000120,10000005,10000026,10000511,10000150,10000130,10000187,10000485,10000303,10000227,10000203,10000265,10000634,10000821,10000218,10000275,10000176,10000308,10000114,10000148','2015-08-13 15:51:12.975'),(147,147,3978,10014,'10005982,10005872,10004787,10001529,10001646','2015-08-13 15:58:43.815'),(148,148,2207,10014,'10001141,10004360,10005680,10004806,10002364,10005078,10004991,10003068,10001060,10002966','2015-08-13 16:00:48.041'),(149,149,3854,10014,'10004509','2015-08-13 16:02:14.922'),(150,150,6288,10005,'10001657,10001385,10000348,10000120,10000250,10005672,10000402,10004159,10003341,10002845,10004904,10002067,10001123,10005327,10001315,10006019,10001689,10003747,10005016,10002779,10005174,10000630,10003674,10003685,10001618','2015-08-13 16:09:33.631'),(151,151,5119,10009,'10001048,10000253','2015-08-13 16:09:23.598'),(152,152,6230,10010,'10000019','2015-08-13 16:09:40.119'),(153,153,1377,10005,'10003128,10004838','2015-08-13 16:13:29.483'),(154,154,6786,10016,'10000045','2015-08-13 16:16:38.167'),(155,155,3856,10002,'10000173','2015-08-13 16:20:31.022'),(156,156,3160,10005,'10004505,10005374','2015-08-13 16:33:20.877'),(157,157,2832,10015,'10003500,10002517','2015-08-13 16:40:33.734'),(158,158,6939,10004,'10003053,10000364,10001292,10003353,10002864,10001337,10002208,10001322,10002465,10000560,10000312,10000350,10002728,10002707,10003365,10000547','2015-08-13 16:43:13.371'),(159,159,2504,10008,'10000596,10000616,10000213','2015-08-13 16:47:27.640'),(160,160,3574,10006,'10000023','2015-08-13 16:48:27.226'),(161,161,5555,10009,'10000427,10000649','2015-08-13 16:53:58.464'),(162,162,2438,10008,'10001199','2015-08-13 16:55:27.492'),(163,163,2252,10007,'10000236','2015-08-13 16:57:21.008'),(164,164,7124,10003,'10000192,10000240,10000697,10000534,10000171,10000341,10000371,10000042,10000018,10000491','2015-08-13 17:05:12.491'),(165,165,6575,10009,'10000867','2015-08-13 17:06:02.607'),(166,166,3999,10009,'10000623,10001202','2015-08-13 17:10:21.673'),(167,167,2383,10005,'10005014,10002532,10005673,10002751,10001721','2015-08-13 17:16:18.960'),(168,168,3879,10008,'10000096,10000102','2015-08-13 17:19:31.254'),(169,169,7679,10004,'10000572,10002448,10001170,10002683,10002580','2015-08-13 17:20:07.756'),(170,170,5889,10009,'10000036','2015-08-13 17:20:43.846'),(171,171,3962,10008,'10002361','2015-08-13 17:21:37.031'),(172,172,5000,10006,'10000069','2015-08-13 17:21:39.038'),(173,173,4721,10006,'10000037,10000021,10000066','2015-08-13 17:22:09.378'),(174,174,5062,10007,'10000107,10001544','2015-08-13 17:24:54.129'),(175,175,1894,10004,'10001073,10000269,10000644,10001005,10000776,10000214,10001129,10003091,10001496,10002321','2015-08-13 17:24:37.376'),(176,176,2597,10015,'10000926,10002882,10002055,10001228,10001850,10000235,10001857,10000472,10003819,10000781,10002988,10002598,10000996,10003634,10000227,10002715,10003784,10000540,10001387,10001542,10001627,10003027,10000487,10001444,10003256,10003827,10002196,10003834,10002745,10001132','2015-08-13 17:27:38.555'),(177,177,2510,10005,'10003011,10004031','2015-08-13 17:27:29.136'),(178,178,5956,10003,'10000689,10000616','2015-08-13 17:31:14.649'),(179,179,2522,10004,'10002365,10001272,10001081,10001370,10000224','2015-08-13 17:32:04.182'),(180,180,1897,10004,'10001041','2015-08-13 17:32:57.024'),(181,181,7415,10014,'10000855','2015-08-13 17:33:18.338'),(182,182,4035,10012,'10002508','2015-08-13 17:35:58.541'),(183,183,5518,10005,'10001453','2015-08-13 17:36:09.769'),(184,184,6587,10003,'10000785,10000624,10000741,10000286,10000427,10000831,10000708,10000632,10000206,10000129,10000211,10000169,10000702,10000385,10000798,10000654,10000611,10000152,10000693,10000665,10000438,10000209,10000557','2015-08-13 17:36:32.856'),(185,185,1748,10002,'10003304,10000469','2015-08-13 17:36:12.514'),(186,186,4467,10016,'10000047','2015-08-13 17:37:48.056'),(187,187,2249,10016,'10000031,10000042','2015-08-13 17:38:42.503'),(188,188,3229,10003,'10000159','2015-08-13 17:40:29.556'),(189,189,3938,10004,'10002307','2015-08-13 17:42:37.759'),(190,190,3887,10011,'10000079,10000093','2015-08-13 17:42:18.691'),(191,191,2317,10016,'10000041,10000012','2015-08-13 17:43:22.412'),(192,192,3003,10011,'10000038,10000049','2015-08-13 17:44:58.835'),(193,193,3402,10004,'10000405','2015-08-14 12:51:04.966'),(194,194,3506,10004,'10003175','2015-08-14 12:53:07.160'),(195,195,3210,10008,'10001398','2015-08-14 12:53:37.393'),(196,196,7482,10010,'10000034','2015-08-14 12:56:43.739'),(197,197,6020,10007,'10000295,10001535','2015-08-14 12:56:35.810'),(198,198,5234,10014,'10004963,10001345,10003724','2015-08-14 12:57:28.270'),(199,199,6570,10009,'10000721,10000185,10001071,10001051','2015-08-14 13:28:52.617'),(200,200,1676,10002,'10003750','2015-08-14 13:31:49.555'),(201,201,6366,10008,'10001509','2015-08-14 13:32:44.820'),(202,202,1001639371,10008,'10002056,10002450,10001912,10000716,10002537,10000466,10000067','2015-08-14 13:36:21.553'),(203,203,6882,10012,'10003461,10000613,10003185,10000418,10004310,10001527','2015-08-14 13:37:51.574'),(204,204,3102,10015,'10001435,10003656','2015-08-14 13:38:09.902'),(205,205,2883,10015,'10000173,10003643,10003237','2015-08-14 13:41:47.986'),(206,206,1227,10014,'10002980,10005503','2015-08-14 13:42:53.549'),(207,207,3315,10011,'10000083,10000034,10000043,10000017,10000096','2015-08-14 13:44:36.655'),(208,208,7075,10003,'10000766,10000811,10000164,10000067,10000838,10000358','2015-08-14 13:44:31.840'),(209,209,7647,10009,'10000907,10000545,10000043,10000021,10001133','2015-08-14 13:44:10.723'),(210,210,1660,10014,'10005695,10003653','2015-08-14 13:45:15.440'),(211,211,1678,10009,'10001158','2015-08-14 13:46:38.060'),(212,212,1001639084,10012,'10000529,10002443','2015-08-14 13:46:15.216'),(213,213,3569,10008,'10000286,10000690,10001850,10000814,10000260,10001550,10001054,10000940','2015-08-14 13:50:27.467'),(214,214,2532,10009,'10000606,10001057','2015-08-14 13:53:13.220'),(215,215,2934,10009,'10001242,10000479','2015-08-14 13:53:13.045'),(216,216,3660,10007,'10000959','2015-08-14 13:54:23.872'),(217,217,7302,10015,'10001802','2015-08-14 13:56:22.768'),(218,218,5412,10014,'10000157,10005335,10002038,10003526,10002091,10002280,10003795,10005726,10000184,10005191,10002617,10002863,10001687,10004173,10000561','2015-08-14 13:59:31.740'),(219,219,2411,10012,'10002180','2015-08-14 14:03:51.829'),(220,220,2859,10003,'10000696,10000783,10000142,10000161,10000705,10000732,10000412,10000559,10000093,10000353,10000078,10000261,10000510,10000508,10000302,10000379,10000519,10000069,10000442,10000293,10000604,10000343,10000157,10000465,10000782,10000037,10000357,10000790,10000461,10000058,10000221,10000431,10000828,10000109,10000255,10000806,10000579,10000760,10000349,10000045,10000027,10000331,10000566,10000039,10000119,10000429,10000292,10000786,10000436,10000155','2015-08-14 14:03:31.658'),(221,221,2200,10008,'10000875,10001605,10000117,10000045,10001266,10002018,10001699,10000633,10002565,10000780,10002084,10002593,10001070,10000404,10001930,10001935,10001991,10002539,10002459,10001100,10000141,10000328,10000979,10000224,10002485,10000738,10002362,10001599,10002144,10000042,10001174,10000580,10000356,10002461,10001265,10001110,10000330,10001068,10000188,10001263','2015-08-14 14:05:08.891'),(222,222,4773,10009,'10000886,10000672,10000514,10000896,10000026,10001201,10000038,10000124,10000688,10001001,10000470,10000236,10000991,10000875,10000644,10001235,10000870,10000228,10000750,10000374,10000585,10000365,10001097,10000182,10000226,10000599,10000616,10000308,10001103,10001209,10000702,10000990,10000802,10000378,10001274,10001046,10000413,10000880,10000131,10000290,10000614,10000504,10000577,10000028,10001116,10000660,10000658,10000687,10001093,10000576','2015-08-14 14:06:47.792'),(223,223,5817,10012,'10002781','2015-08-14 14:06:49.801'),(224,224,7575,10005,'10000774','2015-08-14 14:07:09.033'),(225,225,6302,10015,'10001300,10003345,10000426,10002256,10002465,10001603,10001075','2015-08-14 14:13:11.084'),(226,226,6709,10003,'10000099,10000599,10000750,10000458,10000210,10000526,10000134,10000629','2015-08-14 14:13:32.337'),(227,227,2895,10011,'10000004,10000024','2015-08-14 14:14:13.708'),(228,228,4597,10012,'10000820','2015-08-14 14:15:16.051'),(229,229,1274,10007,'10000349,10001519,10000133,10000333,10000223,10000783,10000830,10000477,10000652,10000018,10000125,10001016,10001239,10000911,10000510,10000016,10000408,10001163,10000549,10001238,10000978,10001227,10000009,10000383,10000438,10000650,10000846,10000476,10001164,10000542,10000313,10000686,10000818,10001006,10000587,10000969,10001340,10000827,10000271,10001444,10000466,10001587,10000464,10000521,10000838,10000324,10000039,10001243,10000033,10001059,10000219,10000687,10000145,10001264,10001040,10001101,10000304,10000058,10001114,10000575,10000784,10000485,10000414,10000546,10000785,10001473,10000625,10001256,10001029,10001090,10000661,10000318,10001349,10000775,10001125,10000139,10001311,10000429,10001365,10000002,10000597,10001555,10000508,10001312,10000742,10000291,10000630,10001479,10000530,10000670,10001095,10000794,10001417,10000676,10001124,10000509,10001002,10000065,10001405,10000440','2015-08-14 14:17:20.676'),(230,230,2509,10015,'10001600','2015-08-14 14:18:37.072'),(231,231,6833,10003,'10000483,10000162,10000256,10000525,10000513','2015-08-14 14:19:01.328'),(232,232,4231,10014,'10000283,10004478,10005705,10001107,10005556,10005390,10003558,10004126,10002871,10003920,10005003','2015-08-14 14:20:30.393'),(233,233,4905,10007,'10000975,10001152,10000394,10000059,10001135','2015-08-14 14:25:35.934'),(234,234,1084,10002,'10001694,10000364','2015-08-14 14:27:08.240'),(235,235,6289,10009,'10001163','2015-08-14 14:28:14.800'),(236,236,2025,10014,'10005132,10000793,10003162','2015-08-14 14:29:53.683'),(237,237,4250,10010,'10000020','2015-08-14 14:34:31.876'),(238,238,2589,10004,'10001702,10001991,10002833,10001089','2015-08-14 14:34:08.325'),(239,239,3361,10003,'10000184,10000052,10000463,10000471','2015-08-14 14:36:26.614'),(240,240,6553,10010,'10000095,10000035,10000053,10000003,10000090,10000046,10000010','2015-08-14 15:13:42.938'),(241,241,2451,10003,'10000208','2015-08-14 15:16:00.670'),(242,242,2664,10002,'10001075,10002807,10000689','2015-08-14 15:18:33.039'),(243,243,1283,10004,'10001648,10002661,10001151,10002070,10000225,10001530,10001066,10002500','2015-08-14 15:20:40.962'),(244,244,1001639436,10002,'10003226,10002511,10003390,10004646,10003290,10000587,10001900,10003672,10002736,10000561,10003146,10002260,10002921,10003802,10000354,10004675,10003124,10004085,10001179,10003326,10001134,10001836,10000274,10003162,10003092,10001610,10004068,10002631,10004634,10004314','2015-08-14 15:21:46.995'),(245,245,6878,10005,'10005513','2015-08-14 15:21:24.970'),(246,246,3265,10008,'10002039,10002541,10001133,10000676,10002188','2015-08-14 15:24:16.428'),(247,247,5062,10014,'10002354','2015-08-14 15:24:29.009'),(248,248,3027,10005,'10005702','2015-08-14 15:26:58.068'),(249,249,1278,10015,'10002631,10000226','2015-08-14 15:28:52.471'),(250,250,6682,10007,'10000582,10000278','2015-08-14 15:29:37.163'),(251,251,2903,10011,'10000002','2015-08-14 15:30:43.035'),(252,252,1991,10005,'10001691,10006225,10002702,10005842,10005908,10005296,10000365,10002709,10000779,10006251,10004800,10003570,10003706,10006012,10005384,10001699,10005565,10000419,10000674,10002839,10001460,10004819,10000578','2015-08-14 15:31:28.416'),(253,253,1571,10009,'10000397,10001040,10001205','2015-08-14 15:32:33.619'),(254,254,7667,10002,'10002074,10003060,10002453,10002031,10001276','2015-08-14 15:39:31.353'),(255,255,1459,10004,'10002667,10002075','2015-08-14 15:43:35.987'),(256,256,1001639196,10004,'10002047,10000729','2015-08-14 15:46:29.740'),(257,257,5765,10008,'10001016,10001658','2015-08-14 15:48:10.028'),(258,258,7776,10003,'10000242,10000260','2015-08-14 15:51:24.996'),(259,259,1884,10007,'10000814','2015-08-14 15:55:03.592'),(260,260,7349,10010,'10000041','2015-08-14 15:55:27.780'),(261,261,7792,10012,'10001512','2015-08-14 16:17:50.206'),(262,262,5877,10005,'10005076,10003890,10004060,10001852,10003554,10004516,10003905,10004340','2015-08-14 16:18:15.450'),(263,263,1211,10015,'10002097','2015-08-14 16:18:16.108'),(264,264,7852,10005,'10005679,10002813,10006003,10003792,10001021','2015-08-14 16:18:21.408'),(265,265,1119,10004,'10002966,10003376,10001752,10003200,10000520,10000981,10002749,10001700,10000661,10001639,10001573,10002179,10003050,10000198,10001970,10001859,10003076,10002106,10003085,10001984,10000002,10002139,10000080,10001479,10000105,10001839,10000119,10001948,10001713,10000964,10002311,10000713,10002250,10002098,10000943,10003158,10000212,10000809,10003350,10001811,10001441,10002409,10002492,10000356,10001880,10002781,10000428,10002510,10002102,10002952,10001097,10002198,10000159,10001279,10003179,10001058,10000898,10000298,10002797,10002395,10001799,10000914,10002479,10002169,10001323,10001566,10002528,10003087,10001045,10002854,10002680,10002530,10002809,10003031,10002844,10002863,10001555,10000633,10003183,10002855,10002762,10002308,10002105,10001409,10001921,10002000,10000464,10002049,10003008,10002176,10000066,10001881,10000137,10002790,10001710,10001216,10002136,10003306,10000489,10000761','2015-08-14 16:19:57.739'),(266,266,3957,10008,'10001314,10001602,10001949,10001810','2015-08-14 16:22:09.318'),(267,267,4552,10004,'10002278','2015-08-14 16:22:19.069'),(268,268,3445,10007,'10001512,10000051,10000877','2015-08-14 16:25:52.692'),(269,269,5670,10002,'10003537,10003558,10000649,10003026,10001838,10001784,10003432,10000181,10000907,10001162,10002056,10003798,10002685,10004440,10002764,10001484,10000989,10002359,10001915,10000919,10001268,10002394,10001287','2015-08-14 16:27:49.215'),(270,270,4068,10004,'10002053,10001407','2015-08-14 16:47:59.281'),(271,271,3681,10007,'10001254,10001098,10001309','2015-08-14 16:53:44.602'),(272,272,7685,10002,'10001326,10001116','2015-08-14 16:54:01.216'),(273,273,7682,10007,'10000512,10000022','2015-08-14 16:57:50.143'),(274,274,4404,10009,'10000883,10000518,10000093,10000400,10001136','2015-08-14 17:06:56.637'),(275,275,1001639395,10010,'10000060,10000048','2015-08-14 17:08:32.309'),(276,276,2049,10014,'10002319,10001586','2015-08-14 17:20:31.009'),(277,277,3612,10015,'10001930','2015-08-14 17:21:36.291'),(278,278,3837,10009,'10000068','2015-08-14 17:23:16.611'),(279,279,1001639436,10015,'10003585,10001145,10001900,10002204,10002335,10002771,10000246,10003223,10003722,10003325,10003309,10003698,10002741,10002172,10002538,10000876,10000371,10000118,10000573,10002289,10002834','2015-08-14 17:24:08.902'),(280,280,1250,10002,'10003592,10004235','2015-08-14 17:30:53.269'),(281,281,1651,10012,'10004711,10000823','2015-08-14 17:31:39.978'),(282,282,1727,10005,'10000667,10001753,10002054,10002964,10002279','2015-08-14 17:37:51.038'),(283,283,2713,10012,'10000884,10004676,10001679','2015-08-14 17:38:43.868'),(284,284,6992,10015,'10001865,10002303,10001164','2015-08-18 14:17:06.477'),(285,285,6345,10002,'10000627,10001808','2015-08-18 14:18:41.551'),(286,286,7600,10004,'10002329,10000219,10003173,10003049,10002074','2015-08-18 14:30:52.131'),(287,287,3398,10014,'10000966,10005721','2015-08-18 14:32:10.129'),(288,288,1001639509,10012,'10003709,10001130,10004661,10003683,10003923,10004849,10002902,10003165,10003172,10000018','2015-08-18 14:35:51.064'),(289,289,6915,10015,'10003654,10003637','2015-08-18 14:39:30.260'),(290,290,5059,10014,'10005839,10002299,10000452,10005203','2015-08-18 14:41:27.257'),(291,291,3827,10008,'10000724,10001442,10001466,10001566,10001773,10001520,10002366,10001213,10001564,10002619,10001389,10001376,10002412,10000783,10000669,10000041,10000269,10000082,10002533,10002279,10002515,10002376,10001461','2015-08-18 14:42:17.239'),(292,292,4761,10002,'10000703,10003638,10001318,10001356,10002301','2015-08-18 14:45:15.522'),(293,293,1302,10015,'10002669,10003648,10000887,10001741,10003202,10000243,10000539','2015-08-18 14:48:34.960'),(294,294,5016,10011,'10000035','2015-08-18 14:50:30.127'),(295,295,3402,10002,'10003701','2015-08-18 14:50:36.840'),(296,296,6238,10015,'10003247,10000117','2015-08-18 14:51:08.829'),(297,297,1976,10009,'10000055,10000727','2015-08-18 14:55:20.808'),(298,298,1878,10014,'10003618,10000626','2015-08-18 15:03:48.802');

/*Table structure for table `recommend` */

DROP TABLE IF EXISTS `recommend`;

CREATE TABLE `recommend` (
  `recommendId` int(11) NOT NULL AUTO_INCREMENT,
  `spellbuyProductId` int(11) DEFAULT NULL,
  `date` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`recommendId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `recommend` */

insert  into `recommend`(recommendId,spellbuyProductId,date) values (1,14,'2014-11-05');

/*Table structure for table `s_city` */

DROP TABLE IF EXISTS `s_city`;

CREATE TABLE `s_city` (
  `cid` int(11) NOT NULL,
  `cname` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `cpostcode` char(6) COLLATE utf8_unicode_ci NOT NULL,
  `pid` int(11) NOT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

/*Data for the table `s_city` */

insert  into `s_city`(cid,cname,cpostcode,pid) values (1,'北京市','100000',1),(2,'天津市','100000',2),(3,'石家庄市','050000',3),(4,'唐山市','063000',3),(5,'秦皇岛市','066000',3),(6,'邯郸市','056000',3),(7,'邢台市','054000',3),(8,'保定市','071000',3),(9,'张家口市','075000',3),(10,'承德市','067000',3),(11,'沧州市','061000',3),(12,'廊坊市','065000',3),(13,'衡水市','053000',3),(14,'太原市','030000',4),(15,'大同市','037000',4),(16,'阳泉市','045000',4),(17,'长治市','046000',4),(18,'晋城市','048000',4),(19,'朔州市','036000',4),(20,'晋中市','030600',4),(21,'运城市','044000',4),(22,'忻州市','034000',4),(23,'临汾市','041000',4),(24,'吕梁市','030500',4),(25,'呼和浩特市','010000',5),(26,'包头市','014000',5),(27,'乌海市','016000',5),(28,'赤峰市','024000',5),(29,'通辽市','028000',5),(30,'鄂尔多斯市','010300',5),(31,'呼伦贝尔市','021000',5),(32,'巴彦淖尔市','014400',5),(33,'乌兰察布市','011800',5),(34,'兴安盟','137500',5),(35,'锡林郭勒盟','011100',5),(36,'阿拉善盟','016000',5),(37,'沈阳市','110000',6),(38,'大连市','116000',6),(39,'鞍山市','114000',6),(40,'抚顺市','113000',6),(41,'本溪市','117000',6),(42,'丹东市','118000',6),(43,'锦州市','121000',6),(44,'营口市','115000',6),(45,'阜新市','123000',6),(46,'辽阳市','111000',6),(47,'盘锦市','124000',6),(48,'铁岭市','112000',6),(49,'朝阳市','122000',6),(50,'葫芦岛市','125000',6),(51,'长春市','130000',7),(52,'吉林市','132000',7),(53,'四平市','136000',7),(54,'辽源市','136200',7),(55,'通化市','134000',7),(56,'白山市','134300',7),(57,'松原市','131100',7),(58,'白城市','137000',7),(59,'延边朝鲜族自治州','133000',7),(60,'哈尔滨市','150000',8),(61,'齐齐哈尔市','161000',8),(62,'鸡西市','158100',8),(63,'鹤岗市','154100',8),(64,'双鸭山市','155100',8),(65,'大庆市','163000',8),(66,'伊春市','152300',8),(67,'佳木斯市','154000',8),(68,'七台河市','154600',8),(69,'牡丹江市','157000',8),(70,'黑河市','164300',8),(71,'绥化市','152000',8),(72,'大兴安岭地区','165000',8),(73,'上海市','200000',9),(74,'南京市','210000',10),(75,'无锡市','214000',10),(76,'徐州市','221000',10),(77,'常州市','213000',10),(78,'苏州市','215000',10),(79,'南通市','226000',10),(80,'连云港市','222000',10),(81,'淮安市','223200',10),(82,'盐城市','224000',10),(83,'扬州市','225000',10),(84,'镇江市','212000',10),(85,'泰州市','225300',10),(86,'宿迁市','223800',10),(87,'杭州市','310000',11),(88,'宁波市','315000',11),(89,'温州市','325000',11),(90,'嘉兴市','314000',11),(91,'湖州市','313000',11),(92,'绍兴市','312000',11),(93,'金华市','321000',11),(94,'衢州市','324000',11),(95,'舟山市','316000',11),(96,'台州市','318000',11),(97,'丽水市','323000',11),(98,'合肥市','230000',12),(99,'芜湖市','241000',12),(100,'蚌埠市','233000',12),(101,'淮南市','232000',12),(102,'马鞍山市','243000',12),(103,'淮北市','235000',12),(104,'铜陵市','244000',12),(105,'安庆市','246000',12),(106,'黄山市','242700',12),(107,'滁州市','239000',12),(108,'阜阳市','236100',12),(109,'宿州市','234100',12),(110,'巢湖市','238000',12),(111,'六安市','237000',12),(112,'亳州市','236800',12),(113,'池州市','247100',12),(114,'宣城市','366000',12),(115,'福州市','350000',13),(116,'厦门市','361000',13),(117,'莆田市','351100',13),(118,'三明市','365000',13),(119,'泉州市','362000',13),(120,'漳州市','363000',13),(121,'南平市','353000',13),(122,'龙岩市','364000',13),(123,'宁德市','352100',13),(124,'南昌市','330000',14),(125,'景德镇市','333000',14),(126,'萍乡市','337000',14),(127,'九江市','332000',14),(128,'新余市','338000',14),(129,'鹰潭市','335000',14),(130,'赣州市','341000',14),(131,'吉安市','343000',14),(132,'宜春市','336000',14),(133,'抚州市','332900',14),(134,'上饶市','334000',14),(135,'济南市','250000',15),(136,'青岛市','266000',15),(137,'淄博市','255000',15),(138,'枣庄市','277100',15),(139,'东营市','257000',15),(140,'烟台市','264000',15),(141,'潍坊市','261000',15),(142,'济宁市','272100',15),(143,'泰安市','271000',15),(144,'威海市','265700',15),(145,'日照市','276800',15),(146,'莱芜市','271100',15),(147,'临沂市','276000',15),(148,'德州市','253000',15),(149,'聊城市','252000',15),(150,'滨州市','256600',15),(151,'荷泽市','255000',15),(152,'郑州市','450000',16),(153,'开封市','475000',16),(154,'洛阳市','471000',16),(155,'平顶山市','467000',16),(156,'安阳市','454900',16),(157,'鹤壁市','456600',16),(158,'新乡市','453000',16),(159,'焦作市','454100',16),(160,'濮阳市','457000',16),(161,'许昌市','461000',16),(162,'漯河市','462000',16),(163,'三门峡市','472000',16),(164,'南阳市','473000',16),(165,'商丘市','476000',16),(166,'信阳市','464000',16),(167,'周口市','466000',16),(168,'驻马店市','463000',16),(169,'武汉市','430000',17),(170,'黄石市','435000',17),(171,'十堰市','442000',17),(172,'宜昌市','443000',17),(173,'襄樊市','441000',17),(174,'鄂州市','436000',17),(175,'荆门市','448000',17),(176,'孝感市','432100',17),(177,'荆州市','434000',17),(178,'黄冈市','438000',17),(179,'咸宁市','437000',17),(180,'随州市','441300',17),(181,'恩施土家族苗族自治州','445000',17),(182,'神农架','442400',17),(183,'长沙市','410000',18),(184,'株洲市','412000',18),(185,'湘潭市','411100',18),(186,'衡阳市','421000',18),(187,'邵阳市','422000',18),(188,'岳阳市','414000',18),(189,'常德市','415000',18),(190,'张家界市','427000',18),(191,'益阳市','413000',18),(192,'郴州市','423000',18),(193,'永州市','425000',18),(194,'怀化市','418000',18),(195,'娄底市','417000',18),(196,'湘西土家族苗族自治州','416000',18),(197,'广州市','510000',19),(198,'韶关市','521000',19),(199,'深圳市','518000',19),(200,'珠海市','519000',19),(201,'汕头市','515000',19),(202,'佛山市','528000',19),(203,'江门市','529000',19),(204,'湛江市','524000',19),(205,'茂名市','525000',19),(206,'肇庆市','526000',19),(207,'惠州市','516000',19),(208,'梅州市','514000',19),(209,'汕尾市','516600',19),(210,'河源市','517000',19),(211,'阳江市','529500',19),(212,'清远市','511500',19),(213,'东莞市','511700',19),(214,'中山市','528400',19),(215,'潮州市','515600',19),(216,'揭阳市','522000',19),(217,'云浮市','527300',19),(218,'南宁市','530000',20),(219,'柳州市','545000',20),(220,'桂林市','541000',20),(221,'梧州市','543000',20),(222,'北海市','536000',20),(223,'防城港市','538000',20),(224,'钦州市','535000',20),(225,'贵港市','537100',20),(226,'玉林市','537000',20),(227,'百色市','533000',20),(228,'贺州市','542800',20),(229,'河池市','547000',20),(230,'来宾市','546100',20),(231,'崇左市','532200',20),(232,'海口市','570000',21),(233,'三亚市','572000',21),(234,'重庆市','400000',22),(235,'成都市','610000',23),(236,'自贡市','643000',23),(237,'攀枝花市','617000',23),(238,'泸州市','646100',23),(239,'德阳市','618000',23),(240,'绵阳市','621000',23),(241,'广元市','628000',23),(242,'遂宁市','629000',23),(243,'内江市','641000',23),(244,'乐山市','614000',23),(245,'南充市','637000',23),(246,'眉山市','612100',23),(247,'宜宾市','644000',23),(248,'广安市','638000',23),(249,'达州市','635000',23),(250,'雅安市','625000',23),(251,'巴中市','635500',23),(252,'资阳市','641300',23),(253,'阿坝藏族羌族自治州','624600',23),(254,'甘孜藏族自治州','626000',23),(255,'凉山彝族自治州','615000',23),(256,'贵阳市','55000',24),(257,'六盘水市','553000',24),(258,'遵义市','563000',24),(259,'安顺市','561000',24),(260,'铜仁地区','554300',24),(261,'黔西南布依族苗族自治州','551500',24),(262,'毕节地区','551700',24),(263,'黔东南苗族侗族自治州','551500',24),(264,'黔南布依族苗族自治州','550100',24),(265,'昆明市','650000',25),(266,'曲靖市','655000',25),(267,'玉溪市','653100',25),(268,'保山市','678000',25),(269,'昭通市','657000',25),(270,'丽江市','674100',25),(271,'思茅市','665000',25),(272,'临沧市','677000',25),(273,'楚雄彝族自治州','675000',25),(274,'红河哈尼族彝族自治州','654400',25),(275,'文山壮族苗族自治州','663000',25),(276,'西双版纳傣族自治州','666200',25),(277,'大理白族自治州','671000',25),(278,'德宏傣族景颇族自治州','678400',25),(279,'怒江傈僳族自治州','671400',25),(280,'迪庆藏族自治州','674400',25),(281,'拉萨市','850000',26),(282,'昌都地区','854000',26),(283,'山南地区','856000',26),(284,'日喀则地区','857000',26),(285,'那曲地区','852000',26),(286,'阿里地区','859100',26),(287,'林芝地区','860100',26),(288,'西安市','710000',27),(289,'铜川市','727000',27),(290,'宝鸡市','721000',27),(291,'咸阳市','712000',27),(292,'渭南市','714000',27),(293,'延安市','716000',27),(294,'汉中市','723000',27),(295,'榆林市','719000',27),(296,'安康市','725000',27),(297,'商洛市','711500',27),(298,'兰州市','730000',28),(299,'嘉峪关市','735100',28),(300,'金昌市','737100',28),(301,'白银市','730900',28),(302,'天水市','741000',28),(303,'武威市','733000',28),(304,'张掖市','734000',28),(305,'平凉市','744000',28),(306,'酒泉市','735000',28),(307,'庆阳市','744500',28),(308,'定西市','743000',28),(309,'陇南市','742100',28),(310,'临夏回族自治州','731100',28),(311,'甘南藏族自治州','747000',28),(312,'西宁市','810000',29),(313,'海东地区','810600',29),(314,'海北藏族自治州','810300',29),(315,'黄南藏族自治州','811300',29),(316,'海南藏族自治州','813000',29),(317,'果洛藏族自治州','814000',29),(318,'玉树藏族自治州','815000',29),(319,'海西蒙古族藏族自治州','817000',29),(320,'银川市','750000',30),(321,'石嘴山市','753000',30),(322,'吴忠市','751100',30),(323,'固原市','756000',30),(324,'中卫市','751700',30),(325,'乌鲁木齐市','830000',31),(326,'克拉玛依市','834000',31),(327,'吐鲁番地区','838000',31),(328,'哈密地区','839000',31),(329,'昌吉回族自治州','831100',31),(330,'博尔塔拉蒙古自治州','833400',31),(331,'巴音郭楞蒙古自治州','841000',31),(332,'阿克苏地区','843000',31),(333,'克孜勒苏柯尔克孜自治州','835600',31),(334,'喀什地区','844000',31),(335,'和田地区','848000',31),(336,'伊犁哈萨克自治州','833200',31),(337,'塔城地区','834700',31),(338,'阿勒泰地区','836500',31),(339,'石河子市','832000',31),(340,'阿拉尔市','843300',31),(341,'图木舒克市','843900',31),(342,'五家渠市','831300',31),(343,'香港特别行政区','000000',32),(344,'澳门特别行政区','000000',33),(345,'台湾省','000000',34);

/*Table structure for table `s_district` */

DROP TABLE IF EXISTS `s_district`;

CREATE TABLE `s_district` (
  `did` int(11) NOT NULL,
  `dname` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `cid` int(11) NOT NULL,
  PRIMARY KEY (`did`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

/*Data for the table `s_district` */

insert  into `s_district`(did,dname,cid) values (1,'东城区',1),(2,'西城区',1),(3,'崇文区',1),(4,'宣武区',1),(5,'朝阳区',1),(6,'丰台区',1),(7,'石景山区',1),(8,'海淀区',1),(9,'门头沟区',1),(10,'房山区',1),(11,'通州区',1),(12,'顺义区',1),(13,'昌平区',1),(14,'大兴区',1),(15,'怀柔区',1),(16,'平谷区',1),(17,'密云县',1),(18,'延庆县',1),(19,'和平区',2),(20,'河东区',2),(21,'河西区',2),(22,'南开区',2),(23,'河北区',2),(24,'红桥区',2),(25,'塘沽区',2),(26,'汉沽区',2),(27,'大港区',2),(28,'东丽区',2),(29,'西青区',2),(30,'津南区',2),(31,'北辰区',2),(32,'武清区',2),(33,'宝坻区',2),(34,'宁河县',2),(35,'静海县',2),(36,'蓟县',2),(37,'长安区',3),(38,'桥东区',3),(39,'桥西区',3),(40,'新华区',3),(41,'井陉矿区',3),(42,'裕华区',3),(43,'井陉县',3),(44,'正定县',3),(45,'栾城县',3),(46,'行唐县',3),(47,'灵寿县',3),(48,'高邑县',3),(49,'深泽县',3),(50,'赞皇县',3),(51,'无极县',3),(52,'平山县',3),(53,'元氏县',3),(54,'赵县',3),(55,'辛集市',3),(56,'藁城市',3),(57,'晋州市',3),(58,'新乐市',3),(59,'鹿泉市',3),(60,'路南区',4),(61,'路北区',4),(62,'古冶区',4),(63,'开平区',4),(64,'丰南区',4),(65,'丰润区',4),(66,'滦县',4),(67,'滦南县',4),(68,'乐亭县',4),(69,'迁西县',4),(70,'玉田县',4),(71,'唐海县',4),(72,'遵化市',4),(73,'迁安市',4),(74,'海港区',5),(75,'山海关区',5),(76,'北戴河区',5),(77,'青龙满族自治县',5),(78,'昌黎县',5),(79,'抚宁县',5),(80,'卢龙县',5),(81,'邯山区',6),(82,'丛台区',6),(83,'复兴区',6),(84,'峰峰矿区',6),(85,'邯郸县',6),(86,'临漳县',6),(87,'成安县',6),(88,'大名县',6),(89,'涉县',6),(90,'磁县',6),(91,'肥乡县',6),(92,'永年县',6),(93,'邱县',6),(94,'鸡泽县',6),(95,'广平县',6),(96,'馆陶县',6),(97,'魏县',6),(98,'曲周县',6),(99,'武安市',6),(100,'桥东区',7),(101,'桥西区',7),(102,'邢台县',7),(103,'临城县',7),(104,'内丘县',7),(105,'柏乡县',7),(106,'隆尧县',7),(107,'任县',7),(108,'南和县',7),(109,'宁晋县',7),(110,'巨鹿县',7),(111,'新河县',7),(112,'广宗县',7),(113,'平乡县',7),(114,'威县',7),(115,'清河县',7),(116,'临西县',7),(117,'南宫市',7),(118,'沙河市',7),(119,'新市区',8),(120,'北市区',8),(121,'南市区',8),(122,'满城县',8),(123,'清苑县',8),(124,'涞水县',8),(125,'阜平县',8),(126,'徐水县',8),(127,'定兴县',8),(128,'唐县',8),(129,'高阳县',8),(130,'容城县',8),(131,'涞源县',8),(132,'望都县',8),(133,'安新县',8),(134,'易县',8),(135,'曲阳县',8),(136,'蠡县',8),(137,'顺平县',8),(138,'博野县',8),(139,'雄县',8),(140,'涿州市',8),(141,'定州市',8),(142,'安国市',8),(143,'高碑店市',8),(144,'桥东区',9),(145,'桥西区',9),(146,'宣化区',9),(147,'下花园区',9),(148,'宣化县',9),(149,'张北县',9),(150,'康保县',9),(151,'沽源县',9),(152,'尚义县',9),(153,'蔚县',9),(154,'阳原县',9),(155,'怀安县',9),(156,'万全县',9),(157,'怀来县',9),(158,'涿鹿县',9),(159,'赤城县',9),(160,'崇礼县',9),(161,'双桥区',10),(162,'双滦区',10),(163,'鹰手营子矿区',10),(164,'承德县',10),(165,'兴隆县',10),(166,'平泉县',10),(167,'滦平县',10),(168,'隆化县',10),(169,'丰宁满族自治县',10),(170,'宽城满族自治县',10),(171,'围场满族蒙古族自治县',10),(172,'新华区',11),(173,'运河区',11),(174,'沧县',11),(175,'青县',11),(176,'东光县',11),(177,'海兴县',11),(178,'盐山县',11),(179,'肃宁县',11),(180,'南皮县',11),(181,'吴桥县',11),(182,'献县',11),(183,'孟村回族自治县',11),(184,'泊头市',11),(185,'任丘市',11),(186,'黄骅市',11),(187,'河间市',11),(188,'安次区',12),(189,'广阳区',12),(190,'固安县',12),(191,'永清县',12),(192,'香河县',12),(193,'大城县',12),(194,'文安县',12),(195,'大厂回族自治县',12),(196,'霸州市',12),(197,'三河市',12),(198,'桃城区',13),(199,'枣强县',13),(200,'武邑县',13),(201,'武强县',13),(202,'饶阳县',13),(203,'安平县',13),(204,'故城县',13),(205,'景县',13),(206,'阜城县',13),(207,'冀州市',13),(208,'深州市',13),(209,'小店区',14),(210,'迎泽区',14),(211,'杏花岭区',14),(212,'尖草坪区',14),(213,'万柏林区',14),(214,'晋源区',14),(215,'清徐县',14),(216,'阳曲县',14),(217,'娄烦县',14),(218,'古交市',14),(219,'城区',15),(220,'矿区',15),(221,'南郊区',15),(222,'新荣区',15),(223,'阳高县',15),(224,'天镇县',15),(225,'广灵县',15),(226,'灵丘县',15),(227,'浑源县',15),(228,'左云县',15),(229,'大同县',15),(230,'城区',16),(231,'矿区',16),(232,'郊区',16),(233,'平定县',16),(234,'盂县',16),(235,'城区',17),(236,'郊区',17),(237,'长治县',17),(238,'襄垣县',17),(239,'屯留县',17),(240,'平顺县',17),(241,'黎城县',17),(242,'壶关县',17),(243,'长子县',17),(244,'武乡县',17),(245,'沁县',17),(246,'沁源县',17),(247,'潞城市',17),(248,'城区',18),(249,'沁水县',18),(250,'阳城县',18),(251,'陵川县',18),(252,'泽州县',18),(253,'高平市',18),(254,'朔城区',19),(255,'平鲁区',19),(256,'山阴县',19),(257,'应县',19),(258,'右玉县',19),(259,'怀仁县',19),(260,'榆次区',20),(261,'榆社县',20),(262,'左权县',20),(263,'和顺县',20),(264,'昔阳县',20),(265,'寿阳县',20),(266,'太谷县',20),(267,'祁县',20),(268,'平遥县',20),(269,'灵石县',20),(270,'介休市',20),(271,'盐湖区',21),(272,'临猗县',21),(273,'万荣县',21),(274,'闻喜县',21),(275,'稷山县',21),(276,'新绛县',21),(277,'绛县',21),(278,'垣曲县',21),(279,'夏县',21),(280,'平陆县',21),(281,'芮城县',21),(282,'永济市',21),(283,'河津市',21),(284,'忻府区',22),(285,'定襄县',22),(286,'五台县',22),(287,'代县',22),(288,'繁峙县',22),(289,'宁武县',22),(290,'静乐县',22),(291,'神池县',22),(292,'五寨县',22),(293,'岢岚县',22),(294,'河曲县',22),(295,'保德县',22),(296,'偏关县',22),(297,'原平市',22),(298,'尧都区',23),(299,'曲沃县',23),(300,'翼城县',23),(301,'襄汾县',23),(302,'洪洞县',23),(303,'古县',23),(304,'安泽县',23),(305,'浮山县',23),(306,'吉县',23),(307,'乡宁县',23),(308,'大宁县',23),(309,'隰县',23),(310,'永和县',23),(311,'蒲县',23),(312,'汾西县',23),(313,'侯马市',23),(314,'霍州市',23),(315,'离石区',24),(316,'文水县',24),(317,'交城县',24),(318,'兴县',24),(319,'临县',24),(320,'柳林县',24),(321,'石楼县',24),(322,'岚县',24),(323,'方山县',24),(324,'中阳县',24),(325,'交口县',24),(326,'孝义市',24),(327,'汾阳市',24),(328,'新城区',25),(329,'回民区',25),(330,'玉泉区',25),(331,'赛罕区',25),(332,'土默特左旗',25),(333,'托克托县',25),(334,'和林格尔县',25),(335,'清水河县',25),(336,'武川县',25),(337,'东河区',26),(338,'昆都仑区',26),(339,'青山区',26),(340,'石拐区',26),(341,'白云矿区',26),(342,'九原区',26),(343,'土默特右旗',26),(344,'固阳县',26),(345,'达尔罕茂明安联合旗',26),(346,'海勃湾区',27),(347,'海南区',27),(348,'乌达区',27),(349,'红山区',28),(350,'元宝山区',28),(351,'松山区',28),(352,'阿鲁科尔沁旗',28),(353,'巴林左旗',28),(354,'巴林右旗',28),(355,'林西县',28),(356,'克什克腾旗',28),(357,'翁牛特旗',28),(358,'喀喇沁旗',28),(359,'宁城县',28),(360,'敖汉旗',28),(361,'科尔沁区',29),(362,'科尔沁左翼中旗',29),(363,'科尔沁左翼后旗',29),(364,'开鲁县',29),(365,'库伦旗',29),(366,'奈曼旗',29),(367,'扎鲁特旗',29),(368,'霍林郭勒市',29),(369,'东胜区',30),(370,'达拉特旗',30),(371,'准格尔旗',30),(372,'鄂托克前旗',30),(373,'鄂托克旗',30),(374,'杭锦旗',30),(375,'乌审旗',30),(376,'伊金霍洛旗',30),(377,'海拉尔区',31),(378,'阿荣旗',31),(379,'莫力达瓦达斡尔族自治旗',31),(380,'鄂伦春自治旗',31),(381,'鄂温克族自治旗',31),(382,'陈巴尔虎旗',31),(383,'新巴尔虎左旗',31),(384,'新巴尔虎右旗',31),(385,'满洲里市',31),(386,'牙克石市',31),(387,'扎兰屯市',31),(388,'额尔古纳市',31),(389,'根河市',31),(390,'临河区',32),(391,'五原县',32),(392,'磴口县',32),(393,'乌拉特前旗',32),(394,'乌拉特中旗',32),(395,'乌拉特后旗',32),(396,'杭锦后旗',32),(397,'集宁区',33),(398,'卓资县',33),(399,'化德县',33),(400,'商都县',33),(401,'兴和县',33),(402,'凉城县',33),(403,'察哈尔右翼前旗',33),(404,'察哈尔右翼中旗',33),(405,'察哈尔右翼后旗',33),(406,'四子王旗',33),(407,'丰镇市',33),(408,'乌兰浩特市',34),(409,'阿尔山市',34),(410,'科尔沁右翼前旗',34),(411,'科尔沁右翼中旗',34),(412,'扎赉特旗',34),(413,'突泉县',34),(414,'二连浩特市',35),(415,'锡林浩特市',35),(416,'阿巴嘎旗',35),(417,'苏尼特左旗',35),(418,'苏尼特右旗',35),(419,'东乌珠穆沁旗',35),(420,'西乌珠穆沁旗',35),(421,'太仆寺旗',35),(422,'镶黄旗',35),(423,'正镶白旗',35),(424,'正蓝旗',35),(425,'多伦县',35),(426,'阿拉善左旗',36),(427,'阿拉善右旗',36),(428,'额济纳旗',36),(429,'和平区',37),(430,'沈河区',37),(431,'大东区',37),(432,'皇姑区',37),(433,'铁西区',37),(434,'苏家屯区',37),(435,'东陵区',37),(436,'新城子区',37),(437,'于洪区',37),(438,'辽中县',37),(439,'康平县',37),(440,'法库县',37),(441,'新民市',37),(442,'中山区',38),(443,'西岗区',38),(444,'沙河口区',38),(445,'甘井子区',38),(446,'旅顺口区',38),(447,'金州区',38),(448,'长海县',38),(449,'瓦房店市',38),(450,'普兰店市',38),(451,'庄河市',38),(452,'铁东区',39),(453,'铁西区',39),(454,'立山区',39),(455,'千山区',39),(456,'台安县',39),(457,'岫岩满族自治县',39),(458,'海城市',39),(459,'新抚区',40),(460,'东洲区',40),(461,'望花区',40),(462,'顺城区',40),(463,'抚顺县',40),(464,'新宾满族自治县',40),(465,'清原满族自治县',40),(466,'平山区',41),(467,'溪湖区',41),(468,'明山区',41),(469,'南芬区',41),(470,'本溪满族自治县',41),(471,'桓仁满族自治县',41),(472,'元宝区',42),(473,'振兴区',42),(474,'振安区',42),(475,'宽甸满族自治县',42),(476,'东港市',42),(477,'凤城市',42),(478,'古塔区',43),(479,'凌河区',43),(480,'太和区',43),(481,'黑山县',43),(482,'义县',43),(483,'凌海市',43),(484,'北宁市',43),(485,'站前区',44),(486,'西市区',44),(487,'鲅鱼圈区',44),(488,'老边区',44),(489,'盖州市',44),(490,'大石桥市',44),(491,'海州区',45),(492,'新邱区',45),(493,'太平区',45),(494,'清河门区',45),(495,'细河区',45),(496,'阜新蒙古族自治县',45),(497,'彰武县',45),(498,'白塔区',46),(499,'文圣区',46),(500,'宏伟区',46),(501,'弓长岭区',46),(502,'太子河区',46),(503,'辽阳县',46),(504,'灯塔市',46),(505,'双台子区',47),(506,'兴隆台区',47),(507,'大洼县',47),(508,'盘山县',47),(509,'银州区',48),(510,'清河区',48),(511,'铁岭县',48),(512,'西丰县',48),(513,'昌图县',48),(514,'调兵山市',48),(515,'开原市',48),(516,'双塔区',49),(517,'龙城区',49),(518,'朝阳县',49),(519,'建平县',49),(520,'喀喇沁左翼蒙古族自治县',49),(521,'北票市',49),(522,'凌源市',49),(523,'连山区',50),(524,'龙港区',50),(525,'南票区',50),(526,'绥中县',50),(527,'建昌县',50),(528,'兴城市',50),(529,'南关区',51),(530,'宽城区',51),(531,'朝阳区',51),(532,'二道区',51),(533,'绿园区',51),(534,'双阳区',51),(535,'农安县',51),(536,'九台市',51),(537,'榆树市',51),(538,'德惠市',51),(539,'昌邑区',52),(540,'龙潭区',52),(541,'船营区',52),(542,'丰满区',52),(543,'永吉县',52),(544,'蛟河市',52),(545,'桦甸市',52),(546,'舒兰市',52),(547,'磐石市',52),(548,'铁西区',53),(549,'铁东区',53),(550,'梨树县',53),(551,'伊通满族自治县',53),(552,'公主岭市',53),(553,'双辽市',53),(554,'龙山区',54),(555,'西安区',54),(556,'东丰县',54),(557,'东辽县',54),(558,'东昌区',55),(559,'二道江区',55),(560,'通化县',55),(561,'辉南县',55),(562,'柳河县',55),(563,'梅河口市',55),(564,'集安市',55),(565,'八道江区',56),(566,'抚松县',56),(567,'靖宇县',56),(568,'长白朝鲜族自治县',56),(569,'江源县',56),(570,'临江市',56),(571,'宁江区',57),(572,'前郭尔罗斯蒙古族自治县',57),(573,'长岭县',57),(574,'乾安县',57),(575,'扶余县',57),(576,'洮北区',58),(577,'镇赉县',58),(578,'通榆县',58),(579,'洮南市',58),(580,'大安市',58),(581,'延吉市',59),(582,'图们市',59),(583,'敦化市',59),(584,'珲春市',59),(585,'龙井市',59),(586,'和龙市',59),(587,'汪清县',59),(588,'安图县',59),(589,'道里区',60),(590,'南岗区',60),(591,'道外区',60),(592,'香坊区',60),(593,'动力区',60),(594,'平房区',60),(595,'松北区',60),(596,'呼兰区',60),(597,'依兰县',60),(598,'方正县',60),(599,'宾县',60),(600,'巴彦县',60),(601,'木兰县',60),(602,'通河县',60),(603,'延寿县',60),(604,'阿城市',60),(605,'双城市',60),(606,'尚志市',60),(607,'五常市',60),(608,'龙沙区',61),(609,'建华区',61),(610,'铁锋区',61),(611,'昂昂溪区',61),(612,'富拉尔基区',61),(613,'碾子山区',61),(614,'梅里斯达斡尔族区',61),(615,'龙江县',61),(616,'依安县',61),(617,'泰来县',61),(618,'甘南县',61),(619,'富裕县',61),(620,'克山县',61),(621,'克东县',61),(622,'拜泉县',61),(623,'讷河市',61),(624,'鸡冠区',62),(625,'恒山区',62),(626,'滴道区',62),(627,'梨树区',62),(628,'城子河区',62),(629,'麻山区',62),(630,'鸡东县',62),(631,'虎林市',62),(632,'密山市',62),(633,'向阳区',63),(634,'工农区',63),(635,'南山区',63),(636,'兴安区',63),(637,'东山区',63),(638,'兴山区',63),(639,'萝北县',63),(640,'绥滨县',63),(641,'尖山区',64),(642,'岭东区',64),(643,'四方台区',64),(644,'宝山区',64),(645,'集贤县',64),(646,'友谊县',64),(647,'宝清县',64),(648,'饶河县',64),(649,'萨尔图区',65),(650,'龙凤区',65),(651,'让胡路区',65),(652,'红岗区',65),(653,'大同区',65),(654,'肇州县',65),(655,'肇源县',65),(656,'林甸县',65),(657,'杜尔伯特蒙古族自治县',65),(658,'伊春区',66),(659,'南岔区',66),(660,'友好区',66),(661,'西林区',66),(662,'翠峦区',66),(663,'新青区',66),(664,'美溪区',66),(665,'金山屯区',66),(666,'五营区',66),(667,'乌马河区',66),(668,'汤旺河区',66),(669,'带岭区',66),(670,'乌伊岭区',66),(671,'红星区',66),(672,'上甘岭区',66),(673,'嘉荫县',66),(674,'铁力市',66),(675,'永红区',67),(676,'向阳区',67),(677,'前进区',67),(678,'东风区',67),(679,'郊区',67),(680,'桦南县',67),(681,'桦川县',67),(682,'汤原县',67),(683,'抚远县',67),(684,'同江市',67),(685,'富锦市',67),(686,'新兴区',68),(687,'桃山区',68),(688,'茄子河区',68),(689,'勃利县',68),(690,'东安区',69),(691,'阳明区',69),(692,'爱民区',69),(693,'西安区',69),(694,'东宁县',69),(695,'林口县',69),(696,'绥芬河市',69),(697,'海林市',69),(698,'宁安市',69),(699,'穆棱市',69),(700,'爱辉区',70),(701,'嫩江县',70),(702,'逊克县',70),(703,'孙吴县',70),(704,'北安市',70),(705,'五大连池市',70),(706,'北林区',71),(707,'望奎县',71),(708,'兰西县',71),(709,'青冈县',71),(710,'庆安县',71),(711,'明水县',71),(712,'绥棱县',71),(713,'安达市',71),(714,'肇东市',71),(715,'海伦市',71),(716,'呼玛县',72),(717,'塔河县',72),(718,'漠河县',72),(719,'黄浦区',73),(720,'卢湾区',73),(721,'徐汇区',73),(722,'长宁区',73),(723,'静安区',73),(724,'普陀区',73),(725,'闸北区',73),(726,'虹口区',73),(727,'杨浦区',73),(728,'闵行区',73),(729,'宝山区',73),(730,'嘉定区',73),(731,'浦东新区',73),(732,'金山区',73),(733,'松江区',73),(734,'青浦区',73),(735,'南汇区',73),(736,'奉贤区',73),(737,'崇明县',73),(738,'玄武区',74),(739,'白下区',74),(740,'秦淮区',74),(741,'建邺区',74),(742,'鼓楼区',74),(743,'下关区',74),(744,'浦口区',74),(745,'栖霞区',74),(746,'雨花台区',74),(747,'江宁区',74),(748,'六合区',74),(749,'溧水县',74),(750,'高淳县',74),(751,'崇安区',75),(752,'南长区',75),(753,'北塘区',75),(754,'锡山区',75),(755,'惠山区',75),(756,'滨湖区',75),(757,'江阴市',75),(758,'宜兴市',75),(759,'鼓楼区',76),(760,'云龙区',76),(761,'九里区',76),(762,'贾汪区',76),(763,'泉山区',76),(764,'丰县',76),(765,'沛县',76),(766,'铜山县',76),(767,'睢宁县',76),(768,'新沂市',76),(769,'邳州市',76),(770,'天宁区',77),(771,'钟楼区',77),(772,'戚墅堰区',77),(773,'新北区',77),(774,'武进区',77),(775,'溧阳市',77),(776,'金坛市',77),(777,'沧浪区',78),(778,'平江区',78),(779,'金阊区',78),(780,'虎丘区',78),(781,'吴中区',78),(782,'相城区',78),(783,'常熟市',78),(784,'张家港市',78),(785,'昆山市',78),(786,'吴江市',78),(787,'太仓市',78),(788,'崇川区',79),(789,'港闸区',79),(790,'海安县',79),(791,'如东县',79),(792,'启东市',79),(793,'如皋市',79),(794,'通州市',79),(795,'海门市',79),(796,'连云区',80),(797,'新浦区',80),(798,'海州区',80),(799,'赣榆县',80),(800,'东海县',80),(801,'灌云县',80),(802,'灌南县',80),(803,'清河区',81),(804,'楚州区',81),(805,'淮阴区',81),(806,'清浦区',81),(807,'涟水县',81),(808,'洪泽县',81),(809,'盱眙县',81),(810,'金湖县',81),(811,'亭湖区',82),(812,'盐都区',82),(813,'响水县',82),(814,'滨海县',82),(815,'阜宁县',82),(816,'射阳县',82),(817,'建湖县',82),(818,'东台市',82),(819,'大丰市',82),(820,'广陵区',83),(821,'邗江区',83),(822,'维扬区',83),(823,'宝应县',83),(824,'仪征市',83),(825,'高邮市',83),(826,'江都市',83),(827,'京口区',84),(828,'润州区',84),(829,'丹徒区',84),(830,'丹阳市',84),(831,'扬中市',84),(832,'句容市',84),(833,'海陵区',85),(834,'高港区',85),(835,'兴化市',85),(836,'靖江市',85),(837,'泰兴市',85),(838,'姜堰市',85),(839,'宿城区',86),(840,'宿豫区',86),(841,'沭阳县',86),(842,'泗阳县',86),(843,'泗洪县',86),(844,'上城区',87),(845,'下城区',87),(846,'江干区',87),(847,'拱墅区',87),(848,'西湖区',87),(849,'滨江区',87),(850,'萧山区',87),(851,'余杭区',87),(852,'桐庐县',87),(853,'淳安县',87),(854,'建德市',87),(855,'富阳市',87),(856,'临安市',87),(857,'海曙区',88),(858,'江东区',88),(859,'江北区',88),(860,'北仑区',88),(861,'镇海区',88),(862,'鄞州区',88),(863,'象山县',88),(864,'宁海县',88),(865,'余姚市',88),(866,'慈溪市',88),(867,'奉化市',88),(868,'鹿城区',89),(869,'龙湾区',89),(870,'瓯海区',89),(871,'洞头县',89),(872,'永嘉县',89),(873,'平阳县',89),(874,'苍南县',89),(875,'文成县',89),(876,'泰顺县',89),(877,'瑞安市',89),(878,'乐清市',89),(879,'秀城区',90),(880,'秀洲区',90),(881,'嘉善县',90),(882,'海盐县',90),(883,'海宁市',90),(884,'平湖市',90),(885,'桐乡市',90),(886,'吴兴区',91),(887,'南浔区',91),(888,'德清县',91),(889,'长兴县',91),(890,'安吉县',91),(891,'越城区',92),(892,'绍兴县',92),(893,'新昌县',92),(894,'诸暨市',92),(895,'上虞市',92),(896,'嵊州市',92),(897,'婺城区',93),(898,'金东区',93),(899,'武义县',93),(900,'浦江县',93),(901,'磐安县',93),(902,'兰溪市',93),(903,'义乌市',93),(904,'东阳市',93),(905,'永康市',93),(906,'柯城区',94),(907,'衢江区',94),(908,'常山县',94),(909,'开化县',94),(910,'龙游县',94),(911,'江山市',94),(912,'定海区',95),(913,'普陀区',95),(914,'岱山县',95),(915,'嵊泗县',95),(916,'椒江区',96),(917,'黄岩区',96),(918,'路桥区',96),(919,'玉环县',96),(920,'三门县',96),(921,'天台县',96),(922,'仙居县',96),(923,'温岭市',96),(924,'临海市',96),(925,'莲都区',97),(926,'青田县',97),(927,'缙云县',97),(928,'遂昌县',97),(929,'松阳县',97),(930,'云和县',97),(931,'庆元县',97),(932,'景宁畲族自治县',97),(933,'龙泉市',97),(934,'瑶海区',98),(935,'庐阳区',98),(936,'蜀山区',98),(937,'包河区',98),(938,'长丰县',98),(939,'肥东县',98),(940,'肥西县',98),(941,'镜湖区',99),(942,'马塘区',99),(943,'新芜区',99),(944,'鸠江区',99),(945,'芜湖县',99),(946,'繁昌县',99),(947,'南陵县',99),(948,'龙子湖区',100),(949,'蚌山区',100),(950,'禹会区',100),(951,'淮上区',100),(952,'怀远县',100),(953,'五河县',100),(954,'固镇县',100),(955,'大通区',101),(956,'田家庵区',101),(957,'谢家集区',101),(958,'八公山区',101),(959,'潘集区',101),(960,'凤台县',101),(961,'金家庄区',102),(962,'花山区',102),(963,'雨山区',102),(964,'当涂县',102),(965,'杜集区',103),(966,'相山区',103),(967,'烈山区',103),(968,'濉溪县',103),(969,'铜官山区',104),(970,'狮子山区',104),(971,'郊区',104),(972,'铜陵县',104),(973,'迎江区',105),(974,'大观区',105),(975,'郊区',105),(976,'怀宁县',105),(977,'枞阳县',105),(978,'潜山县',105),(979,'太湖县',105),(980,'宿松县',105),(981,'望江县',105),(982,'岳西县',105),(983,'桐城市',105),(984,'屯溪区',106),(985,'黄山区',106),(986,'徽州区',106),(987,'歙县',106),(988,'休宁县',106),(989,'黟县',106),(990,'祁门县',106),(991,'琅琊区',107),(992,'南谯区',107),(993,'来安县',107),(994,'全椒县',107),(995,'定远县',107),(996,'凤阳县',107),(997,'天长市',107),(998,'明光市',107),(999,'颍州区',108),(1000,'颍东区',108),(1001,'颍泉区',108),(1002,'临泉县',108),(1003,'太和县',108),(1004,'阜南县',108),(1005,'颍上县',108),(1006,'界首市',108),(1007,'埇桥区',109),(1008,'砀山县',109),(1009,'萧县',109),(1010,'灵璧县',109),(1011,'泗县',109),(1012,'居巢区',110),(1013,'庐江县',110),(1014,'无为县',110),(1015,'含山县',110),(1016,'和县',110),(1017,'金安区',111),(1018,'裕安区',111),(1019,'寿县',111),(1020,'霍邱县',111),(1021,'舒城县',111),(1022,'金寨县',111),(1023,'霍山县',111),(1024,'谯城区',112),(1025,'涡阳县',112),(1026,'蒙城县',112),(1027,'利辛县',112),(1028,'贵池区',113),(1029,'东至县',113),(1030,'石台县',113),(1031,'青阳县',113),(1032,'宣州区',114),(1033,'郎溪县',114),(1034,'广德县',114),(1035,'泾县',114),(1036,'绩溪县',114),(1037,'旌德县',114),(1038,'宁国市',114),(1039,'鼓楼区',115),(1040,'台江区',115),(1041,'仓山区',115),(1042,'马尾区',115),(1043,'晋安区',115),(1044,'闽侯县',115),(1045,'连江县',115),(1046,'罗源县',115),(1047,'闽清县',115),(1048,'永泰县',115),(1049,'平潭县',115),(1050,'福清市',115),(1051,'长乐市',115),(1052,'思明区',116),(1053,'海沧区',116),(1054,'湖里区',116),(1055,'集美区',116),(1056,'同安区',116),(1057,'翔安区',116),(1058,'城厢区',117),(1059,'涵江区',117),(1060,'荔城区',117),(1061,'秀屿区',117),(1062,'仙游县',117),(1063,'梅列区',118),(1064,'三元区',118),(1065,'明溪县',118),(1066,'清流县',118),(1067,'宁化县',118),(1068,'大田县',118),(1069,'尤溪县',118),(1070,'沙县',118),(1071,'将乐县',118),(1072,'泰宁县',118),(1073,'建宁县',118),(1074,'永安市',118),(1075,'鲤城区',119),(1076,'丰泽区',119),(1077,'洛江区',119),(1078,'泉港区',119),(1079,'惠安县',119),(1080,'安溪县',119),(1081,'永春县',119),(1082,'德化县',119),(1083,'金门县',119),(1084,'石狮市',119),(1085,'晋江市',119),(1086,'南安市',119),(1087,'芗城区',120),(1088,'龙文区',120),(1089,'云霄县',120),(1090,'漳浦县',120),(1091,'诏安县',120),(1092,'长泰县',120),(1093,'东山县',120),(1094,'南靖县',120),(1095,'平和县',120),(1096,'华安县',120),(1097,'龙海市',120),(1098,'延平区',121),(1099,'顺昌县',121),(1100,'浦城县',121),(1101,'光泽县',121),(1102,'松溪县',121),(1103,'政和县',121),(1104,'邵武市',121),(1105,'武夷山市',121),(1106,'建瓯市',121),(1107,'建阳市',121),(1108,'新罗区',122),(1109,'长汀县',122),(1110,'永定县',122),(1111,'上杭县',122),(1112,'武平县',122),(1113,'连城县',122),(1114,'漳平市',122),(1115,'蕉城区',123),(1116,'霞浦县',123),(1117,'古田县',123),(1118,'屏南县',123),(1119,'寿宁县',123),(1120,'周宁县',123),(1121,'柘荣县',123),(1122,'福安市',123),(1123,'福鼎市',123),(1124,'东湖区',124),(1125,'西湖区',124),(1126,'青云谱区',124),(1127,'湾里区',124),(1128,'青山湖区',124),(1129,'南昌县',124),(1130,'新建县',124),(1131,'安义县',124),(1132,'进贤县',124),(1133,'昌江区',125),(1134,'珠山区',125),(1135,'浮梁县',125),(1136,'乐平市',125),(1137,'安源区',126),(1138,'湘东区',126),(1139,'莲花县',126),(1140,'上栗县',126),(1141,'芦溪县',126),(1142,'庐山区',127),(1143,'浔阳区',127),(1144,'九江县',127),(1145,'武宁县',127),(1146,'修水县',127),(1147,'永修县',127),(1148,'德安县',127),(1149,'星子县',127),(1150,'都昌县',127),(1151,'湖口县',127),(1152,'彭泽县',127),(1153,'瑞昌市',127),(1154,'渝水区',128),(1155,'分宜县',128),(1156,'月湖区',129),(1157,'余江县',129),(1158,'贵溪市',129),(1159,'章贡区',130),(1160,'赣县',130),(1161,'信丰县',130),(1162,'大余县',130),(1163,'上犹县',130),(1164,'崇义县',130),(1165,'安远县',130),(1166,'龙南县',130),(1167,'定南县',130),(1168,'全南县',130),(1169,'宁都县',130),(1170,'于都县',130),(1171,'兴国县',130),(1172,'会昌县',130),(1173,'寻乌县',130),(1174,'石城县',130),(1175,'瑞金市',130),(1176,'南康市',130),(1177,'吉州区',131),(1178,'青原区',131),(1179,'吉安县',131),(1180,'吉水县',131),(1181,'峡江县',131),(1182,'新干县',131),(1183,'永丰县',131),(1184,'泰和县',131),(1185,'遂川县',131),(1186,'万安县',131),(1187,'安福县',131),(1188,'永新县',131),(1189,'井冈山市',131),(1190,'袁州区',132),(1191,'奉新县',132),(1192,'万载县',132),(1193,'上高县',132),(1194,'宜丰县',132),(1195,'靖安县',132),(1196,'铜鼓县',132),(1197,'丰城市',132),(1198,'樟树市',132),(1199,'高安市',132),(1200,'临川区',133),(1201,'南城县',133),(1202,'黎川县',133),(1203,'南丰县',133),(1204,'崇仁县',133),(1205,'乐安县',133),(1206,'宜黄县',133),(1207,'金溪县',133),(1208,'资溪县',133),(1209,'东乡县',133),(1210,'广昌县',133),(1211,'信州区',134),(1212,'上饶县',134),(1213,'广丰县',134),(1214,'玉山县',134),(1215,'铅山县',134),(1216,'横峰县',134),(1217,'弋阳县',134),(1218,'余干县',134),(1219,'鄱阳县',134),(1220,'万年县',134),(1221,'婺源县',134),(1222,'德兴市',134),(1223,'历下区',135),(1224,'市中区',135),(1225,'槐荫区',135),(1226,'天桥区',135),(1227,'历城区',135),(1228,'长清区',135),(1229,'平阴县',135),(1230,'济阳县',135),(1231,'商河县',135),(1232,'章丘市',135),(1233,'市南区',136),(1234,'市北区',136),(1235,'四方区',136),(1236,'黄岛区',136),(1237,'崂山区',136),(1238,'李沧区',136),(1239,'城阳区',136),(1240,'胶州市',136),(1241,'即墨市',136),(1242,'平度市',136),(1243,'胶南市',136),(1244,'莱西市',136),(1245,'淄川区',137),(1246,'张店区',137),(1247,'博山区',137),(1248,'临淄区',137),(1249,'周村区',137),(1250,'桓台县',137),(1251,'高青县',137),(1252,'沂源县',137),(1253,'市中区',138),(1254,'薛城区',138),(1255,'峄城区',138),(1256,'台儿庄区',138),(1257,'山亭区',138),(1258,'滕州市',138),(1259,'东营区',139),(1260,'河口区',139),(1261,'垦利县',139),(1262,'利津县',139),(1263,'广饶县',139),(1264,'芝罘区',140),(1265,'福山区',140),(1266,'牟平区',140),(1267,'莱山区',140),(1268,'长岛县',140),(1269,'龙口市',140),(1270,'莱阳市',140),(1271,'莱州市',140),(1272,'蓬莱市',140),(1273,'招远市',140),(1274,'栖霞市',140),(1275,'海阳市',140),(1276,'潍城区',141),(1277,'寒亭区',141),(1278,'坊子区',141),(1279,'奎文区',141),(1280,'临朐县',141),(1281,'昌乐县',141),(1282,'青州市',141),(1283,'诸城市',141),(1284,'寿光市',141),(1285,'安丘市',141),(1286,'高密市',141),(1287,'昌邑市',141),(1288,'市中区',142),(1289,'任城区',142),(1290,'微山县',142),(1291,'鱼台县',142),(1292,'金乡县',142),(1293,'嘉祥县',142),(1294,'汶上县',142),(1295,'泗水县',142),(1296,'梁山县',142),(1297,'曲阜市',142),(1298,'兖州市',142),(1299,'邹城市',142),(1300,'泰山区',143),(1301,'岱岳区',143),(1302,'宁阳县',143),(1303,'东平县',143),(1304,'新泰市',143),(1305,'肥城市',143),(1306,'环翠区',144),(1307,'文登市',144),(1308,'荣成市',144),(1309,'乳山市',144),(1310,'东港区',145),(1311,'岚山区',145),(1312,'五莲县',145),(1313,'莒县',145),(1314,'莱城区',146),(1315,'钢城区',146),(1316,'兰山区',147),(1317,'罗庄区',147),(1318,'河东区',147),(1319,'沂南县',147),(1320,'郯城县',147),(1321,'沂水县',147),(1322,'苍山县',147),(1323,'费县',147),(1324,'平邑县',147),(1325,'莒南县',147),(1326,'蒙阴县',147),(1327,'临沭县',147),(1328,'德城区',148),(1329,'陵县',148),(1330,'宁津县',148),(1331,'庆云县',148),(1332,'临邑县',148),(1333,'齐河县',148),(1334,'平原县',148),(1335,'夏津县',148),(1336,'武城县',148),(1337,'乐陵市',148),(1338,'禹城市',148),(1339,'东昌府区',149),(1340,'阳谷县',149),(1341,'莘县',149),(1342,'茌平县',149),(1343,'东阿县',149),(1344,'冠县',149),(1345,'高唐县',149),(1346,'临清市',149),(1347,'滨城区',150),(1348,'惠民县',150),(1349,'阳信县',150),(1350,'无棣县',150),(1351,'沾化县',150),(1352,'博兴县',150),(1353,'邹平县',150),(1354,'牡丹区',151),(1355,'曹县',151),(1356,'单县',151),(1357,'成武县',151),(1358,'巨野县',151),(1359,'郓城县',151),(1360,'鄄城县',151),(1361,'定陶县',151),(1362,'东明县',151),(1363,'中原区',152),(1364,'二七区',152),(1365,'管城回族区',152),(1366,'金水区',152),(1367,'上街区',152),(1368,'惠济区',152),(1369,'中牟县',152),(1370,'巩义市',152),(1371,'荥阳市',152),(1372,'新密市',152),(1373,'新郑市',152),(1374,'登封市',152),(1375,'龙亭区',153),(1376,'顺河回族区',153),(1377,'鼓楼区',153),(1378,'南关区',153),(1379,'郊区',153),(1380,'杞县',153),(1381,'通许县',153),(1382,'尉氏县',153),(1383,'开封县',153),(1384,'兰考县',153),(1385,'老城区',154),(1386,'西工区',154),(1387,'廛河回族区',154),(1388,'涧西区',154),(1389,'吉利区',154),(1390,'洛龙区',154),(1391,'孟津县',154),(1392,'新安县',154),(1393,'栾川县',154),(1394,'嵩县',154),(1395,'汝阳县',154),(1396,'宜阳县',154),(1397,'洛宁县',154),(1398,'伊川县',154),(1399,'偃师市',154),(1400,'新华区',155),(1401,'卫东区',155),(1402,'石龙区',155),(1403,'湛河区',155),(1404,'宝丰县',155),(1405,'叶县',155),(1406,'鲁山县',155),(1407,'郏县',155),(1408,'舞钢市',155),(1409,'汝州市',155),(1410,'文峰区',156),(1411,'北关区',156),(1412,'殷都区',156),(1413,'龙安区',156),(1414,'安阳县',156),(1415,'汤阴县',156),(1416,'滑县',156),(1417,'内黄县',156),(1418,'林州市',156),(1419,'鹤山区',157),(1420,'山城区',157),(1421,'淇滨区',157),(1422,'浚县',157),(1423,'淇县',157),(1424,'红旗区',158),(1425,'卫滨区',158),(1426,'凤泉区',158),(1427,'牧野区',158),(1428,'新乡县',158),(1429,'获嘉县',158),(1430,'原阳县',158),(1431,'延津县',158),(1432,'封丘县',158),(1433,'长垣县',158),(1434,'卫辉市',158),(1435,'辉县市',158),(1436,'解放区',159),(1437,'中站区',159),(1438,'马村区',159),(1439,'山阳区',159),(1440,'修武县',159),(1441,'博爱县',159),(1442,'武陟县',159),(1443,'温县',159),(1444,'济源市',159),(1445,'沁阳市',159),(1446,'孟州市',159),(1447,'华龙区',160),(1448,'清丰县',160),(1449,'南乐县',160),(1450,'范县',160),(1451,'台前县',160),(1452,'濮阳县',160),(1453,'魏都区',161),(1454,'许昌县',161),(1455,'鄢陵县',161),(1456,'襄城县',161),(1457,'禹州市',161),(1458,'长葛市',161),(1459,'源汇区',162),(1460,'郾城区',162),(1461,'召陵区',162),(1462,'舞阳县',162),(1463,'临颍县',162),(1464,'市辖区',163),(1465,'湖滨区',163),(1466,'渑池县',163),(1467,'陕县',163),(1468,'卢氏县',163),(1469,'义马市',163),(1470,'灵宝市',163),(1471,'宛城区',164),(1472,'卧龙区',164),(1473,'南召县',164),(1474,'方城县',164),(1475,'西峡县',164),(1476,'镇平县',164),(1477,'内乡县',164),(1478,'淅川县',164),(1479,'社旗县',164),(1480,'唐河县',164),(1481,'新野县',164),(1482,'桐柏县',164),(1483,'邓州市',164),(1484,'梁园区',165),(1485,'睢阳区',165),(1486,'民权县',165),(1487,'睢县',165),(1488,'宁陵县',165),(1489,'柘城县',165),(1490,'虞城县',165),(1491,'夏邑县',165),(1492,'永城市',165),(1493,'浉河区',166),(1494,'平桥区',166),(1495,'罗山县',166),(1496,'光山县',166),(1497,'新县',166),(1498,'商城县',166),(1499,'固始县',166),(1500,'潢川县',166),(1501,'淮滨县',166),(1502,'息县',166),(1503,'川汇区',167),(1504,'扶沟县',167),(1505,'西华县',167),(1506,'商水县',167),(1507,'沈丘县',167),(1508,'郸城县',167),(1509,'淮阳县',167),(1510,'太康县',167),(1511,'鹿邑县',167),(1512,'项城市',167),(1513,'驿城区',168),(1514,'西平县',168),(1515,'上蔡县',168),(1516,'平舆县',168),(1517,'正阳县',168),(1518,'确山县',168),(1519,'泌阳县',168),(1520,'汝南县',168),(1521,'遂平县',168),(1522,'新蔡县',168),(1523,'江岸区',169),(1524,'江汉区',169),(1525,'硚口区',169),(1526,'汉阳区',169),(1527,'武昌区',169),(1528,'青山区',169),(1529,'洪山区',169),(1530,'东西湖区',169),(1531,'汉南区',169),(1532,'蔡甸区',169),(1533,'江夏区',169),(1534,'黄陂区',169),(1535,'新洲区',169),(1536,'黄石港区',170),(1537,'西塞山区',170),(1538,'下陆区',170),(1539,'铁山区',170),(1540,'阳新县',170),(1541,'大冶市',170),(1542,'茅箭区',171),(1543,'张湾区',171),(1544,'郧县',171),(1545,'郧西县',171),(1546,'竹山县',171),(1547,'竹溪县',171),(1548,'房县',171),(1549,'丹江口市',171),(1550,'西陵区',172),(1551,'伍家岗区',172),(1552,'点军区',172),(1553,'猇亭区',172),(1554,'夷陵区',172),(1555,'远安县',172),(1556,'兴山县',172),(1557,'秭归县',172),(1558,'长阳土家族自治县',172),(1559,'五峰土家族自治县',172),(1560,'宜都市',172),(1561,'当阳市',172),(1562,'枝江市',172),(1563,'襄城区',173),(1564,'樊城区',173),(1565,'襄阳区',173),(1566,'南漳县',173),(1567,'谷城县',173),(1568,'保康县',173),(1569,'老河口市',173),(1570,'枣阳市',173),(1571,'宜城市',173),(1572,'梁子湖区',174),(1573,'华容区',174),(1574,'鄂城区',174),(1575,'东宝区',175),(1576,'掇刀区',175),(1577,'京山县',175),(1578,'沙洋县',175),(1579,'钟祥市',175),(1580,'孝南区',176),(1581,'孝昌县',176),(1582,'大悟县',176),(1583,'云梦县',176),(1584,'应城市',176),(1585,'安陆市',176),(1586,'汉川市',176),(1587,'沙市区',177),(1588,'荆州区',177),(1589,'公安县',177),(1590,'监利县',177),(1591,'江陵县',177),(1592,'石首市',177),(1593,'洪湖市',177),(1594,'松滋市',177),(1595,'黄州区',178),(1596,'团风县',178),(1597,'红安县',178),(1598,'罗田县',178),(1599,'英山县',178),(1600,'浠水县',178),(1601,'蕲春县',178),(1602,'黄梅县',178),(1603,'麻城市',178),(1604,'武穴市',178),(1605,'咸安区',179),(1606,'嘉鱼县',179),(1607,'通城县',179),(1608,'崇阳县',179),(1609,'通山县',179),(1610,'赤壁市',179),(1611,'曾都区',180),(1612,'广水市',180),(1613,'恩施市',181),(1614,'利川市',181),(1615,'建始县',181),(1616,'巴东县',181),(1617,'宣恩县',181),(1618,'咸丰县',181),(1619,'来凤县',181),(1620,'鹤峰县',181),(1621,'仙桃市',182),(1622,'潜江市',182),(1623,'天门市',182),(1624,'神农架林区',182),(1625,'芙蓉区',183),(1626,'天心区',183),(1627,'岳麓区',183),(1628,'开福区',183),(1629,'雨花区',183),(1630,'长沙县',183),(1631,'望城县',183),(1632,'宁乡县',183),(1633,'浏阳市',183),(1634,'荷塘区',184),(1635,'芦淞区',184),(1636,'石峰区',184),(1637,'天元区',184),(1638,'株洲县',184),(1639,'攸县',184),(1640,'茶陵县',184),(1641,'炎陵县',184),(1642,'醴陵市',184),(1643,'雨湖区',185),(1644,'岳塘区',185),(1645,'湘潭县',185),(1646,'湘乡市',185),(1647,'韶山市',185),(1648,'珠晖区',186),(1649,'雁峰区',186),(1650,'石鼓区',186),(1651,'蒸湘区',186),(1652,'南岳区',186),(1653,'衡阳县',186),(1654,'衡南县',186),(1655,'衡山县',186),(1656,'衡东县',186),(1657,'祁东县',186),(1658,'耒阳市',186),(1659,'常宁市',186),(1660,'双清区',187),(1661,'大祥区',187),(1662,'北塔区',187),(1663,'邵东县',187),(1664,'新邵县',187),(1665,'邵阳县',187),(1666,'隆回县',187),(1667,'洞口县',187),(1668,'绥宁县',187),(1669,'新宁县',187),(1670,'城步苗族自治县',187),(1671,'武冈市',187),(1672,'岳阳楼区',188),(1673,'云溪区',188),(1674,'君山区',188),(1675,'岳阳县',188),(1676,'华容县',188),(1677,'湘阴县',188),(1678,'平江县',188),(1679,'汨罗市',188),(1680,'临湘市',188),(1681,'武陵区',189),(1682,'鼎城区',189),(1683,'安乡县',189),(1684,'汉寿县',189),(1685,'澧县',189),(1686,'临澧县',189),(1687,'桃源县',189),(1688,'石门县',189),(1689,'津市市',189),(1690,'永定区',190),(1691,'武陵源区',190),(1692,'慈利县',190),(1693,'桑植县',190),(1694,'资阳区',191),(1695,'赫山区',191),(1696,'南县',191),(1697,'桃江县',191),(1698,'安化县',191),(1699,'沅江市',191),(1700,'北湖区',192),(1701,'苏仙区',192),(1702,'桂阳县',192),(1703,'宜章县',192),(1704,'永兴县',192),(1705,'嘉禾县',192),(1706,'临武县',192),(1707,'汝城县',192),(1708,'桂东县',192),(1709,'安仁县',192),(1710,'资兴市',192),(1711,'芝山区',193),(1712,'冷水滩区',193),(1713,'祁阳县',193),(1714,'东安县',193),(1715,'双牌县',193),(1716,'道县',193),(1717,'江永县',193),(1718,'宁远县',193),(1719,'蓝山县',193),(1720,'新田县',193),(1721,'江华瑶族自治县',193),(1722,'鹤城区',194),(1723,'中方县',194),(1724,'沅陵县',194),(1725,'辰溪县',194),(1726,'溆浦县',194),(1727,'会同县',194),(1728,'麻阳苗族自治县',194),(1729,'新晃侗族自治县',194),(1730,'芷江侗族自治县',194),(1731,'靖州苗族侗族自治县',194),(1732,'通道侗族自治县',194),(1733,'洪江市',194),(1734,'娄星区',195),(1735,'双峰县',195),(1736,'新化县',195),(1737,'冷水江市',195),(1738,'涟源市',195),(1739,'吉首市',196),(1740,'泸溪县',196),(1741,'凤凰县',196),(1742,'花垣县',196),(1743,'保靖县',196),(1744,'古丈县',196),(1745,'永顺县',196),(1746,'龙山县',196),(1747,'东山区',197),(1748,'荔湾区',197),(1749,'越秀区',197),(1750,'海珠区',197),(1751,'天河区',197),(1752,'芳村区',197),(1753,'白云区',197),(1754,'黄埔区',197),(1755,'番禺区',197),(1756,'花都区',197),(1757,'增城市',197),(1758,'从化市',197),(1759,'武江区',198),(1760,'浈江区',198),(1761,'曲江区',198),(1762,'始兴县',198),(1763,'仁化县',198),(1764,'翁源县',198),(1765,'乳源瑶族自治县',198),(1766,'新丰县',198),(1767,'乐昌市',198),(1768,'南雄市',198),(1769,'罗湖区',199),(1770,'福田区',199),(1771,'南山区',199),(1772,'宝安区',199),(1773,'龙岗区',199),(1774,'盐田区',199),(1775,'香洲区',200),(1776,'斗门区',200),(1777,'金湾区',200),(1778,'龙湖区',201),(1779,'金平区',201),(1780,'濠江区',201),(1781,'潮阳区',201),(1782,'潮南区',201),(1783,'澄海区',201),(1784,'南澳县',201),(1785,'禅城区',202),(1786,'南海区',202),(1787,'顺德区',202),(1788,'三水区',202),(1789,'高明区',202),(1790,'蓬江区',203),(1791,'江海区',203),(1792,'新会区',203),(1793,'台山市',203),(1794,'开平市',203),(1795,'鹤山市',203),(1796,'恩平市',203),(1797,'赤坎区',204),(1798,'霞山区',204),(1799,'坡头区',204),(1800,'麻章区',204),(1801,'遂溪县',204),(1802,'徐闻县',204),(1803,'廉江市',204),(1804,'雷州市',204),(1805,'吴川市',204),(1806,'茂南区',205),(1807,'茂港区',205),(1808,'电白县',205),(1809,'高州市',205),(1810,'化州市',205),(1811,'信宜市',205),(1812,'端州区',206),(1813,'鼎湖区',206),(1814,'广宁县',206),(1815,'怀集县',206),(1816,'封开县',206),(1817,'德庆县',206),(1818,'高要市',206),(1819,'四会市',206),(1820,'惠城区',207),(1821,'惠阳区',207),(1822,'博罗县',207),(1823,'惠东县',207),(1824,'龙门县',207),(1825,'梅江区',208),(1826,'梅县',208),(1827,'大埔县',208),(1828,'丰顺县',208),(1829,'五华县',208),(1830,'平远县',208),(1831,'蕉岭县',208),(1832,'兴宁市',208),(1833,'城区',209),(1834,'海丰县',209),(1835,'陆河县',209),(1836,'陆丰市',209),(1837,'源城区',210),(1838,'紫金县',210),(1839,'龙川县',210),(1840,'连平县',210),(1841,'和平县',210),(1842,'东源县',210),(1843,'江城区',211),(1844,'阳西县',211),(1845,'阳东县',211),(1846,'阳春市',211),(1847,'清城区',212),(1848,'佛冈县',212),(1849,'阳山县',212),(1850,'连山壮族瑶族自治县',212),(1851,'连南瑶族自治县',212),(1852,'清新县',212),(1853,'英德市',212),(1854,'连州市',212),(1855,'湘桥区',215),(1856,'潮安县',215),(1857,'饶平县',215),(1858,'榕城区',216),(1859,'揭东县',216),(1860,'揭西县',216),(1861,'惠来县',216),(1862,'普宁市',216),(1863,'云城区',217),(1864,'新兴县',217),(1865,'郁南县',217),(1866,'云安县',217),(1867,'罗定市',217),(1868,'兴宁区',218),(1869,'青秀区',218),(1870,'江南区',218),(1871,'西乡塘区',218),(1872,'良庆区',218),(1873,'邕宁区',218),(1874,'武鸣县',218),(1875,'隆安县',218),(1876,'马山县',218),(1877,'上林县',218),(1878,'宾阳县',218),(1879,'横县',218),(1880,'城中区',219),(1881,'鱼峰区',219),(1882,'柳南区',219),(1883,'柳北区',219),(1884,'柳江县',219),(1885,'柳城县',219),(1886,'鹿寨县',219),(1887,'融安县',219),(1888,'融水苗族自治县',219),(1889,'三江侗族自治县',219),(1890,'秀峰区',220),(1891,'叠彩区',220),(1892,'象山区',220),(1893,'七星区',220),(1894,'雁山区',220),(1895,'阳朔县',220),(1896,'临桂县',220),(1897,'灵川县',220),(1898,'全州县',220),(1899,'兴安县',220),(1900,'永福县',220),(1901,'灌阳县',220),(1902,'龙胜各族自治县',220),(1903,'资源县',220),(1904,'平乐县',220),(1905,'荔蒲县',220),(1906,'恭城瑶族自治县',220),(1907,'万秀区',221),(1908,'蝶山区',221),(1909,'长洲区',221),(1910,'苍梧县',221),(1911,'藤县',221),(1912,'蒙山县',221),(1913,'岑溪市',221),(1914,'海城区',222),(1915,'银海区',222),(1916,'铁山港区',222),(1917,'合浦县',222),(1918,'港口区',223),(1919,'防城区',223),(1920,'上思县',223),(1921,'东兴市',223),(1922,'钦南区',224),(1923,'钦北区',224),(1924,'灵山县',224),(1925,'浦北县',224),(1926,'港北区',225),(1927,'港南区',225),(1928,'覃塘区',225),(1929,'平南县',225),(1930,'桂平市',225),(1931,'玉州区',226),(1932,'容县',226),(1933,'陆川县',226),(1934,'博白县',226),(1935,'兴业县',226),(1936,'北流市',226),(1937,'右江区',227),(1938,'田阳县',227),(1939,'田东县',227),(1940,'平果县',227),(1941,'德保县',227),(1942,'靖西县',227),(1943,'那坡县',227),(1944,'凌云县',227),(1945,'乐业县',227),(1946,'田林县',227),(1947,'西林县',227),(1948,'隆林各族自治县',227),(1949,'八步区',228),(1950,'昭平县',228),(1951,'钟山县',228),(1952,'富川瑶族自治县',228),(1953,'金城江区',229),(1954,'南丹县',229),(1955,'天峨县',229),(1956,'凤山县',229),(1957,'东兰县',229),(1958,'罗城仫佬族自治县',229),(1959,'环江毛南族自治县',229),(1960,'巴马瑶族自治县',229),(1961,'都安瑶族自治县',229),(1962,'大化瑶族自治县',229),(1963,'宜州市',229),(1964,'兴宾区',230),(1965,'忻城县',230),(1966,'象州县',230),(1967,'武宣县',230),(1968,'金秀瑶族自治县',230),(1969,'合山市',230),(1970,'江洲区',231),(1971,'扶绥县',231),(1972,'宁明县',231),(1973,'龙州县',231),(1974,'大新县',231),(1975,'天等县',231),(1976,'凭祥市',231),(1977,'秀英区',232),(1978,'龙华区',232),(1979,'琼山区',232),(1980,'美兰区',232),(1981,'五指山市',233),(1982,'琼海市',233),(1983,'儋州市',233),(1984,'文昌市',233),(1985,'万宁市',233),(1986,'东方市',233),(1987,'定安县',233),(1988,'屯昌县',233),(1989,'澄迈县',233),(1990,'临高县',233),(1991,'白沙黎族自治县',233),(1992,'昌江黎族自治县',233),(1993,'乐东黎族自治县',233),(1994,'陵水黎族自治县',233),(1995,'保亭黎族苗族自治县',233),(1996,'琼中黎族苗族自治县',233),(1997,'西沙群岛',233),(1998,'南沙群岛',233),(1999,'中沙群岛的岛礁及其海域',233),(2000,'万州区',234),(2001,'涪陵区',234),(2002,'渝中区',234),(2003,'大渡口区',234),(2004,'江北区',234),(2005,'沙坪坝区',234),(2006,'九龙坡区',234),(2007,'南岸区',234),(2008,'北碚区',234),(2009,'万盛区',234),(2010,'双桥区',234),(2011,'渝北区',234),(2012,'巴南区',234),(2013,'黔江区',234),(2014,'长寿区',234),(2015,'綦江县',234),(2016,'潼南县',234),(2017,'铜梁县',234),(2018,'大足县',234),(2019,'荣昌县',234),(2020,'璧山县',234),(2021,'梁平县',234),(2022,'城口县',234),(2023,'丰都县',234),(2024,'垫江县',234),(2025,'武隆县',234),(2026,'忠县',234),(2027,'开县',234),(2028,'云阳县',234),(2029,'奉节县',234),(2030,'巫山县',234),(2031,'巫溪县',234),(2032,'石柱土家族自治县',234),(2033,'秀山土家族苗族自治县',234),(2034,'酉阳土家族苗族自治县',234),(2035,'彭水苗族土家族自治县',234),(2036,'江津市',234),(2037,'合川市',234),(2038,'永川市',234),(2039,'南川市',234),(2040,'锦江区',235),(2041,'青羊区',235),(2042,'金牛区',235),(2043,'武侯区',235),(2044,'成华区',235),(2045,'龙泉驿区',235),(2046,'青白江区',235),(2047,'新都区',235),(2048,'温江区',235),(2049,'金堂县',235),(2050,'双流县',235),(2051,'郫县',235),(2052,'大邑县',235),(2053,'蒲江县',235),(2054,'新津县',235),(2055,'都江堰市',235),(2056,'彭州市',235),(2057,'邛崃市',235),(2058,'崇州市',235),(2059,'自流井区',236),(2060,'贡井区',236),(2061,'大安区',236),(2062,'沿滩区',236),(2063,'荣县',236),(2064,'富顺县',236),(2065,'东区',237),(2066,'西区',237),(2067,'仁和区',237),(2068,'米易县',237),(2069,'盐边县',237),(2070,'江阳区',238),(2071,'纳溪区',238),(2072,'龙马潭区',238),(2073,'泸县',238),(2074,'合江县',238),(2075,'叙永县',238),(2076,'古蔺县',238),(2077,'旌阳区',239),(2078,'中江县',239),(2079,'罗江县',239),(2080,'广汉市',239),(2081,'什邡市',239),(2082,'绵竹市',239),(2083,'涪城区',240),(2084,'游仙区',240),(2085,'三台县',240),(2086,'盐亭县',240),(2087,'安县',240),(2088,'梓潼县',240),(2089,'北川羌族自治县',240),(2090,'平武县',240),(2091,'江油市',240),(2092,'市中区',241),(2093,'元坝区',241),(2094,'朝天区',241),(2095,'旺苍县',241),(2096,'青川县',241),(2097,'剑阁县',241),(2098,'苍溪县',241),(2099,'船山区',242),(2100,'安居区',242),(2101,'蓬溪县',242),(2102,'射洪县',242),(2103,'大英县',242),(2104,'市中区',243),(2105,'东兴区',243),(2106,'威远县',243),(2107,'资中县',243),(2108,'隆昌县',243),(2109,'市中区',244),(2110,'沙湾区',244),(2111,'五通桥区',244),(2112,'金口河区',244),(2113,'犍为县',244),(2114,'井研县',244),(2115,'夹江县',244),(2116,'沐川县',244),(2117,'峨边彝族自治县',244),(2118,'马边彝族自治县',244),(2119,'峨眉山市',244),(2120,'顺庆区',245),(2121,'高坪区',245),(2122,'嘉陵区',245),(2123,'南部县',245),(2124,'营山县',245),(2125,'蓬安县',245),(2126,'仪陇县',245),(2127,'西充县',245),(2128,'阆中市',245),(2129,'东坡区',246),(2130,'仁寿县',246),(2131,'彭山县',246),(2132,'洪雅县',246),(2133,'丹棱县',246),(2134,'青神县',246),(2135,'翠屏区',247),(2136,'宜宾县',247),(2137,'南溪县',247),(2138,'江安县',247),(2139,'长宁县',247),(2140,'高县',247),(2141,'珙县',247),(2142,'筠连县',247),(2143,'兴文县',247),(2144,'屏山县',247),(2145,'广安区',248),(2146,'岳池县',248),(2147,'武胜县',248),(2148,'邻水县',248),(2149,'华蓥市',248),(2150,'通川区',249),(2151,'达县',249),(2152,'宣汉县',249),(2153,'开江县',249),(2154,'大竹县',249),(2155,'渠县',249),(2156,'万源市',249),(2157,'雨城区',250),(2158,'名山县',250),(2159,'荥经县',250),(2160,'汉源县',250),(2161,'石棉县',250),(2162,'天全县',250),(2163,'芦山县',250),(2164,'宝兴县',250),(2165,'巴州区',251),(2166,'通江县',251),(2167,'南江县',251),(2168,'平昌县',251),(2169,'雁江区',252),(2170,'安岳县',252),(2171,'乐至县',252),(2172,'简阳市',252),(2173,'汶川县',253),(2174,'理县',253),(2175,'茂县',253),(2176,'松潘县',253),(2177,'九寨沟县',253),(2178,'金川县',253),(2179,'小金县',253),(2180,'黑水县',253),(2181,'马尔康县',253),(2182,'壤塘县',253),(2183,'阿坝县',253),(2184,'若尔盖县',253),(2185,'红原县',253),(2186,'康定县',254),(2187,'泸定县',254),(2188,'丹巴县',254),(2189,'九龙县',254),(2190,'雅江县',254),(2191,'道孚县',254),(2192,'炉霍县',254),(2193,'甘孜县',254),(2194,'新龙县',254),(2195,'德格县',254),(2196,'白玉县',254),(2197,'石渠县',254),(2198,'色达县',254),(2199,'理塘县',254),(2200,'巴塘县',254),(2201,'乡城县',254),(2202,'稻城县',254),(2203,'得荣县',254),(2204,'西昌市',255),(2205,'木里藏族自治县',255),(2206,'盐源县',255),(2207,'德昌县',255),(2208,'会理县',255),(2209,'会东县',255),(2210,'宁南县',255),(2211,'普格县',255),(2212,'布拖县',255),(2213,'金阳县',255),(2214,'昭觉县',255),(2215,'喜德县',255),(2216,'冕宁县',255),(2217,'越西县',255),(2218,'甘洛县',255),(2219,'美姑县',255),(2220,'雷波县',255),(2221,'南明区',256),(2222,'云岩区',256),(2223,'花溪区',256),(2224,'乌当区',256),(2225,'白云区',256),(2226,'小河区',256),(2227,'开阳县',256),(2228,'息烽县',256),(2229,'修文县',256),(2230,'清镇市',256),(2231,'钟山区',257),(2232,'六枝特区',257),(2233,'水城县',257),(2234,'盘县',257),(2235,'红花岗区',258),(2236,'汇川区',258),(2237,'遵义县',258),(2238,'桐梓县',258),(2239,'绥阳县',258),(2240,'正安县',258),(2241,'道真仡佬族苗族自治县',258),(2242,'务川仡佬族苗族自治县',258),(2243,'凤冈县',258),(2244,'湄潭县',258),(2245,'余庆县',258),(2246,'习水县',258),(2247,'赤水市',258),(2248,'仁怀市',258),(2249,'西秀区',259),(2250,'平坝县',259),(2251,'普定县',259),(2252,'镇宁布依族苗族自治县',259),(2253,'关岭布依族苗族自治县',259),(2254,'紫云苗族布依族自治县',259),(2255,'铜仁市',260),(2256,'江口县',260),(2257,'玉屏侗族自治县',260),(2258,'石阡县',260),(2259,'思南县',260),(2260,'印江土家族苗族自治县',260),(2261,'德江县',260),(2262,'沿河土家族自治县',260),(2263,'松桃苗族自治县',260),(2264,'万山特区',260),(2265,'兴义市',261),(2266,'兴仁县',261),(2267,'普安县',261),(2268,'晴隆县',261),(2269,'贞丰县',261),(2270,'望谟县',261),(2271,'册亨县',261),(2272,'安龙县',261),(2273,'毕节市',262),(2274,'大方县',262),(2275,'黔西县',262),(2276,'金沙县',262),(2277,'织金县',262),(2278,'纳雍县',262),(2279,'威宁彝族回族苗族自治县',262),(2280,'赫章县',262),(2281,'凯里市',263),(2282,'黄平县',263),(2283,'施秉县',263),(2284,'三穗县',263),(2285,'镇远县',263),(2286,'岑巩县',263),(2287,'天柱县',263),(2288,'锦屏县',263),(2289,'剑河县',263),(2290,'台江县',263),(2291,'黎平县',263),(2292,'榕江县',263),(2293,'从江县',263),(2294,'雷山县',263),(2295,'麻江县',263),(2296,'丹寨县',263),(2297,'都匀市',264),(2298,'福泉市',264),(2299,'荔波县',264),(2300,'贵定县',264),(2301,'瓮安县',264),(2302,'独山县',264),(2303,'平塘县',264),(2304,'罗甸县',264),(2305,'长顺县',264),(2306,'龙里县',264),(2307,'惠水县',264),(2308,'三都水族自治县',264),(2309,'五华区',265),(2310,'盘龙区',265),(2311,'官渡区',265),(2312,'西山区',265),(2313,'东川区',265),(2314,'呈贡县',265),(2315,'晋宁县',265),(2316,'富民县',265),(2317,'宜良县',265),(2318,'石林彝族自治县',265),(2319,'嵩明县',265),(2320,'禄劝彝族苗族自治县',265),(2321,'寻甸回族彝族自治县',265),(2322,'安宁市',265),(2323,'麒麟区',266),(2324,'马龙县',266),(2325,'陆良县',266),(2326,'师宗县',266),(2327,'罗平县',266),(2328,'富源县',266),(2329,'会泽县',266),(2330,'沾益县',266),(2331,'宣威市',266),(2332,'红塔区',267),(2333,'江川县',267),(2334,'澄江县',267),(2335,'通海县',267),(2336,'华宁县',267),(2337,'易门县',267),(2338,'峨山彝族自治县',267),(2339,'新平彝族傣族自治县',267),(2340,'元江哈尼族彝族傣族自治县',267),(2341,'隆阳区',268),(2342,'施甸县',268),(2343,'腾冲县',268),(2344,'龙陵县',268),(2345,'昌宁县',268),(2346,'昭阳区',269),(2347,'鲁甸县',269),(2348,'巧家县',269),(2349,'盐津县',269),(2350,'大关县',269),(2351,'永善县',269),(2352,'绥江县',269),(2353,'镇雄县',269),(2354,'彝良县',269),(2355,'威信县',269),(2356,'水富县',269),(2357,'古城区',270),(2358,'玉龙纳西族自治县',270),(2359,'永胜县',270),(2360,'华坪县',270),(2361,'宁蒗彝族自治县',270),(2362,'翠云区',271),(2363,'普洱哈尼族彝族自治县',271),(2364,'墨江哈尼族自治县',271),(2365,'景东彝族自治县',271),(2366,'景谷傣族彝族自治县',271),(2367,'镇沅彝族哈尼族拉祜族自治县',271),(2368,'江城哈尼族彝族自治县',271),(2369,'孟连傣族拉祜族佤族自治县',271),(2370,'澜沧拉祜族自治县',271),(2371,'西盟佤族自治县',271),(2372,'临翔区',272),(2373,'凤庆县',272),(2374,'云县',272),(2375,'永德县',272),(2376,'镇康县',272),(2377,'双江拉祜族佤族布朗族傣族自治县',272),(2378,'耿马傣族佤族自治县',272),(2379,'沧源佤族自治县',272),(2380,'楚雄市',273),(2381,'双柏县',273),(2382,'牟定县',273),(2383,'南华县',273),(2384,'姚安县',273),(2385,'大姚县',273),(2386,'永仁县',273),(2387,'元谋县',273),(2388,'武定县',273),(2389,'禄丰县',273),(2390,'个旧市',274),(2391,'开远市',274),(2392,'蒙自县',274),(2393,'屏边苗族自治县',274),(2394,'建水县',274),(2395,'石屏县',274),(2396,'弥勒县',274),(2397,'泸西县',274),(2398,'元阳县',274),(2399,'红河县',274),(2400,'金平苗族瑶族傣族自治县',274),(2401,'绿春县',274),(2402,'河口瑶族自治县',274),(2403,'文山县',275),(2404,'砚山县',275),(2405,'西畴县',275),(2406,'麻栗坡县',275),(2407,'马关县',275),(2408,'丘北县',275),(2409,'广南县',275),(2410,'富宁县',275),(2411,'景洪市',276),(2412,'勐海县',276),(2413,'勐腊县',276),(2414,'大理市',277),(2415,'漾濞彝族自治县',277),(2416,'祥云县',277),(2417,'宾川县',277),(2418,'弥渡县',277),(2419,'南涧彝族自治县',277),(2420,'巍山彝族回族自治县',277),(2421,'永平县',277),(2422,'云龙县',277),(2423,'洱源县',277),(2424,'剑川县',277),(2425,'鹤庆县',277),(2426,'瑞丽市',278),(2427,'潞西市',278),(2428,'梁河县',278),(2429,'盈江县',278),(2430,'陇川县',278),(2431,'泸水县',279),(2432,'福贡县',279),(2433,'贡山独龙族怒族自治县',279),(2434,'兰坪白族普米族自治县',279),(2435,'香格里拉县',280),(2436,'德钦县',280),(2437,'维西傈僳族自治县',280),(2438,'城关区',281),(2439,'林周县',281),(2440,'当雄县',281),(2441,'尼木县',281),(2442,'曲水县',281),(2443,'堆龙德庆县',281),(2444,'达孜县',281),(2445,'墨竹工卡县',281),(2446,'昌都县',282),(2447,'江达县',282),(2448,'贡觉县',282),(2449,'类乌齐县',282),(2450,'丁青县',282),(2451,'察雅县',282),(2452,'八宿县',282),(2453,'左贡县',282),(2454,'芒康县',282),(2455,'洛隆县',282),(2456,'边坝县',282),(2457,'乃东县',283),(2458,'扎囊县',283),(2459,'贡嘎县',283),(2460,'桑日县',283),(2461,'琼结县',283),(2462,'曲松县',283),(2463,'措美县',283),(2464,'洛扎县',283),(2465,'加查县',283),(2466,'隆子县',283),(2467,'错那县',283),(2468,'浪卡子县',283),(2469,'日喀则市',284),(2470,'南木林县',284),(2471,'江孜县',284),(2472,'定日县',284),(2473,'萨迦县',284),(2474,'拉孜县',284),(2475,'昂仁县',284),(2476,'谢通门县',284),(2477,'白朗县',284),(2478,'仁布县',284),(2479,'康马县',284),(2480,'定结县',284),(2481,'仲巴县',284),(2482,'亚东县',284),(2483,'吉隆县',284),(2484,'聂拉木县',284),(2485,'萨嘎县',284),(2486,'岗巴县',284),(2487,'那曲县',285),(2488,'嘉黎县',285),(2489,'比如县',285),(2490,'聂荣县',285),(2491,'安多县',285),(2492,'申扎县',285),(2493,'索县',285),(2494,'班戈县',285),(2495,'巴青县',285),(2496,'尼玛县',285),(2497,'普兰县',286),(2498,'札达县',286),(2499,'噶尔县',286),(2500,'日土县',286),(2501,'革吉县',286),(2502,'改则县',286),(2503,'措勤县',286),(2504,'林芝县',287),(2505,'工布江达县',287),(2506,'米林县',287),(2507,'墨脱县',287),(2508,'波密县',287),(2509,'察隅县',287),(2510,'朗县',287),(2511,'新城区',288),(2512,'碑林区',288),(2513,'莲湖区',288),(2514,'灞桥区',288),(2515,'未央区',288),(2516,'雁塔区',288),(2517,'阎良区',288),(2518,'临潼区',288),(2519,'长安区',288),(2520,'蓝田县',288),(2521,'周至县',288),(2522,'户县',288),(2523,'高陵县',288),(2524,'王益区',289),(2525,'印台区',289),(2526,'耀州区',289),(2527,'宜君县',289),(2528,'渭滨区',290),(2529,'金台区',290),(2530,'陈仓区',290),(2531,'凤翔县',290),(2532,'岐山县',290),(2533,'扶风县',290),(2534,'眉县',290),(2535,'陇县',290),(2536,'千阳县',290),(2537,'麟游县',290),(2538,'凤县',290),(2539,'太白县',290),(2540,'秦都区',291),(2541,'杨凌区',291),(2542,'渭城区',291),(2543,'三原县',291),(2544,'泾阳县',291),(2545,'乾县',291),(2546,'礼泉县',291),(2547,'永寿县',291),(2548,'彬县',291),(2549,'长武县',291),(2550,'旬邑县',291),(2551,'淳化县',291),(2552,'武功县',291),(2553,'兴平市',291),(2554,'临渭区',292),(2555,'华县',292),(2556,'潼关县',292),(2557,'大荔县',292),(2558,'合阳县',292),(2559,'澄城县',292),(2560,'蒲城县',292),(2561,'白水县',292),(2562,'富平县',292),(2563,'韩城市',292),(2564,'华阴市',292),(2565,'宝塔区',293),(2566,'延长县',293),(2567,'延川县',293),(2568,'子长县',293),(2569,'安塞县',293),(2570,'志丹县',293),(2571,'吴旗县',293),(2572,'甘泉县',293),(2573,'富县',293),(2574,'洛川县',293),(2575,'宜川县',293),(2576,'黄龙县',293),(2577,'黄陵县',293),(2578,'汉台区',294),(2579,'南郑县',294),(2580,'城固县',294),(2581,'洋县',294),(2582,'西乡县',294),(2583,'勉县',294),(2584,'宁强县',294),(2585,'略阳县',294),(2586,'镇巴县',294),(2587,'留坝县',294),(2588,'佛坪县',294),(2589,'榆阳区',295),(2590,'神木县',295),(2591,'府谷县',295),(2592,'横山县',295),(2593,'靖边县',295),(2594,'定边县',295),(2595,'绥德县',295),(2596,'米脂县',295),(2597,'佳县',295),(2598,'吴堡县',295),(2599,'清涧县',295),(2600,'子洲县',295),(2601,'汉滨区',296),(2602,'汉阴县',296),(2603,'石泉县',296),(2604,'宁陕县',296),(2605,'紫阳县',296),(2606,'岚皋县',296),(2607,'平利县',296),(2608,'镇坪县',296),(2609,'旬阳县',296),(2610,'白河县',296),(2611,'商州区',297),(2612,'洛南县',297),(2613,'丹凤县',297),(2614,'商南县',297),(2615,'山阳县',297),(2616,'镇安县',297),(2617,'柞水县',297),(2618,'城关区',298),(2619,'七里河区',298),(2620,'西固区',298),(2621,'安宁区',298),(2622,'红古区',298),(2623,'永登县',298),(2624,'皋兰县',298),(2625,'榆中县',298),(2626,'金川区',300),(2627,'永昌县',300),(2628,'白银区',301),(2629,'平川区',301),(2630,'靖远县',301),(2631,'会宁县',301),(2632,'景泰县',301),(2633,'秦城区',302),(2634,'北道区',302),(2635,'清水县',302),(2636,'秦安县',302),(2637,'甘谷县',302),(2638,'武山县',302),(2639,'张家川回族自治县',302),(2640,'凉州区',303),(2641,'民勤县',303),(2642,'古浪县',303),(2643,'天祝藏族自治县',303),(2644,'甘州区',304),(2645,'肃南裕固族自治县',304),(2646,'民乐县',304),(2647,'临泽县',304),(2648,'高台县',304),(2649,'山丹县',304),(2650,'崆峒区',305),(2651,'泾川县',305),(2652,'灵台县',305),(2653,'崇信县',305),(2654,'华亭县',305),(2655,'庄浪县',305),(2656,'静宁县',305),(2657,'肃州区',306),(2658,'金塔县',306),(2659,'安西县',306),(2660,'肃北蒙古族自治县',306),(2661,'阿克塞哈萨克族自治县',306),(2662,'玉门市',306),(2663,'敦煌市',306),(2664,'西峰区',307),(2665,'庆城县',307),(2666,'环县',307),(2667,'华池县',307),(2668,'合水县',307),(2669,'正宁县',307),(2670,'宁县',307),(2671,'镇原县',307),(2672,'安定区',308),(2673,'通渭县',308),(2674,'陇西县',308),(2675,'渭源县',308),(2676,'临洮县',308),(2677,'漳县',308),(2678,'岷县',308),(2679,'武都区',309),(2680,'成县',309),(2681,'文县',309),(2682,'宕昌县',309),(2683,'康县',309),(2684,'西和县',309),(2685,'礼县',309),(2686,'徽县',309),(2687,'两当县',309),(2688,'临夏市',310),(2689,'临夏县',310),(2690,'康乐县',310),(2691,'永靖县',310),(2692,'广河县',310),(2693,'和政县',310),(2694,'东乡族自治县',310),(2695,'积石山保安族东乡族撒拉族自治县',310),(2696,'合作市',311),(2697,'临潭县',311),(2698,'卓尼县',311),(2699,'舟曲县',311),(2700,'迭部县',311),(2701,'玛曲县',311),(2702,'碌曲县',311),(2703,'夏河县',311),(2704,'城东区',312),(2705,'城中区',312),(2706,'城西区',312),(2707,'城北区',312),(2708,'大通回族土族自治县',312),(2709,'湟中县',312),(2710,'湟源县',312),(2711,'平安县',313),(2712,'民和回族土族自治县',313),(2713,'乐都县',313),(2714,'互助土族自治县',313),(2715,'化隆回族自治县',313),(2716,'循化撒拉族自治县',313),(2717,'门源回族自治县',314),(2718,'祁连县',314),(2719,'海晏县',314),(2720,'刚察县',314),(2721,'同仁县',315),(2722,'尖扎县',315),(2723,'泽库县',315),(2724,'河南蒙古族自治县',315),(2725,'共和县',316),(2726,'同德县',316),(2727,'贵德县',316),(2728,'兴海县',316),(2729,'贵南县',316),(2730,'玛沁县',317),(2731,'班玛县',317),(2732,'甘德县',317),(2733,'达日县',317),(2734,'久治县',317),(2735,'玛多县',317),(2736,'玉树县',318),(2737,'杂多县',318),(2738,'称多县',318),(2739,'治多县',318),(2740,'囊谦县',318),(2741,'曲麻莱县',318),(2742,'格尔木市',319),(2743,'德令哈市',319),(2744,'乌兰县',319),(2745,'都兰县',319),(2746,'天峻县',319),(2747,'兴庆区',320),(2748,'西夏区',320),(2749,'金凤区',320),(2750,'永宁县',320),(2751,'贺兰县',320),(2752,'灵武市',320),(2753,'大武口区',321),(2754,'惠农区',321),(2755,'平罗县',321),(2756,'利通区',322),(2757,'盐池县',322),(2758,'同心县',322),(2759,'青铜峡市',322),(2760,'原州区',323),(2761,'西吉县',323),(2762,'隆德县',323),(2763,'泾源县',323),(2764,'彭阳县',323),(2765,'沙坡头区',324),(2766,'中宁县',324),(2767,'海原县',324),(2768,'天山区',325),(2769,'沙依巴克区',325),(2770,'新市区',325),(2771,'水磨沟区',325),(2772,'头屯河区',325),(2773,'达坂城区',325),(2774,'东山区',325),(2775,'乌鲁木齐县',325),(2776,'独山子区',326),(2777,'克拉玛依区',326),(2778,'白碱滩区',326),(2779,'乌尔禾区',326),(2780,'吐鲁番市',327),(2781,'鄯善县',327),(2782,'托克逊县',327),(2783,'哈密市',328),(2784,'巴里坤哈萨克自治县',328),(2785,'伊吾县',328),(2786,'昌吉市',329),(2787,'阜康市',329),(2788,'米泉市',329),(2789,'呼图壁县',329),(2790,'玛纳斯县',329),(2791,'奇台县',329),(2792,'吉木萨尔县',329),(2793,'木垒哈萨克自治县',329),(2794,'博乐市',330),(2795,'精河县',330),(2796,'温泉县',330),(2797,'库尔勒市',331),(2798,'轮台县',331),(2799,'尉犁县',331),(2800,'若羌县',331),(2801,'且末县',331),(2802,'焉耆回族自治县',331),(2803,'和静县',331),(2804,'和硕县',331),(2805,'博湖县',331),(2806,'阿克苏市',332),(2807,'温宿县',332),(2808,'库车县',332),(2809,'沙雅县',332),(2810,'新和县',332),(2811,'拜城县',332),(2812,'乌什县',332),(2813,'阿瓦提县',332),(2814,'柯坪县',332),(2815,'阿图什市',333),(2816,'阿克陶县',333),(2817,'阿合奇县',333),(2818,'乌恰县',333),(2819,'喀什市',334),(2820,'疏附县',334),(2821,'疏勒县',334),(2822,'英吉沙县',334),(2823,'泽普县',334),(2824,'莎车县',334),(2825,'叶城县',334),(2826,'麦盖提县',334),(2827,'岳普湖县',334),(2828,'伽师县',334),(2829,'巴楚县',334),(2830,'塔什库尔干塔吉克自治县',334),(2831,'和田市',335),(2832,'和田县',335),(2833,'墨玉县',335),(2834,'皮山县',335),(2835,'洛浦县',335),(2836,'策勒县',335),(2837,'于田县',335),(2838,'民丰县',335),(2839,'伊宁市',336),(2840,'奎屯市',336),(2841,'伊宁县',336),(2842,'察布查尔锡伯自治县',336),(2843,'霍城县',336),(2844,'巩留县',336),(2845,'新源县',336),(2846,'昭苏县',336),(2847,'特克斯县',336),(2848,'尼勒克县',336),(2849,'塔城市',337),(2850,'乌苏市',337),(2851,'额敏县',337),(2852,'沙湾县',337),(2853,'托里县',337),(2854,'裕民县',337),(2855,'和布克赛尔蒙古自治县',337),(2856,'阿勒泰市',338),(2857,'布尔津县',338),(2858,'富蕴县',338),(2859,'福海县',338),(2860,'哈巴河县',338),(2861,'青河县',338),(2862,'吉木乃县',338);

/*Table structure for table `s_province` */

DROP TABLE IF EXISTS `s_province`;

CREATE TABLE `s_province` (
  `pid` int(11) NOT NULL,
  `pname` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

/*Data for the table `s_province` */

insert  into `s_province`(pid,pname) values (1,'北京市'),(2,'天津市'),(3,'河北省'),(4,'山西省'),(5,'内蒙古自治区'),(6,'辽宁省'),(7,'吉林省'),(8,'黑龙江省'),(9,'上海市'),(10,'江苏省'),(11,'浙江省'),(12,'安徽省'),(13,'福建省'),(14,'江西省'),(15,'山东省'),(16,'河南省'),(17,'湖北省'),(18,'湖南省'),(19,'广东省'),(20,'广西壮族自治区'),(21,'海南省'),(22,'重庆市'),(23,'四川省'),(24,'贵州省'),(25,'云南省'),(26,'西藏自治区'),(27,'陕西省'),(28,'甘肃省'),(29,'青海省'),(30,'宁夏回族自治区'),(31,'新疆维吾尔自治区'),(32,'香港特别行政区'),(33,'澳门特别行政区'),(34,'台湾省');

/*Table structure for table `sharecomments` */

DROP TABLE IF EXISTS `sharecomments`;

CREATE TABLE `sharecomments` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `shareInfoId` int(11) DEFAULT NULL COMMENT 'shareInfo表外键',
  `reCommentId` int(11) DEFAULT NULL COMMENT '回复评论ID',
  `userId` int(11) DEFAULT NULL COMMENT '评论人id',
  `content` varchar(500) NOT NULL,
  `createDate` varchar(20) NOT NULL,
  `reCount` int(11) DEFAULT '0' COMMENT '回复评论数',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `sharecomments` */

/*Table structure for table `shareimage` */

DROP TABLE IF EXISTS `shareimage`;

CREATE TABLE `shareimage` (
  `uid` int(15) NOT NULL AUTO_INCREMENT,
  `shareInfoId` int(15) NOT NULL COMMENT 'shareInfo表外键',
  `images` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `shareimage` */

/*Table structure for table `shareinfo` */

DROP TABLE IF EXISTS `shareinfo`;

CREATE TABLE `shareinfo` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `sproductId` int(11) DEFAULT NULL COMMENT '商品ID',
  `shareTitle` varchar(50) NOT NULL COMMENT '分享主题',
  `shareContent` varchar(500) NOT NULL COMMENT '分享内容',
  `upCount` int(11) NOT NULL DEFAULT '0' COMMENT '顶的次数',
  `replyCount` int(11) NOT NULL DEFAULT '0' COMMENT '回复数',
  `reward` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '是否奖励过,0:未奖励.1:已奖励',
  `shareDate` varchar(20) NOT NULL COMMENT '分享时间',
  `userId` int(11) NOT NULL COMMENT '用户id',
  `status` int(2) DEFAULT '-1' COMMENT '状态 -1 暂未晒单 0等待审核 1未审核通过，请重新修改晒单信息 2审核通过，奖励10元',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `shareinfo` */

/*Table structure for table `spellbuyproduct` */

DROP TABLE IF EXISTS `spellbuyproduct`;

CREATE TABLE `spellbuyproduct` (
  `spellbuyProductId` int(11) NOT NULL AUTO_INCREMENT,
  `fkProductId` int(11) NOT NULL COMMENT '商品id',
  `spellbuyStartDate` varchar(20) NOT NULL COMMENT '拼购开始时间',
  `spellbuyEndDate` varchar(20) NOT NULL COMMENT '拼购结束时间',
  `spellbuyCount` int(11) NOT NULL COMMENT '当前拼购总份数',
  `spellbuyPrice` int(11) NOT NULL COMMENT '拼购单价',
  `spSinglePrice` int(11) NOT NULL DEFAULT '1',
  `productPeriod` int(11) NOT NULL COMMENT '期数',
  `spellbuyLimit` int(11) DEFAULT '0',
  `spStatus` int(2) NOT NULL DEFAULT '0' COMMENT '状态 0未完成 1已完成',
  `spellbuyType` int(2) DEFAULT '0' COMMENT '1限时0普通',
  `Attribute_64` varchar(10) DEFAULT NULL,
  `Attribute_65` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`spellbuyProductId`)
) ENGINE=InnoDB AUTO_INCREMENT=10022 DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='拼购商品表';

/*Data for the table `spellbuyproduct` */

insert  into `spellbuyproduct`(spellbuyProductId,fkProductId,spellbuyStartDate,spellbuyEndDate,spellbuyCount,spellbuyPrice,spSinglePrice,productPeriod,spellbuyLimit,spStatus,spellbuyType,Attribute_64,Attribute_65) values (10018,1016,'2015-09-01 16:52:05','2015-09-01 16:52:05',0,58999,1,1,5,0,0,NULL,NULL),(10019,1017,'2015-09-01 17:03:09','2015-09-01 17:03:09',0,89,1,1,0,0,0,NULL,NULL),(10020,1018,'2015-09-01 17:41:53','2015-09-01 17:41:53',0,5788,1,1,0,0,0,NULL,NULL),(10021,1019,'2015-09-01 17:52:30','2015-09-01 17:52:30',0,459999,1,1,0,0,0,NULL,NULL);

/*Table structure for table `spellbuyrecord` */

DROP TABLE IF EXISTS `spellbuyrecord`;

CREATE TABLE `spellbuyrecord` (
  `spellbuyRecordId` int(11) NOT NULL AUTO_INCREMENT,
  `fkSpellbuyProductId` int(11) NOT NULL,
  `buyer` int(11) NOT NULL COMMENT '拼购人',
  `buyPrice` int(11) NOT NULL COMMENT '出价',
  `buyDate` varchar(25) NOT NULL COMMENT '拼购时间 yyyyMMddHHmmss',
  `spRandomNo` varchar(32) NOT NULL COMMENT '拼购随机码',
  `spWinningStatus` varchar(1) NOT NULL DEFAULT '0' COMMENT '中奖状态  0:未中奖   1:中奖  2:未中奖差价购买',
  `buyStatus` varchar(1) NOT NULL DEFAULT '0' COMMENT '拼购状态   本次拼购是否完成. 0:未完成1:已完成',
  `buyIp` varchar(20) DEFAULT NULL,
  `buyLocal` varchar(200) DEFAULT NULL,
  `buySource` int(2) DEFAULT '0',
  `Attribute_66` varchar(10) DEFAULT NULL,
  `Attribute_67` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`spellbuyRecordId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='拼购记录表';

/*Data for the table `spellbuyrecord` */

/*Table structure for table `suggestion` */

DROP TABLE IF EXISTS `suggestion`;

CREATE TABLE `suggestion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(20) CHARACTER SET utf8 DEFAULT NULL COMMENT '主题',
  `userName` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '昵称',
  `mobilePhone` varchar(20) CHARACTER SET utf8 DEFAULT NULL COMMENT '电话',
  `mail` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '邮箱',
  `postText` varchar(1000) CHARACTER SET utf8 DEFAULT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `suggestion` */

insert  into `suggestion`(id,subject,userName,mobilePhone,mail,postText) values (5,'投诉与建议','要买云购系统','15854124587','2825670967@qq.com','系统做的不错，细节做的很好，性能也很强大，支持下。');

/*Table structure for table `sys_configure` */

DROP TABLE IF EXISTS `sys_configure`;

CREATE TABLE `sys_configure` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID默认为1，不得修改',
  `imgUrl` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '图片域名',
  `skinUrl` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '皮肤域名',
  `wwwUrl` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '主域名',
  `weixinUrl` varchar(50) DEFAULT NULL COMMENT '微信端url',
  `domain` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '域名域',
  `saitName` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '网站名称',
  `shortName` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '网站小名',
  `saitTitle` varchar(150) CHARACTER SET utf8 DEFAULT NULL COMMENT '网站标题',
  `saitLogo` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '网站logo',
  `keyword` varchar(300) CHARACTER SET utf8 DEFAULT NULL COMMENT '网站关键词',
  `description` varchar(300) CHARACTER SET utf8 DEFAULT NULL COMMENT '网站描述',
  `mailName` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '系统邮箱',
  `mailPwd` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '系统邮箱密码',
  `mailsmtp` varchar(200) CHARACTER SET utf8 DEFAULT NULL COMMENT '系统邮箱配置',
  `tenpayPartner` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT '财付通号',
  `tenpayKey` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT '财付通密钥',
  `tenpayStatus` int(2) DEFAULT '0' COMMENT '财付通是否启用 0 启用 1禁用',
  `alipayPartner` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT '支付宝号',
  `alipayKey` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT '支付宝密钥',
  `alipayMail` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT '支付宝邮箱',
  `alipayStatus` int(2) DEFAULT '0' COMMENT '支付宝是否启用 0 启用 1禁用',
  `yeepayKey` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '易付宝号',
  `yeepayPartner` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT '易付宝密钥',
  `yeepayStatus` int(2) DEFAULT '0' COMMENT '易付宝是否启用 0 启用 1禁用',
  `chinabankKey` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '网银在线key',
  `chinabankPartner` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '网银在线密钥',
  `chinabankStatus` int(2) DEFAULT '0' COMMENT '网银在线是否启用 0 启用 1禁用',
  `billKey` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '快钱支付key',
  `billPartner` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '快钱支付密钥',
  `billStatus` int(2) DEFAULT '0' COMMENT '快钱支付是否启用 0 启用 1禁用',
  `unionpayKey` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '银联在线Key',
  `unionpayPartner` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '银联在线密钥',
  `unionpayStatus` int(2) DEFAULT '0' COMMENT '银联在线是否启用 0 启用 1禁用',
  `weixinPayPartner` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '微信支付财付通商户号',
  `weixinPayKey` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '微信支付财付通密钥',
  `weixinAppID` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '微信支付APPID',
  `weixinAppSECRET` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '微信支付APPSECRET',
  `weixinAppKEY` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '微信支付APPKEY',
  `weixinStatus` int(2) DEFAULT '0' COMMENT '微信支付 0 启用 1禁用',
  `jdPayPartner` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT '京东支付商户ID ',
  `jdPayKey` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT '京东支付商户key',
  `jdPayStatus` int(2) DEFAULT '0' COMMENT '京东支付商户是否启用 0 启用 1禁用',
  `qqPayPartner` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT '手Q支付商户ID',
  `qqPayKey` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT '手Q支付商户Key',
  `qqPayStatus` int(2) DEFAULT '0' COMMENT '手Q支付 0 启用 1禁用',
  `aliPayUser` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '支付宝免签帐号',
  `aliPaySignId` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT '商户ID',
  `aliPaySignKey` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT '商户密钥',
  `aliPayUserStatus` int(2) DEFAULT '0' COMMENT '支付宝免签  0 启用 1禁用',
  `tenPayUser` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '财付通免签帐号',
  `tenPaySignId` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT '商户ID',
  `tenPaySignKye` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT '商户密钥',
  `tenPayUserStatus` int(2) DEFAULT '0' COMMENT '财付通免签  0 启用 1禁用',
  `yunPayStatus` int(2) DEFAULT '1' COMMENT '云支付是否启用 0 启用 1禁用',
  `yunPayPartner` varchar(32) DEFAULT NULL COMMENT '云支付合作者身份ID',
  `yunPayKey` varchar(32) DEFAULT NULL COMMENT '云支付密钥',
  `yunPayMail` varchar(32) DEFAULT NULL COMMENT '云支付邮箱',
  `iapppayStatus` int(2) DEFAULT '1' COMMENT 'iAppPay云支付平台是否启用 0 启用 1禁用',
  `iapppayAppId` varchar(32) DEFAULT NULL COMMENT 'iAppPay应用编号',
  `iapppayAppKey` varchar(1000) DEFAULT NULL COMMENT 'iAppPay应用私钥',
  `iapppayPlatKey` varchar(300) DEFAULT NULL COMMENT 'iAppPay平台公钥',
  `jubaopayStatus` int(2) DEFAULT '1' COMMENT '聚宝云计费是否启用 0 启用 1禁用',
  `jubaopayPartner` varchar(32) DEFAULT NULL COMMENT '聚宝云计费商户合作号',
  `icp` varchar(200) CHARACTER SET utf8 DEFAULT NULL COMMENT 'ICP备案号',
  `serviceQQ` varchar(20) CHARACTER SET utf8 DEFAULT NULL COMMENT '客服QQ',
  `serviceTel` varchar(20) CHARACTER SET utf8 DEFAULT NULL COMMENT '客服电话',
  `qqAppId` varchar(20) CHARACTER SET utf8 DEFAULT NULL COMMENT 'qqAppId',
  `qqAppKey` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT 'qqAppKey',
  `qqAppStatus` int(2) DEFAULT NULL COMMENT 'qq互联登录是否开启 0 启用 1禁用',
  `wxAppID` varchar(32) DEFAULT NULL COMMENT '微信登录AppID',
  `wxAppSecret` varchar(100) DEFAULT NULL COMMENT '微信登录Secret',
  `wxAppStatus` int(2) DEFAULT '1' COMMENT '微信登录是否启用 0 启用 1禁用',
  `smsType` varchar(20) DEFAULT 'chuangming' COMMENT '启用短信类型',
  `messagePartner` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT '短信服务帐号',
  `messageKey` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT '短信服务密钥',
  `messageChannel` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT '短信通道编号',
  `messageSign` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT '短信签名编号',
  `smsbaoUsername` varchar(32) DEFAULT NULL COMMENT '短信宝用户名',
  `smsbaoPass` varchar(32) DEFAULT NULL COMMENT '短信宝密码',
  `verifyMsgTpl` varchar(300) CHARACTER SET utf8 DEFAULT NULL COMMENT '用户短信验证模板',
  `lotteryMsgTpl` varchar(300) CHARACTER SET utf8 DEFAULT NULL COMMENT '用户获奖通知模板',
  `regBalance` double(10,2) DEFAULT '0.00' COMMENT '注册送余额',
  `recMoney` double(10,2) DEFAULT '0.00' COMMENT '充值满多少',
  `recBalance` double(10,2) DEFAULT '0.00' COMMENT '充值满多少送多少',
  `commission` double(10,2) DEFAULT '0.00' COMMENT '佣金提成?%',
  `invite` int(11) DEFAULT '0' COMMENT '邀请奖励福分',
  `userData` int(11) DEFAULT '0' COMMENT '资料完善奖励福分',
  `buyProduct` int(11) DEFAULT '0' COMMENT '购买商品奖励福分',
  `authorization` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `gyjjStatus` int(2) DEFAULT '1' COMMENT '公益基金是否启用',
  `gyjjNumber` int(11) DEFAULT NULL COMMENT '公益基金',
  `robots` int(10) unsigned NOT NULL DEFAULT '50' COMMENT 'robots',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

/*Data for the table `sys_configure` */

insert  into `sys_configure`(id,imgUrl,skinUrl,wwwUrl,weixinUrl,domain,saitName,shortName,saitTitle,saitLogo,keyword,description,mailName,mailPwd,mailsmtp,tenpayPartner,tenpayKey,tenpayStatus,alipayPartner,alipayKey,alipayMail,alipayStatus,yeepayKey,yeepayPartner,yeepayStatus,chinabankKey,chinabankPartner,chinabankStatus,billKey,billPartner,billStatus,unionpayKey,unionpayPartner,unionpayStatus,weixinPayPartner,weixinPayKey,weixinAppID,weixinAppSECRET,weixinAppKEY,weixinStatus,jdPayPartner,jdPayKey,jdPayStatus,qqPayPartner,qqPayKey,qqPayStatus,aliPayUser,aliPaySignId,aliPaySignKey,aliPayUserStatus,tenPayUser,tenPaySignId,tenPaySignKye,tenPayUserStatus,yunPayStatus,yunPayPartner,yunPayKey,yunPayMail,iapppayStatus,iapppayAppId,iapppayAppKey,iapppayPlatKey,jubaopayStatus,jubaopayPartner,icp,serviceQQ,serviceTel,qqAppId,qqAppKey,qqAppStatus,wxAppID,wxAppSecret,wxAppStatus,smsType,messagePartner,messageKey,messageChannel,messageSign,smsbaoUsername,smsbaoPass,verifyMsgTpl,lotteryMsgTpl,regBalance,recMoney,recBalance,commission,invite,userData,buyProduct,authorization,gyjjStatus,gyjjNumber,robots) values (1,'http://www.591jx.com','http://www.591jx.com','http://www.591jx.com',NULL,'.591jx.com','1元拍购','拍购',' - 享受购物的乐趣 一元淘拍 淘拍网','/Images/new-logo.png','淘拍网,1元淘拍,1元夺宝,1元抢拍,一元购物,一元淘拍,一元拍,1元拍,1元购物,1元购,1元秒杀,拍购,1元购笔记本电脑,一元挖宝,微众购,一元夺宝','1元拍购','admin@1ypg.com','epgw','smtp.ym.163.com','1213965701','291d80c464d7436105154cf94a2b2fd8',1,'2088611781615594','j7j16nzpchmr34j8fxco842ra0qupjpm','service@hahsun.com',1,'69cl522AV6q613Ii4W6u8K6XuW8vM1N6bFgyv769220IuYe9u37N4y7rI4Pl','10001126856',1,'123123','111',1,'12222222222','321321313',1,'123132131312','1231413123',1,'12313123','123211231321','123123213213213','1231232132','123123213123',0,NULL,NULL,0,NULL,NULL,0,'epgwyc@126.com',NULL,NULL,0,'65615609',NULL,NULL,0,1,NULL,NULL,NULL,1,NULL,NULL,NULL,1,NULL,'Copyright © 2012 - 2015, 版权所有 1元拍购\r\n 京ICP备14043685号-2','','','100363700','',0,NULL,NULL,1,'chuangming','1001@501165320001','B0FD6F2A1B34866F91EFBA3AEEAAED4E','5067','5285','','','您的验证码是：{000000}。请不要把验证码泄露给其他人。','恭喜您！您云购的商品已成功！请24小时内联系客服提交收货地址！',10.00,100.00,10.00,0.08,100,80,1,'10.169.98.110',1,0,50);

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `userId` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `userName` varchar(32) DEFAULT NULL COMMENT '用户名',
  `userPwd` varchar(32) NOT NULL COMMENT '密码',
  `changePwdNo` varchar(32) DEFAULT NULL COMMENT '通过邮箱找回密码时  随机串',
  `changePwdTime` varchar(32) DEFAULT NULL COMMENT '通过邮箱找回密码时  随机串生成时间.超过半小时点击无效.',
  `realName` varchar(10) DEFAULT NULL COMMENT '真实姓名',
  `cardNo` varchar(32) DEFAULT NULL COMMENT '身份证号',
  `mobilePhone` varchar(15) DEFAULT NULL COMMENT '移动电话',
  `mobileCheck` char(1) DEFAULT '0' COMMENT '手机是否验证  0:未验证1:已验证',
  `phone` varchar(20) DEFAULT NULL COMMENT '固定电话',
  `qq` varchar(30) DEFAULT NULL COMMENT 'QQ号',
  `weixinUnionId` varchar(50) DEFAULT NULL COMMENT '微信unionid',
  `weixinOpenId` varchar(50) DEFAULT NULL COMMENT '微信openid',
  `webWxOpenId` varchar(50) DEFAULT NULL COMMENT '开放平台微信openid',
  `mail` varchar(30) DEFAULT NULL,
  `mailCheck` char(1) DEFAULT '0' COMMENT '邮箱是否已验证  0:未验证1:已验证',
  `sex` char(1) DEFAULT '0' COMMENT '性别 0:男1:女',
  `birthday` varchar(10) DEFAULT NULL COMMENT '生日 年月日yyyyMMdd',
  `faceImg` varchar(150) DEFAULT NULL COMMENT '用户头像',
  `location` varchar(32) DEFAULT NULL COMMENT '地址',
  `postNo` varchar(10) DEFAULT NULL COMMENT '邮政编码',
  `ip_address` varchar(20) DEFAULT NULL COMMENT 'ip地址',
  `ip_location` varchar(20) DEFAULT NULL COMMENT 'ip归属地',
  `oldIpAddress` varchar(50) DEFAULT NULL,
  `marital_status` char(1) DEFAULT NULL COMMENT '婚姻状况  0:未婚1:已婚2:离异',
  `Monthly_income` varchar(15) DEFAULT NULL COMMENT '月收入',
  `Interests` text COMMENT '兴趣爱好',
  `Attribute_22` varchar(32) DEFAULT NULL,
  `oldDate` varchar(20) DEFAULT NULL COMMENT '上次登录时间',
  `newDate` varchar(20) DEFAULT NULL COMMENT '本次登录时间',
  `balance` decimal(10,2) DEFAULT '0.00' COMMENT '余额',
  `userType` varchar(1) NOT NULL DEFAULT '0' COMMENT '用户类型,0为客户.1为工作人员.客户不能登录后台.工作人员可以.',
  `experience` int(11) DEFAULT '0' COMMENT '经验值',
  `signature` varchar(200) DEFAULT NULL COMMENT '个性签名',
  `invite` int(11) DEFAULT NULL COMMENT '邀请人',
  `commissionCount` double(10,2) DEFAULT '0.00' COMMENT '佣金',
  `commissionBalance` double(10,2) DEFAULT '0.00' COMMENT '佣金余额',
  `commissionMention` double(10,2) DEFAULT '0.00' COMMENT '佣金提现',
  `commissionPoints` int(11) DEFAULT '0' COMMENT '福分',
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=1001639516 DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

/*Data for the table `user` */


/*Table structure for table `userbyaddress` */

DROP TABLE IF EXISTS `userbyaddress`;

CREATE TABLE `userbyaddress` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `province` varchar(200) CHARACTER SET utf8 DEFAULT NULL COMMENT '省',
  `city` varchar(200) CHARACTER SET utf8 DEFAULT NULL COMMENT '市',
  `district` varchar(200) CHARACTER SET utf8 DEFAULT NULL COMMENT '区',
  `address` varchar(1000) CHARACTER SET utf8 DEFAULT NULL COMMENT '收货地址',
  `zipCode` int(11) DEFAULT NULL COMMENT '邮政编码',
  `consignee` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '收货人',
  `phone` varchar(20) CHARACTER SET utf8 DEFAULT NULL COMMENT '电话号码',
  `status` int(2) DEFAULT NULL COMMENT '状态 是否默认',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `userbyaddress` */

insert  into `userbyaddress`(id,userId,province,city,district,address,zipCode,consignee,phone,status) values (1,1001640332,'','','','111212',112211,'震撼','111221313',1),(2,1001640342,'广东省','广州市','荔湾区','28好',332111,'张销售','13812345678',1);

/*Table structure for table `visitors` */

DROP TABLE IF EXISTS `visitors`;

CREATE TABLE `visitors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `visitorsId` int(11) DEFAULT NULL,
  `date` varchar(20) CHARACTER SET utf8 DEFAULT NULL COMMENT '时间',
  `address` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '地点',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `visitors` */

insert  into `visitors`(id,uid,visitorsId,date,address) values (1,1001640332,1001640332,'2014-09-13 13:47:21','中国'),(2,2669,1001640332,'2014-09-19 15:41:28','广西桂林市'),(3,1001640342,1001640342,'2014-10-17 12:23:40','广东省深圳市');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;