CREATE TABLE `notify_tasks` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `status` enum('pending', 'handing', 'succeed', 'retry', 'failure') NOT NULL DEFAULT 'pending' COMMENT '状态',
  `type` enum('ClaimStatusChange') NOT NULL COMMENT '类型',
  `data` text COMMENT '任务相关数据(JSON格式)',
  `producerId` int NOT NULL COMMENT '所属渠道ID',
  `handledAt` datetime DEFAULT NULL COMMENT '开始处理时间',
  `finishedAt` datetime DEFAULT NULL COMMENT '处理完成时间',
  `failureReasons` text COMMENT '失败原因',
  `retries` int NOT NULL DEFAULT '0' COMMENT '重试次数',
  `retryAt` datetime DEFAULT NULL COMMENT '下次重试的时间',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '通知任务表'