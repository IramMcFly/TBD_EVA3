delimiter $$
create function dia_semana(val int)
	returns varchar(20) deterministic
	begin
		case val
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
		else
			return "Invalido";
        end case;
	end$$
delimiter ;