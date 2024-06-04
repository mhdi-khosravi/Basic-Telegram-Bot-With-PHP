CREATE TABLE `admins` (
  `id` int NOT NULL,
  `telegram_id` text COLLATE utf8mb4_general_ci NOT NULL,
  `telegram_username` text COLLATE utf8mb4_general_ci NOT NULL,
  `register_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



CREATE TABLE `black_list` (
  `id` int NOT NULL,
  `telegram_id` text COLLATE utf8mb4_general_ci NOT NULL,
  `telegram_username` text COLLATE utf8mb4_general_ci NOT NULL,
  `register_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


CREATE TABLE `ready` (
  `id` text COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



CREATE TABLE `step` (
  `id` int NOT NULL,
  `telegram_id` text COLLATE utf8mb4_general_ci NOT NULL,
  `telegram_username` text COLLATE utf8mb4_general_ci NOT NULL,
  `step` text COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


CREATE TABLE `tmp` (
  `id` int NOT NULL,
  `name` text COLLATE utf8mb4_general_ci NOT NULL,
  `value` text COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

ALTER TABLE `admins`
  ADD PRIMARY KEY (`telegram_id`(64)),
  ADD KEY `index` (`id`);

ALTER TABLE `black_list`
  ADD PRIMARY KEY (`telegram_id`(64)),
  ADD KEY `index` (`id`);

ALTER TABLE `ready`
  ADD PRIMARY KEY (`id`(64));

ALTER TABLE `step`
  ADD PRIMARY KEY (`telegram_id`(64)),
  ADD KEY `index` (`id`);

ALTER TABLE `tmp`
  ADD PRIMARY KEY (`name`(64),`value`(64)),
  ADD KEY `index` (`id`);

ALTER TABLE `admins`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;


ALTER TABLE `black_list`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;


ALTER TABLE `step`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

ALTER TABLE `tmp`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;
COMMIT;
