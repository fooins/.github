CREATE TABLE `contracts` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `code` varchar(64) NOT NULL COMMENT '契约代码',
  `version` int NOT NULL COMMENT '契约版本',
  `producerId` int NOT NULL COMMENT '所属渠道ID',
  `productId` int NOT NULL COMMENT '关联产品ID',
  `productVersion` int NOT NULL COMMENT '关联产品版本号',
  `bizConfig` text COMMENT '业务规则配置(JSON格式)',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uni_code_version` (`code`, `version`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '契约表'