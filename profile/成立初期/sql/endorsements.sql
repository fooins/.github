CREATE TABLE `endorsements` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `policyId` int NOT NULL COMMENT '保单ID',
  `endorseNo` varchar(5) NOT NULL COMMENT '批单号',
  `type` enum('endorse', 'cancel') NOT NULL COMMENT '类型',
  `difference` float NOT NULL COMMENT '保费变化差额',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uni_policy_endorse` (`policyId`, `endorseNo`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '批单表'