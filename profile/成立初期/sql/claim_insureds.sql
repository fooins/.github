CREATE TABLE `claim_insureds` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `claimId` int NOT NULL COMMENT '理赔单ID',
  `no` varchar(36) NOT NULL COMMENT '编号',
  `sumInsured` float DEFAULT NULL COMMENT '保额',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '理赔单被保险人表'