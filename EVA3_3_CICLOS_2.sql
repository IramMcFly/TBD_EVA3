delimiter $$
create function sumatoria_while(val int)
	returns int deterministic
	begin
		declare sumatoria int default 0;
        declare i int default 1;
		
        while (i <= val) do
			set sumatoria = sumatoria + i; 
            set i = i + 1;
        end while;
        return sumatoria;
	end$$
delimiter ;