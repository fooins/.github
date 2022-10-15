CREATE TABLE `jobs` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `name` varchar(32) NOT NULL COMMENT '名称',
  `description` varchar(256) DEFAULT NULL COMMENT '描述',
  `status` enum('enable', 'disabled', 'error') NOT NULL DEFAULT 'disabled' COMMENT '状态',
  `script` varchar(32) NOT NULL COMMENT '执行的脚本',
  `cron` varchar(32) NOT NULL COMMENT 'Cron格式',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '作业表'