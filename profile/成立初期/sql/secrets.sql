CREATE TABLE `secrets` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `secretId` varchar(128) NOT NULL COMMENT '密钥标识',
  `secretKey` varchar(256) NOT NULL COMMENT '密钥',
  `producerId` int NOT NULL COMMENT '所属渠道ID',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `secretId` (`secretId`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '密钥表'