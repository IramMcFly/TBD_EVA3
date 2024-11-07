delimiter $$
create function pow_repeat(num int, pow int)
returns int deterministic
	begin
    declare i int default 1;
    declare result int default 1;
    
    repeat 
		set result = result * num; 
        set i = i + 1;
    until (i = pow) end repeat;
    
    return result;
end$$
delimiter ;
