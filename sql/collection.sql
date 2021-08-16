DROP TABLE IF EXISTS `cases`;
CREATE TABLE `cases` (
    `case_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '案件ID',
    `consignor_id` bigint(20) NOT NULL comment '委托方ID',
    `loan_time` datetime DEFAULT NULL COMMENT '放款时间',
    `loan_id` varchar(64) NOT NULL comment '放款订单号',
    `loan_amount` decimal(10,2) NOT NULL comment '放款金额',
    `loan_periods` tinyint(4) NOT NULL comment '放款期数'
    PRIMARY KEY (`case_id`) USING BTREE,
    KEY `idx_loan_id` (`loan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='案件信息';

DROP TABLE IF EXISTS `case_ditribution`;
CREATE TABLE `cases` (
    `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
    `case_id` bigint(20) NOT NULL COMMENT '案件ID',
    `dept_id` bigint(20) NOT NULL comment '部门ID',
    `user_id` bigint(20) NOT NULL COMMENT '用户ID',
    `loan_id` varchar(64) NOT NULL comment '放款订单号',
    `loan_amount` decimal(10,2) NOT NULL comment '放款金额',
    `loan_periods` tinyint(4) NOT NULL comment '放款期数'
     PRIMARY KEY (`case_id`) USING BTREE,
     KEY `idx_loan_id` (`loan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='案件信息';



