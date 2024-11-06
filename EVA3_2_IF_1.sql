delimiter $$
create function comparar_numeros(val1 int, val2 int)
	returns varchar(20) deterministic
	begin
		declare res varchar(20);
        if val1 > val2 then 
			set res = 'Mayor';
        elseif val1 = val2 then
			set res = 'Igual';
		else 
			set res = 'Menor';
		end if;
        return res;
	end$$
delimiter ;