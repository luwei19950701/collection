DROP TABLE IF EXISTS `code_column_config`;
CREATE TABLE `cases` (
      `case_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
      `case_code` varchar(255) DEFAULT NULL comment '案件编号',
      `consignor_id` varchar(255) DEFAULT NULL comment '委托方ID',
      `loan_time` datetime DEFAULT NULL COMMENT '放款时间',
      `dict_name` varchar(255) DEFAULT NULL,
      `extra` varchar(255) DEFAULT NULL,
      `form_show` bit(1) DEFAULT NULL,
      `form_type` varchar(255) DEFAULT NULL,
      `key_type` varchar(255) DEFAULT NULL,
      `list_show` bit(1) DEFAULT NULL,
      `not_null` bit(1) DEFAULT NULL,
      `query_type` varchar(255) DEFAULT NULL,
      `remark` varchar(255) DEFAULT NULL,
      `date_annotation` varchar(255) DEFAULT NULL,
      PRIMARY KEY (`column_id`) USING BTREE,
      KEY `idx_table_name` (`table_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='代码生成字段信息存储';

