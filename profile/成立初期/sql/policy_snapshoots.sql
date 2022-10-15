CREATE TABLE `policy_snapshoots` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `policyId` int NOT NULL COMMENT '保单ID',
  `endorsementId` int DEFAULT NULL COMMENT '批单ID',
  `content` text NOT NULL COMMENT '快照内容(JSON)',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '保单快照表'