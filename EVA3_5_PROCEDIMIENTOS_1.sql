delimiter $$
create function contar_empleados()
returns int READS SQL DATA
    begin 

    return( select count(*) from employees);
    
    end$$
delimiter ;