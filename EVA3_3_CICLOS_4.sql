delimiter $$
create function pow_while(num int, pow int)
returns int deterministic
	begin
    declare i int default 1;
    declare result int default 1;
    while (i <= pow) do
        set result = result * num; 
        set i = i + 1;
    end while;
    return result;
end$$
delimiter ;
