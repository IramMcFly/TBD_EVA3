delimiter $$
create function es_par(val int)
	returns varchar(20) deterministic
	begin
		declare res varchar(20);
		if mod(val,2) = 0 then
			set res = "Par";
		else
			set res = "Impar";
		end if;
        return res;
	end$$
delimiter ;