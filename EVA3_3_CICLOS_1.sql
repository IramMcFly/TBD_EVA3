delimiter $$
create function sumatoria_loop(val int)
	returns int deterministic
	begin
		declare sumatoria int default 0;
        declare i int default 1;
		sumas: loop
			set sumatoria = sumatoria + i;
            set i = i + 1;
            if i > val then
				leave sumas;
            end if;
        end loop sumas;
        return sumatoria;
	end$$
delimiter ;