delimiter $$
create function dia_semana(fecha date)
returns varchar(20) deterministic 
	begin 
        case dayofweek(fecha)
        when 1 then
			return "Domingo";
		when 2 then
			return "Lunes";
		when 3 then
			return "Martes";
		when 4 then
			return "Miercoles";
		when 5 then
			return "Jueves";
		when 6 then
			return "Viernes";
		when 7 then
			return "Sabado";
        end case;
	end$$
delimiter ;