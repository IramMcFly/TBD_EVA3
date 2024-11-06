delimiter $$
create function conversion_temp(val int,temp int)
	returns double deterministic
	begin
		case val
        when 1 then
			return ((temp*1.8) + 32);
            -- celsius a faren
		when 2 then
			return ((temp-32) / 1.8);
            -- faren a celsius
		when 3 then
			return temp + 273;
            -- celsius a kel
		when 4 then
			return temp - 273;
            -- kel a celsius
		else
			return "Invalido";
        end case;
	end$$
delimiter ;