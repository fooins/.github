CREATE TABLE `claims` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `policyId` int NOT NULL COMMENT '保单ID',
  `claimNo` varchar(64) NOT NULL COMMENT '理赔单号',
  `producerId` int NOT NULL COMMENT '所属渠道ID',
  `sumInsured` float DEFAULT NULL COMMENT '总保额',
  `status` enum('pending', 'declined', 'paying', 'paid') NOT NULL DEFAULT 'pending' COMMENT '状态',
  `bizConfig` text COMMENT '业务规则配置(JSON格式)',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `claimNo` (`claimNo`),
  KEY `claims_policy_id` (`policyId`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '理赔单表'