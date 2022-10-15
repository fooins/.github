CREATE TABLE `applicants` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `no` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '编号',
  `policyId` int NOT NULL COMMENT '保单ID',
  `name` varchar(32) DEFAULT NULL COMMENT '姓名',
  `idType` enum('idcard', 'passport') DEFAULT NULL COMMENT '证件类型',
  `idNo` varchar(64) DEFAULT NULL COMMENT '证件号码',
  `gender` enum('man', 'female', 'other', 'unknown') DEFAULT NULL COMMENT '性别',
  `birth` datetime DEFAULT NULL COMMENT '出生日期',
  `contactNo` varchar(64) DEFAULT NULL COMMENT '联系号码',
  `email` varchar(64) DEFAULT NULL COMMENT '电子邮箱地址',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `no` (`no`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '投保人表'