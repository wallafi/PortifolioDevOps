<?php
	try {
	  $connect = new mysqli("barsystem.cvliwkkjrqkf.sa-east-1.rds.amazonaws.com
", "barsystem_user", "santos123", "barsystem");
	  $connect->set_charset("utf8mb4");
	} catch(Exception $e) {
	  error_log($e->getMessage());
	  exit('Erro ao tentar conectar ao banco de dados');
	}
