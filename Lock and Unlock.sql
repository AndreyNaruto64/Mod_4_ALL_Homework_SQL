use geodata;

lock tables region read;
select count(*) from cities;
insert into region values(3336550, 232, `Тирликурендуй`);

show processlist;
unlock tables;

lock tables region write;

show open tables from geodata;
 
