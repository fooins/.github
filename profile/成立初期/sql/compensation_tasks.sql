CREATE TABLE `compensation_tasks` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `claimId` int NOT NULL COMMENT '理赔单ID',
  `status` enum('pending', 'handing', 'succeed', 'failure') NOT NULL DEFAULT 'pending' COMMENT '状态',
  `handledAt` datetime DEFAULT NULL COMMENT '开始处理时间',
  `finishedAt` datetime DEFAULT NULL COMMENT '处理完成时间',
  `failureReasons` text COMMENT '失败原因',
  `autoCompensate` enum('enabled', 'disabled') NOT NULL DEFAULT 'disabled' COMMENT '是否自动赔付',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '赔付任务表'