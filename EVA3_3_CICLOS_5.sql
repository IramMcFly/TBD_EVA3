delimiter $$
create function pow_loop(num int, pow int)
returns int deterministic
	begin
    declare i int default 1;
    declare result int default 1;
    pow: loop
        
        set result = result * num; 
        set i = i + 1;
        if(i=pow) then
			leave pow;
        end if;
    end loop pow;
    return result;
end$$
delimiter ;
