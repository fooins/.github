CREATE TABLE `producers` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `name` varchar(64) NOT NULL COMMENT '渠道名称',
  `code` varchar(64) NOT NULL COMMENT '渠道编码',
  `bizConfig` text COMMENT '业务规则配置(JSON格式)',
  `notifyUrl` varchar(512) DEFAULT NULL COMMENT '通知地址',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '销售渠道表'