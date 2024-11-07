delimiter $$
create function sumatoria_repeat(val int)
	returns int deterministic
	begin
		declare sumatoria int default 0;
        declare i int default 1;
        
        repeat
			set sumatoria = sumatoria + i;
            set i = i + 1; 
        until (i > val ) end repeat;
        
        return sumatoria;
	end$$
delimiter ;