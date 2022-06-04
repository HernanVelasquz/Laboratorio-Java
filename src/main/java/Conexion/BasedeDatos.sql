drop database if exists preguntasrespuestas;
create schema preguntasrespuestas;
use preguntasrespuestas;

create table categorias(
idcategoria int primary key auto_increment,
nombre varchar(50) not null
);

create table preguntas(
idpregunta int primary key auto_increment,
pregunta varchar(250) not null,
idcategoria int references categoria(id)
);

create table respuestas(
respuesta varchar(250) not null,
idrespuesta int references preguntas(idpregunta),
afirmativo varchar(5) not null
);

create table puntajes(
idjugador int primary key auto_increment,
nombre varchar(30) null default "Jugador",
jugador_puntaje int not null
);

insert into categorias(nombre) values ("Nivel 1: Muy Fácil");
insert into categorias(nombre) values ("Nivel 2: Fácil");
insert into categorias(nombre) values ("Nivel 3: Intermedio");
insert into categorias(nombre) values ("Nivel 4: Difícil");
insert into categorias(nombre) values ("Nivel 5: Muy Difícil");

insert into preguntas(pregunta, idcategoria) values ("¿Quién es el escritor del libro 'Don Quijote de la Mancha'?", 1);
insert into preguntas(pregunta, idcategoria) values ("¿Cómo se llama el proceso por el que las plantas extraen energía de la luz solar?", 1);
insert into preguntas(pregunta, idcategoria) values ("Cuál es el sexto (6) planeta del sistema solar?", 1);
insert into preguntas(pregunta, idcategoria) values ("El keroseno es un derivado de:", 1);
insert into preguntas(pregunta, idcategoria) values ("¿Cómo se llama una palabra con la sílaba tónica en la última sílaba?", 1);

insert into preguntas(pregunta, idcategoria) values ("¿Cuántos años tiene un lustro?", 2);
insert into preguntas(pregunta, idcategoria) values ("El número romano CMLV equivale a:", 2);
insert into preguntas(pregunta, idcategoria) values ("¿Dónde originaron los juegos olímpicos?", 2);
insert into preguntas(pregunta, idcategoria) values ("¿Cuántos huesos hay en el cuerpo de un humano adulto?", 2);
insert into preguntas(pregunta, idcategoria) values ("¿Cuál fue el primer metal que empleó el hombre?", 2);

insert into preguntas(pregunta, idcategoria) values ("¿Cuál es el único mamífero capaz de volar?", 3);
insert into preguntas(pregunta, idcategoria) values ("¿A qué país pertenece la ciudad de Varsovia?", 3);
insert into preguntas(pregunta, idcategoria) values ("¿Quién compuso la mítica canción 'Knockin’ on Heaven’s Door'?", 3);
insert into preguntas(pregunta, idcategoria) values ("¿Quién inventó la imprenta?", 3);
insert into preguntas(pregunta, idcategoria) values ("¿Cuál es el océano más grande del mundo?", 3);

insert into preguntas(pregunta, idcategoria) values ("¿En qué año llegó el ser humano a la Luna?", 4);
insert into preguntas(pregunta, idcategoria) values ("¿Cuántas teclas tiene un piano?", 4);
insert into preguntas(pregunta, idcategoria) values ("¿Quién fue el padre de la bomba atómica?", 4);
insert into preguntas(pregunta, idcategoria) values ("¿Qué país tiene más islas en el mundo?", 4);
insert into preguntas(pregunta, idcategoria) values ("¿Quién fue la primera mujer según la mitología griega?", 4);

insert into preguntas(pregunta, idcategoria) values ("¿Cuál fue la primera civilización humana?", 5);
insert into preguntas(pregunta, idcategoria) values ("¿Dónde están ubicados los huesos escafoides?", 5);
insert into preguntas(pregunta, idcategoria) values ("¿Qué tipo de roca es la serpentinita?", 5);
insert into preguntas(pregunta, idcategoria) values ("¿Cuál es la flor nacional de Japón?", 5);
insert into preguntas(pregunta, idcategoria) values ("¿Qué representaba el dios Thot en el antiguo Egipto?", 5);

insert into respuestas(respuesta, idrespuesta, afirmativo) values ("Miguel de cervantes",1, "si");
insert into respuestas(respuesta, idrespuesta, afirmativo) values ("Jorge Luis Borges",1, "no");
insert into respuestas(respuesta, idrespuesta, afirmativo) values ("Gabriel García Márquez",1, "no");
insert into respuestas(respuesta, idrespuesta, afirmativo) values ("Julio Cortázar",1, "no");

insert into respuestas(respuesta, idrespuesta, afirmativo) values ("Respiración",2, "no");
insert into respuestas(respuesta, idrespuesta, afirmativo) values ("Fotosíntesis",2, "si");
insert into respuestas(respuesta, idrespuesta, afirmativo) values ("Fototropismo",2, "no");
insert into respuestas(respuesta, idrespuesta, afirmativo) values ("Fotorecepción",2, "no");

insert into respuestas(respuesta, idrespuesta, afirmativo) values ("Saturno",3, "si");
insert into respuestas(respuesta, idrespuesta, afirmativo) values ("Urano",3, "no");
insert into respuestas(respuesta, idrespuesta, afirmativo) values ("Júpiter",3, "no");
insert into respuestas(respuesta, idrespuesta, afirmativo) values ("Neptuno",3, "no");

insert into respuestas(respuesta, idrespuesta, afirmativo) values ("Petróleo",4, "si");
insert into respuestas(respuesta, idrespuesta, afirmativo) values ("Caña de azúcar",4, "no");
insert into respuestas(respuesta, idrespuesta, afirmativo) values ("Madera",4, "no");
insert into respuestas(respuesta, idrespuesta, afirmativo) values ("Leche",4, "no");

insert into respuestas(respuesta, idrespuesta, afirmativo) values ("Aguda",5, "no");
insert into respuestas(respuesta, idrespuesta, afirmativo) values ("Grave",5, "si");
insert into respuestas(respuesta, idrespuesta, afirmativo) values ("Esdrújula",5, "no");
insert into respuestas(respuesta, idrespuesta, afirmativo) values ("Sobreesdrújula",5, "no");

insert into respuestas(respuesta, idrespuesta, afirmativo) values ("1",6, "no");
insert into respuestas(respuesta, idrespuesta, afirmativo) values ("5",6, "si");
insert into respuestas(respuesta, idrespuesta, afirmativo) values ("10",6, "no");
insert into respuestas(respuesta, idrespuesta, afirmativo) values ("50",6, "no");

insert into respuestas(respuesta, idrespuesta, afirmativo) values ("100 505",7, "no");
insert into respuestas(respuesta, idrespuesta, afirmativo) values ("1155",7, "no");
insert into respuestas(respuesta, idrespuesta, afirmativo) values ("955",7, "si");
insert into respuestas(respuesta, idrespuesta, afirmativo) values ("150",7, "no");

insert into respuestas(respuesta, idrespuesta, afirmativo) values ("Inglaterra",8, "no");
insert into respuestas(respuesta, idrespuesta, afirmativo) values ("China",8, "no");
insert into respuestas(respuesta, idrespuesta, afirmativo) values ("Estados Unidos",8, "no");
insert into respuestas(respuesta, idrespuesta, afirmativo) values ("Grecia",8, "si");

insert into respuestas(respuesta, idrespuesta, afirmativo) values ("206",9, "si");
insert into respuestas(respuesta, idrespuesta, afirmativo) values ("196",9, "no");
insert into respuestas(respuesta, idrespuesta, afirmativo) values ("203",9, "no");
insert into respuestas(respuesta, idrespuesta, afirmativo) values ("303",9, "no");

insert into respuestas(respuesta, idrespuesta, afirmativo) values ("Hierro",10, "no");
insert into respuestas(respuesta, idrespuesta, afirmativo) values ("Cobre",10, "si");
insert into respuestas(respuesta, idrespuesta, afirmativo) values ("Plata",10, "no");
insert into respuestas(respuesta, idrespuesta, afirmativo) values ("Acero",10, "no");

insert into respuestas(respuesta, idrespuesta, afirmativo) values ("Flamenco",11, "no");
insert into respuestas(respuesta, idrespuesta, afirmativo) values ("Ardilla voladora",11, "no");
insert into respuestas(respuesta, idrespuesta, afirmativo) values ("Marsupial",11, "no");
insert into respuestas(respuesta, idrespuesta, afirmativo) values ("Murciélago",11, "si");

insert into respuestas(respuesta, idrespuesta, afirmativo) values ("Ucrania",12, "no");
insert into respuestas(respuesta, idrespuesta, afirmativo) values ("Moldavia",12, "no");
insert into respuestas(respuesta, idrespuesta, afirmativo) values ("Polonia",12, "si");
insert into respuestas(respuesta, idrespuesta, afirmativo) values ("Bielorrusia",12, "no");

insert into respuestas(respuesta, idrespuesta, afirmativo) values ("Guns and Roses",13, "no");
insert into respuestas(respuesta, idrespuesta, afirmativo) values ("Avril Lavigne",13, "no");
insert into respuestas(respuesta, idrespuesta, afirmativo)values ("Bob dylan",13, "si");
insert into respuestas(respuesta, idrespuesta, afirmativo) values ("Eric Clapton",13, "no");

insert into respuestas(respuesta, idrespuesta, afirmativo) values ("Thomas Alva Edison",14, "no");
insert into respuestas(respuesta, idrespuesta, afirmativo) values ("Johannes Gutenberg ",14, "si");
insert into respuestas(respuesta, idrespuesta, afirmativo) values ("Louis Lumière",14, "no");
insert into respuestas(respuesta, idrespuesta, afirmativo) values ("Alexander Graham Bell",14, "no");

insert into respuestas(respuesta, idrespuesta, afirmativo) values ("Atlántico",15, "no");
insert into respuestas(respuesta, idrespuesta, afirmativo) values ("Índico",15, "no");
insert into respuestas(respuesta, idrespuesta, afirmativo) values ("Ártico",15, "no");
insert into respuestas(respuesta, idrespuesta, afirmativo) values ("Pacífico",15, "si");

insert into respuestas(respuesta, idrespuesta, afirmativo) values ("1960",16, "no");
insert into respuestas(respuesta, idrespuesta, afirmativo) values ("1969",16, "si");
insert into respuestas(respuesta, idrespuesta, afirmativo) values ("1971",16, "no");
insert into respuestas(respuesta, idrespuesta, afirmativo) values ("1986",16, "no");

insert into respuestas(respuesta, idrespuesta, afirmativo) values ("88",17, "si");
insert into respuestas(respuesta, idrespuesta, afirmativo) values ("95",17, "no");
insert into respuestas(respuesta, idrespuesta, afirmativo) values ("61",17, "no");
insert into respuestas(respuesta, idrespuesta, afirmativo) values ("73",17, "no");

insert into respuestas(respuesta, idrespuesta, afirmativo) values ("Franklin Roosevelt",18, "no");
insert into respuestas(respuesta, idrespuesta, afirmativo) values ("Robert Oppenheimer",18, "si");
insert into respuestas(respuesta, idrespuesta, afirmativo) values ("Edward Teller",18, "no");
insert into respuestas(respuesta, idrespuesta, afirmativo) values ("Albert Einstein",18, "no");

insert into respuestas(respuesta, idrespuesta, afirmativo) values ("Noruega",19, "no");
insert into respuestas(respuesta, idrespuesta, afirmativo) values ("Indonesia",19, "no");
insert into respuestas(respuesta, idrespuesta, afirmativo) values ("Australia",19, "no");
insert into respuestas(respuesta, idrespuesta, afirmativo) values ("Suecia",19, "si");

insert into respuestas(respuesta, idrespuesta, afirmativo) values ("Gea",20, "no");
insert into respuestas(respuesta, idrespuesta, afirmativo) values ("Pandora",20, "si");
insert into respuestas(respuesta, idrespuesta, afirmativo) values ("Afrodita",20, "no");
insert into respuestas(respuesta, idrespuesta, afirmativo) values ("Psique",20, "no");

insert into respuestas(respuesta, idrespuesta, afirmativo) values ("Sumeria",21, "si");
insert into respuestas(respuesta, idrespuesta, afirmativo) values ("Egipcia",21, "no");
insert into respuestas(respuesta, idrespuesta, afirmativo) values ("Babilónica",21, "no");
insert into respuestas(respuesta, idrespuesta, afirmativo)values ("China",21, "no");

insert into respuestas(respuesta, idrespuesta, afirmativo) values ("Rodilla",22, "no");
insert into respuestas(respuesta, idrespuesta, afirmativo)values ("Muñeca",22, "si");
insert into respuestas(respuesta, idrespuesta, afirmativo)values ("Cráneo",22, "no");
insert into respuestas(respuesta, idrespuesta, afirmativo) values ("Cadera",22, "no");

insert into respuestas(respuesta, idrespuesta, afirmativo) values ("Ígnea",23, "no");
insert into respuestas(respuesta, idrespuesta, afirmativo) values ("Sedimentária",23, "no");
insert into respuestas(respuesta, idrespuesta, afirmativo)values ("Metamórfica",23, "si");
insert into respuestas(respuesta, idrespuesta, afirmativo) values ("Meteorito",23, "no");

insert into respuestas(respuesta, idrespuesta, afirmativo) values ("Melocotón",24, "no");
insert into respuestas(respuesta, idrespuesta, afirmativo)values ("Violeta",24, "no");
insert into respuestas(respuesta, idrespuesta, afirmativo) values ("Crisantemo",24, "no");
insert into respuestas(respuesta, idrespuesta, afirmativo) values ("Cerezo",24, "si");

insert into respuestas(respuesta, idrespuesta, afirmativo) values ("Sol",25, "no");
insert into respuestas(respuesta, idrespuesta, afirmativo) values ("Cielo",25, "no");
insert into respuestas(respuesta, idrespuesta, afirmativo) values ("Sabiduría",25, "si");
insert into respuestas(respuesta, idrespuesta, afirmativo) values ("Desierto",25, "no");