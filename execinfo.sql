CREATE TABLE games(
game_id INT AUTO_INCREMENT PRIMARY KEY,
game_title TEXT

);


CREATE TABLE teams(
team_id INT AUTO_INCREMENT PRIMARY KEY, 
team_name TEXT,
game_id INT,
FOREIGN KEY (game_id) REFERENCES games(game_id)

);

CREATE TABLE players(
player_id INT AUTO_INCREMENT PRIMARY KEY, -- auto-genererad id
first_name TEXT, -- förnamn
last_name TEXT, -- efternamn
nickname TEXT, -- nick
adress TEXT, -- gatuadress
zip_code TEXT, -- postnummer
postal_adress TEXT, -- postort
country TEXT, -- land
email TEXT, -- e-mail

team_id INT,
FOREIGN KEY (team_id) REFERENCES teams(team_id)

);

-- Games
INSERT INTO games (game_title) VALUES
('Counter-Strike 2'), -- game 1
('EA Sports FC 24'), -- game 2
('League of Legends'); -- game 3


-- CounterStrike 2: teams
INSERT INTO teams (team_name, game_id) VALUES
('NaVi', 1), -- team 1
('ENCE', 1), -- team 2
('Cloud9', 1), -- team 3
('FaZe', 1), -- team 4
('Heroic', 1), -- team 5
('Complexity', 1), -- team 6
('Vitality', 1), -- team 7
('MOUZ', 1); -- team 8

-- EA Sports FC 24: teams
INSERT INTO teams (team_name, game_id) VALUES
('AFC Ajax Brazil', 2), -- team 1
('Team Gullit', 2), -- team 2
('DUX America', 2), -- team 3
('RBLZ Gaming', 2), -- team 4
('Team FUTWIZ', 2), -- team 5
('Atlanta United FC', 2), -- team 6
('TG NIP', 2), -- team 7
('Team Exeed', 2); -- team 8

-- League of Legends: teams
INSERT INTO teams (team_name, game_id) VALUES
('NRG eSports', 3), -- team 1
('G2 eSports', 3), -- team 2
('Fnatic', 3), -- team 3
('MAD Lions', 3), -- team 4
('Cloud9', 3), -- team 5
('LOUD', 3), -- team 6
('Team Liquid', 3), -- team 7
('Team BDS', 3); -- team 8

-- Counter-Strike 2: players
-- NaVi
INSERT INTO players 
(first_name, last_name, nickname, 
adress, zip_code, postal_adress, 
country, email, team_id) VALUES
('Valerii', 'Vakhovskyi', 'b1t', 
'Kosmonavtov 14', 'NONE', 'DNEPROPETROVSK',
'Ukraine', 'b1t@navi.com', 1),

('Justinas', 'Lekavicius', 'jL',
'Vintergatan 12', '532 43', 'HAGEN',
'Lithuania', 'jL@navi.com', 1),

('Aleksi', 'Virolainen', 'Aleksib',
'Kluuvikatu 5', '01380', 'UUSIMAA',
'Finland', 'aleksib@navi.com', 1),

('Mihai', 'Ivan', 'iM',
'Hamngatan 18', '342 33', 'PLATS',
'Romania', 'iM@navi.com', 1),

('Ihor', 'Zhdanov', 'w0nderful',
'Mineralnaya 18', 'NONE', 'IRPEN',
'Ukraine', 'w0nderful@navi.com', 1);

-- ENCE
INSERT INTO players 
(first_name, last_name, nickname, 
adress, zip_code, postal_adress, 
country, email, team_id) VALUES

('Lukas', 'Rossander', 'gla1ve',
'Lumbyholmvej 39', '3390', 'SJAELLAND',
'Denmark', 'gla1ve@ence.gg', 2), 

('Pawel', 'Dycha', 'dycha',
'Chlodna 25', '40-311', 'KATOWICE',
'Poland', 'dycha@ence.gg', 2), 

('Pavle', 'Boskovic', 'maden',
'Sommargatan 64', '976 67', 'GREN',
'Montenegro', 'maden@ence.gg', 2), 

('Alvaro', 'Garcia', 'SunPayus',
'Puerta Nueva 62', '36380', 'PONTEVEDRA',
'Spain', 'sunpayus@ence.gg', 2), 

('Guy', 'Iluz', 'NertZ',
'3 Odem', 'NONE', 'PETAH TIKVA',
'Israel', 'nertz@ence.gg', 2);

-- Cloud9
INSERT INTO players 
(first_name, last_name, nickname, 
adress, zip_code, postal_adress, 
country, email, team_id) VALUES

('Abay', 'Khassenov', 'HObbit',
'11 Mikrorayon', 'NONE', 'AKTOBE',
'Kazakhstan', 'HObbit@cloud9.gg', 3), 

('Ilia', 'Zalutskii', 'Perfecto',
'CHapaeva 4', 'NONE', 'CHEBOKSARY',
'Russia', 'perfecto@cloud9.gg', 3), 

('Kirill', 'Mikhaylov', 'Boombl4',
'Gvozdkova 16', 'NONE', 'VOLGOGRAD',
'Russia', 'boombl4@cloud9.gg', 3), 

('Denis', 'Sharipov', 'electroNic',
'61 Kvartal', 'NONE', 'ANGARSK',
'Russia', 'electroNic@cloud9.gg', 3), 

('Dmitrii', 'Sokolov', 'sh1ro',
'Mira 196', 'NONE', 'STAVROPOL',
'Russia', 'sh1ro@cloud9.gg', 3);

-- FaZe
INSERT INTO players 
(first_name, last_name, nickname, 
adress, zip_code, postal_adress, 
country, email, team_id) VALUES

('Helvijs', 'Saukants', 'Broky',
'Ludzas 52', 'NONE', 'RIGA',
'Latvia', 'broky@fazeclan.com', 4), 

('Robin', 'Kool', 'ropz',
'Köie 13', '11621', 'TALLINN',
'Estonia', 'ropz@fazeclan.com', 4), 

('Finn', 'Andersen', 'KARRIGAN',
'Kongshöjvej 13', '1214', 'SJAELLAND',
'Denmark', 'karrigan@fazeclan.com', 4), 

('Olof', 'Kajbjer', 'OLOFMEISTER',
'Violvägen 22', '267 00', 'BJUV',
'Sweden', 'olofmeister@fazeclan.com', 4), 

('Håvard', 'Nygaard', 'RAIN',
'Duestien 144', '3717', 'SKIEN',
'Norway', 'rain@fazeclan.com', 4);

-- Heroic
INSERT INTO players 
(first_name, last_name, nickname, 
adress, zip_code, postal_adress, 
country, email, team_id) VALUES

('René', 'Madsen', 'TeSeS',
'Bakkelunden 83', '3740', 'HOVEDSTADEN',
'Denmark', 'teses@heroic.gg', 5), 

('Rasmus', 'Beck', 'sjuush',
'Stude Strand 85', '1125', 'SJAELLAND',
'Denmark', 'sjuush@heroic.gg', 5), 

('Peter', 'Rasmussen', 'dupreeh',
'Skolegade 39', '1656', 'Köbenhavn K',
'Denmark', 'dupreeh@heroic.gg', 5), 

('Rasmus', 'Nordfoss', 'Zyphon',
'Degnehöjvej 25', '9870', 'SINDAL',
'Denmark', 'zyphon@heroic.gg', 5), 

('Casper', 'Möller', 'cadiaN',
'Lille Vibybej 66', '8340', 'MALLING',
'Denmark', 'cadian@heroic.gg', 5);

-- Complexity
INSERT INTO players 
(first_name, last_name, nickname, 
adress, zip_code, postal_adress, 
country, email, team_id) VALUES

('Jonathan', 'Jablondwski', 'EliGE',
'1946 Vine Street', '99149', 'MALDEN',
'USA', 'elige@complexity.gg', 6), 

('Håkon', 'Fjärli', 'hallzerk',
'Bekkasinveien 94', '4318', 'SANDNES',
'Norway', 'hallzerk@complexity.gg', 6), 

('Ricky', 'Kemery', 'Grim',
'1945 Hardman Road', '01115', 'SPRINGFIELD',
'USA', 'grim@complexity.gg', 6), 

('Michael', 'Wince', 'floppy',
'1100 Stonepot Road', '07102', 'NEWARK',
'USA', 'floppy@complexity.gg', 6), 

('Johnny', 'Theodosiou', 'JT',
'1964 Barlow Street', '0638', 'LIMPOPO',
'South Africa', 'jt@complexity.gg', 6);

-- Vitality
INSERT INTO players 
(first_name, last_name, nickname, 
adress, zip_code, postal_adress, 
country, email, team_id) VALUES

('William', 'Merriman', 'mezii',
'13 Telford Street', 'S43 6LU', 'BARLBOROUGH',
'England', 'mezii@vitality.gg', 7), 

('Shahar', 'Shushan', 'flameZ',
'6 Saadia Garon', 'NONE', 'REHOVOT',
'Israel', 'flamez@vitality.gg', 7), 

('Lotan', 'Giladi', 'Spinx',
'34 Itzhak Sade', 'NONE', 'TEL AVIV',
'Israel', 'spinx@vitality.gg', 7), 

('Mathieu', 'Herbaut', 'ZywOo',
'82 Rue Roussy', '93130', 'NOISY-LE-SEC',
'France', 'zywoo@vitality.gg', 7), 

('Dan', 'Madesclaire', 'apEX',
'17 rue Porte dOrange', '84300', 'CAVAILLON',
'France', 'apex@vitality.gg', 7);

-- MOUZ
INSERT INTO players 
(first_name, last_name, nickname, 
adress, zip_code, postal_adress, 
country, email, team_id) VALUES

('Adam', 'Torzsas', 'torzsi',
'Izabella 87', '8444', 'SZENTGÁL',
'Hungary', 'torzsi@mousesports.com', 8), 

('Jimi', 'Salo', 'Jimpphat',
'Pietarinkuja 26', '61807', 'KAUHAJOKI',
'Finland', 'jimpphat@mousesports.com', 8), 

('Kamil', 'Szkaradek', 'siuhy',
'Armii Ludowej 7', '44-251', 'RYBNIK',
'Poland', 'siuhy@mousesports.com', 8), 

('Dorian', 'Berman', 'xertioN',
'2 Itaron', 'NONE', 'JERUSALEM',
'Israel', 'xertion@mousesports.com', 8), 

('Dennis', 'Nielsen', 'sycrone',
'Brogade 99', '6715', 'Esbjerg N',
'Denmark', 'sycrone@mousesports.com', 8);

-- EA SPORTS FC 24: players
INSERT INTO players 
(first_name, last_name, nickname, 
adress, zip_code, postal_adress, 
country, email, team_id) VALUES

-- AFC Ajax Brazil
('Paulo', 'Ferreira', 'PHzin', 
'Rua Copaiba 1474', '79065-410', 'CAMPO GRANDE',
'Brazil', 'PHzin@ajax.com', 9),

-- Team Gullit
('Manuel', 'Bachoore', 'Manu', 
'De Laan 76', '9981 GR', 'UITHUIZEN',
'Netherlands', 'manu@teamgullit.com', 10),

-- DUX America
('Ander', 'Tobal', 'Neat', 
'Herreria 38', '18197', 'GRANADA',
'Spain', 'neat@duxamerica.com', 11),

-- RBLZ Gaming
('Umut', 'Gultekin', 'Umut', 
'Reinickendorf 46', '87515', 'SONTHOFEN',
'Germany', 'umut@rblzgaming.com', 12),

-- Team FUTWIZ
('Mark', 'Zakhary', 'Mark11', 
'47 McGregor Street', '2879', 'MENINDEE',
'Australia', 'mark11@futwiz.com', 13),

-- Atlanta United
('Paulo', 'Neto', 'PauloNeto999', 
'Estrada da Familia 1835', '04895-060', 'SÃO PAULO',
'Brazil', 'pauloneto999@atlunitedfc.com', 14),

-- TG NIP
('Olle', 'Arbin', 'Ollelito', 
'Västra Långgatan 15', '590 40', 'KISA',
'Sweden', 'ollelito@nip.com', 15),

-- Team Exeed
('Francesco', 'Pio Tagliafierro', 'Obrun2002', 
'Via Torino 3', '29100', 'PIACENZA',
'Italy', 'obrun2002@exeed.com', 16);

-- League of Legends: Players
INSERT INTO players 
(first_name, last_name, nickname, 
adress, zip_code, postal_adress, 
country, email, team_id) VALUES

-- NRG eSports
('Niship', 'Doshi', 'Dhokla', 
'3329 Crestview Terrace', '78130', 'NEW BRAUNFELS',
'USA', 'dhokla@NRG.com', 17),

('Juan', 'Arturo Garcia', 'Contractz', 
'230 Tennessee Avenue', '06708', 'WATERBURY',
'USA', 'contractz@NRG.com', 17),

('Cristian', 'Palafox', 'Palafox', 
'1590 Willis Avenue', '32037', 'PALM COAST',
'USA', '@NRG.com', 17),

('Lee', 'Dong-geun', 'IgNar', 
'Moga-myeon 131', 'NONE', 'GYEONGGI-DO', 
'South Korea', 'ignar@NRG.com', 17),

('Victor', 'Huang', 'FBI', 
'85 Bass Street', '2480', 'LILLIAN ROCK',
'Australia', 'fbi@NRG.com', 17),

-- G2 eSports
('Sergen', 'Celik', 'BrokenBlade', 
'Kirchenallee 17', '94508', 'SCHÖLLNACH',
'Germany', '@G2.com', 18),

('Martin', 'Sundelin', 'Yike', 
'Långgatan 36', '566 00', 'HABO',
'Sweden', '@G2.com', 18),

('Rasmus', 'Borregaard Winther', 'Caps', 
'Brogade 71', '4593', 'ESKEBJERG',
'Denmark', '@G2.com', 18),

('Steven', 'Liv', 'Hans Sama', 
'94 rue du Gue Jacquet', '78400', 'Chatou',
'France', 'hanssama@G2.com', 18),

('Mihael', 'Mehle', 'Mikyx', 
'Tavcarjeva 55', '2214', 'Sladki Vrh',
'Slovenia', 'mikyx@G2.com', 18),

-- Fnatic
('Óscar', 'Muñoz Jiménez', 'Oscarinin', 
'Estrela 57', '39509', 'CANTABRIA',
'Spain', 'oscarinin@fnatic.com', 19),

('Iván', 'Martín Díaz', 'Razork', 
'Ventanilla de Beas 21', '27720', 'LUGO',
'Spain', 'razork@fnatic.com', 19),

('Marek', 'Braázda', 'Humanoid', 
'Absolonova 1148', '675 71', 'KRAJ VYSOCINA',
'Czechia', 'humanoid@fnatic.com', 19),

('Oh', 'Hyeon-taek', 'Noah', 
'Hyeondaeapateu 12', 'NONE', 'SEOUL',
'South Korea', 'noah@fnatic.com', 19),

('Yoon', 'Se-jun', 'Jun', 
'Dongseo 1', 'NONE', 'DAEGU',
'South Korea', 'jun@fnatic.com', 19),

-- MAD Lions
('Javier', 'Prades', 'Elyoya', 
'Constitucion 20', '37130', 'VILLAMAYOR',
'Spain', 'elyoya@madlions.com', 20),

('Yasin', 'Dincer', 'Nisqy', 
'Ramselsesteenweg 381', '9570', 'East Flanders',
'Belgium', 'nisqy@madlions.com', 20),

('Zdravets', 'Iliev Galabov', 'Hylissang', 
'Pod Floriánem 1190', '393 01', 'Pelhrimov',
'Bulgaria', '@madlions.com', 20),

('Matyás', 'Orság', 'Carzzy', 
'Masarykova 55', '789 01', 'ZÁBREH',
'Czechia', 'carzzy@madlions.com', 20),

('Kim', 'Dong-hyeon', 'Chasy', 
'Duhojugong 3', 'NONE', 'GYEONGSANGBUK-DO',
'South Korea', 'chasy@madlions.com', 20),

-- Cloud9
('Ibrahim', 'Allami', 'Fudge', 
'91 English Street', '5252', 'HAY VALLEY',
'Australia', 'fudge@cloud9.com', 21),

('Robert', 'Huang', 'Blaber', 
'3217 Farland Street', '50046', 'IOWA',
'USA', 'blaber@cloud9.com', 21),

('Joseph', 'Pyun', 'Jojopyun', 
'2917 Pine Street', 'T0C 2L2', 'ALBERTA',
'Canada', 'jojopyun@cloud9.com', 21),

('Kim', 'Min-cheol', 'Berserker', 
'Janghyeonri 15', 'NONE', 'GYEONGGI-DO',
'South Korea', 'berserker@cloud9.com', 21),

('Philippe', 'Laflamme', 'Vulcan', 
'778 Tycos Dr', 'M5T 1T4', 'ONTARIO',
'Canada', 'vulcan@cloud9.com', 21),

-- LOUD
('Leonardo', 'Souza', 'Robo', 
'Rua Doze 1319', '34170-051', 'MINAS GERAIS',
'Brazil', 'robo@LOUD.com', 22),

('Park', 'Jong-hoon', 'Croc', 
'Sinjeong 254', 'NONE', 'SEOUL',
'South Korea', 'croc@LOUD.com', 22),

('Thiago', 'Sartori', 'tinowns', 
'Rua C 36 1509', '74265-260', 'GOIÁS',
'Brazil', 'tinowns@LOUD.com', 22),

('Moon', 'Geom-su', 'Route', 
'Duam 868', 'NONE', 'GWANGJU',
'South Korea', 'route@LOUD.com', 22),

('Denilson', 'Oliveira Goncalves', 'Ceos', 
'Avenida Europa 1341', '11533-060', 'SÃO PAULO',
'Brazil', 'ceos@LOUD.com', 22),

-- Team Liquid
('Jeong', 'Eon-young', 'Impact', 
'Garwol-dong 164', 'NONE', 'SEOUL',
'South Korea', 'impact@teamliquid.org', 23),

('Eom', 'Seong-hyeon', 'UmTi', 
'Seonamri 17', '753 55', 'JEOLLANAM-DO',
'South Korea', 'umti@teamliquid.org', 23),

('Eain', 'Stearns', 'APA', 
'2502 Bicetown Road', '10013', 'NEW YORK',
'USA', 'apa@teamliquid.org', 23),

('Sean', 'Sung', 'Yeon', 
'4521 Whaley Lane', '53188', 'WISCONSIN',
'USA', 'yeon@teamliquid.org', 23),

('Jo', 'Yong-in', 'Corejj', 
'Jongam-dong 4', 'NONE', 'SEOUL',
'South Korea', 'corejj@teamliquid.org', 23),

-- Team BDS
('Adam', 'Maanane', 'Adam', 
'54 avenue du Marechal Juin', '97436', 'GUYANE',
'France', 'Adam@bds.com', 24),

('Théo', 'Borile', 'Sheo', 
'34 rue des Soeurs', '78170', 'ÎLE-DE-FRANCE',
'France', 'sheo@bds.com', 24),

('Ilias', 'Bizriken', 'nuc', 
'11 rue Saint Germain', '92230', 'ÎLE-DE-FRANCE',
'France', 'nuc@bds.com', 24),

('Jus', 'Marusic', 'Crownshot', 
'Kolodvorska 56', '6001', 'KOPER',
'Slovenia', 'crownshot@bds.com', 24),

('Labros', 'Papoutsakis', 'Labrov', 
'Pomerio 7', '51000', 'RIJEKA',
'Greece', 'labrov@bds.com', 24);