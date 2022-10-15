CREATE TABLE `endorsement_details` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `endorsementId` int NOT NULL COMMENT '批单ID',
  `type` enum('policy', 'applicant', 'insured') NOT NULL COMMENT '批改类型',
  `field` varchar(32) NOT NULL COMMENT '批改的字段名',
  `original` varchar(128) NOT NULL COMMENT '原值（批改前）',
  `current` varchar(128) NOT NULL COMMENT '当前值（批改后）',
  `targetNo` varchar(64) DEFAULT NULL COMMENT '批改目标编号。投保人或被保险人编号。',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '批单详情表'