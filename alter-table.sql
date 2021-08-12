alter table animals
add location VARCHAR(255);

alter table animals rename column type to species;

alter table animals alter column species type varchar(255);