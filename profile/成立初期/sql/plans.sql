CREATE TABLE `plans` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `name` varchar(64) NOT NULL COMMENT '计划名称',
  `code` varchar(64) NOT NULL COMMENT '计划代码',
  `version` int NOT NULL COMMENT '计划版本（同产品版本）',
  `productId` int NOT NULL COMMENT '所属产品ID',
  `bizConfig` text COMMENT '业务规则配置(JSON格式)',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uni_code_version` (`code`, `version`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '保险产品计划表'