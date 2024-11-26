	DELIMITER $$
	CREATE DEFINER=`root`@`localhost` FUNCTION `generar_rfc`(nombre varchar(50), apellido_pat varchar (50), apellido_mat varchar (50), fecha_nac date) RETURNS varchar(50) CHARSET utf8mb4
		DETERMINISTIC
	begin
			return concat(substring(apellido_pat,1,2),substring(apellido_mat,1,1),substring(nombre,1,1),replace(fecha_nac,'-',''));
		end$$
	DELIMITER ;
