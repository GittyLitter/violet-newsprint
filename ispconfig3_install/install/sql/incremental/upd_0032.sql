ALTER TABLE `web_domain` ADD `pm` ENUM( 'static', 'dynamic', 'ondemand' ) NOT NULL DEFAULT 'dynamic' AFTER `php_fpm_use_socket`;
ALTER TABLE `web_domain` ADD `pm_process_idle_timeout` INT NOT NULL DEFAULT '10' AFTER `pm_max_spare_servers` , ADD `pm_max_requests` INT NOT NULL DEFAULT '0' AFTER `pm_process_idle_timeout`;