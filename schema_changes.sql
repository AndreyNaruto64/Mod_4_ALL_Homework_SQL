use geodata;

alter table _countries drop column title_ua;
alter table _countries drop column title_pt;
alter table _countries drop column title_pl;
alter table _countries drop column title_lt;
alter table _countries drop column title_ja;
alter table _countries drop column title_it;
alter table _countries drop column title_fr;
alter table _countries drop column title_es;
alter table _countries drop column title_en;
alter table _countries drop column title_de;
alter table _countries drop column title_be;
alter table _countries drop column title_cz;
alter table _countries drop column title_lv;

alter table _countries change column country_id id int not null auto_increment primary key;
alter table _countries change column title_ru title varchar(150) not null;


alter table _regions
add constraint fk_regions_countries_id
foreign key(country_id)
references _countries(id)
on delete restrict
on update restrict;

alter table _regions change column region_id id int not null auto_increment primary key;
alter table _regions change column title_ru title varchar(150) not null;

create index title on _regions(title);

alter table _regions drop column title_ua;
alter table _regions drop column title_be;
alter table _regions drop column title_en;
alter table _regions drop column title_es;
alter table _regions drop column title_pt;
alter table _regions drop column title_de;
alter table _regions drop column title_fr;
alter table _regions drop column title_it;
alter table _regions drop column title_pl;
alter table _regions drop column title_ja;
alter table _regions drop column title_lt;
alter table _regions drop column title_lv;
alter table _regions drop column title_cz;

alter table _cities change column city_id id int not null auto_increment;


alter table _cities
add constraint fk_cities_countries_id
foreign key(country_id)
references _countries(id)
on delete restrict
on update restrict;

alter table _cities drop region_id;
alter table _cities add column region_id int not null;

alter table _cities
		drop foreign key fk_cities_regions_id;


alter table _cities
add constraint fk_cities_regions_id

foreign key(region_id)
references _regions(id)
on delete restrict
on update restrict;


alter table _cities change column title_ru title varchar(150) not null;
create index title on _cities(title);

alter table _cities drop column area_ru;
alter table _cities drop column region_ru;
alter table _cities drop column title_ua;
alter table _cities drop column area_ua;
alter table _cities drop column region_ua;
alter table _cities drop column title_be;
alter table _cities drop column area_be;
alter table _cities drop column region_be;
alter table _cities drop column title_en;
alter table _cities drop column area_en;
alter table _cities drop column region_en;
alter table _cities drop column title_es;
alter table _cities drop column area_es;
alter table _cities drop column region_es;
alter table _cities drop column title_pt;
alter table _cities drop column area_pt;
alter table _cities drop column region_pt;
alter table _cities drop column title_de;
alter table _cities drop column area_de;
alter table _cities drop column region_de;
alter table _cities drop column title_fr;
alter table _cities drop column area_fr;
alter table _cities drop column region_fr;
alter table _cities drop column title_it;
alter table _cities drop column area_it;
alter table _cities drop column region_it;
alter table _cities drop column title_pl;
alter table _cities drop column area_pl;
alter table _cities drop column region_pl;
alter table _cities drop column title_ja;
alter table _cities drop column area_ja;
alter table _cities drop column region_ja;
alter table _cities drop column title_lt;
alter table _cities drop column area_lt;
alter table _cities drop column region_lt;
alter table _cities drop column title_lv;
alter table _cities drop column area_lv;
alter table _cities drop column region_lv;
alter table _cities drop column title_cz;
alter table _cities drop column area_cz;
alter table _cities drop column region_cz;



