CREATE TABLE IF NOT EXISTS `sistema_usuario`(
	`id` int(10) auto_increment,
	`usuario` varchar(255) ,
	`senha` varchar(255) ,
	`token` varchar(255) ,
	`token_permanente` varchar(255) ,
	PRIMARY KEY(`id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;
