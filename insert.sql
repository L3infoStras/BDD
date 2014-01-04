insert into adresse
values (1,4,'rue','Yser','Langlet','65010','Alpes');

insert into adresse
values (2,17,'rue','Emile Zola','Paris','75018','Ile de france');

insert into adresse
values (3,54,'boulevard','dauphinot','Reims','51100','Marne');

insert into adresse
values (4,32,'rue','Alalouche','Illkirch','67300','Bas-Rhin');

insert into adresse
values (5,139,'allee','Louyah','Mulhouse','66833','Haut-Rhin');

insert into adresse
values (6,32,'avenue','Foch','Paris','75018','Ile de france');

insert into adresse
values (7,47,'rue','Alalouche','Illkirch','67300','Bas-Rhin');

insert into adresse
values (8,42,'avenue','Foret noire','Strasbourg','67300','Bas-Rhin');

insert into adresse
values (9,3,'rue','Leon Gambetta','Lille','57099','Nord');

insert into adresse
values (10,78,'avenue','Fabidet','Metz','67300','Lorraine');

insert into adresse
values (11,31,'boulevard','Oreste','Strasboug','67000','Bas-Rhin');

insert into adresse
values (12,57,'rue','des martyrs','Paris','75010','Ile de france');

insert into adresse
values (13,32,'rue','des ilotiers','Illkirch','67300','Bas-Rhin');

insert into adresse
values (14,87,'avenue','des émeutiers','Nancy','45300','Lorraine');

insert into adresse
values (15,2,'rue','des skieurs','Avoriaz','87233','Savoie');


insert into bienImmobilier
values (1,11,1,1,1,1,'non',25);
	
insert into bienImmobilier
values (2,12,5,3,1,1,'oui',120);

insert into bienImmobilier
values (3,13,3,2,1,1,'non',45);

insert into bienImmobilier
values (4,6,4,2,1,1,'non',70);

insert into bienImmobilier
values (5,1,4,2,1,1,'non',70);

insert into bienImmobilier
values (6,3,4,3,1,1,'non',200);

insert into bienImmobilier
values (7,7,4,4,1,1,'non',140);

insert into bienImmobilier
values (8,8,4,3,1,1,'non',125);

insert into bienImmobilier
values (9,9,4,3,1,1,'oui',130);

insert into bienImmobilier
values (10,10,4,2,1,1,'oui',170);


insert into maison
values (1,100);

insert into maison
values (4,40);

insert into maison
values (7,400);

insert into maison
values (10,30);

insert into maison
values (6,150);


insert into appartement
values (5,0,'oui');

insert into appartement
values (8,0,'oui');

insert into appartement
values (9,30,'oui');

insert into appartement
values (3,0,'non');


insert into agence
values (1,4);

insert into personnelAgence
values (1,1,'Johnny','Holliday','Agent',1300);


insert into client 
values (1,'andreux','simon',to_date('1987/05/24','YYYY/MM/DD'),
5,'0676543211',to_date('2013/11/20','YYYY/MM/DD'),'simon.andreux@blamail.de',
'blop',19349);

insert into client 
values (2,'herault','jean-marc',to_date('1957/05/21','YYYY/MM/DD'),
4,'0656543211',to_date('2013/10/20','YYYY/MM/DD'),'jmh@blamail.de',
'blip',9349);

insert into client 
values (3,'legrand','sebastien',to_date('1947/05/24','YYYY/MM/DD'),
3,'0676543211',to_date('2012/10/01','YYYY/MM/DD'),'sebby@blamail.de',
'capablanca',11);

insert into client 
values (4,'dom','louis',to_date('1987/05/24','YYYY/MM/DD'),
2,'076543211',to_date('2013/11/20','YYYY/MM/DD'),'simon.andreux@blamail.de',
'bloup',193);

insert into client 
values (5,'duvilliers','clement',to_date('1991/09/04','YYYY/MM/DD'),
1,'0676643211',to_date('2011/01/20','YYYY/MM/DD'),'clemdu@blamail.de',
'bapop',4139);


insert into proprietaire
values (1,'fabrice','dominique','XD',1234);

insert into proprietaire
values (2,'xavier','tocard','cacatoes',32);

insert into proprietaire
values (3,'jose','philippe','dublah',456);


insert into location
values (1,2,200);

insert into location
values (2,2,440);

insert into vente 
values (5,3,1,15000,1000,1500,to_date('2013/11/24','YYYY/MM/DD'),'oui');

insert into vente 
values (4,3,1,15000,1000,1500,to_date('2013/11/24','YYYY/MM/DD'),'oui');

insert into vente 
values (3,3,1,15000,1000,1500,to_date('2013/12/14','YYYY/MM/DD'),'oui');

insert into vente
values (6,1,1,50000,1500,10000,to_date('2013/11/14','YYYY/MM/DD'),'non');

insert into vente
values (7,1,1,50000,1500,10000,to_date('2013/11/29','YYYY/MM/DD'),'non');

insert into vente
values (8,1,1,50000,1500,10000,to_date('2013/12/07','YYYY/MM/DD'),'non');

insert into vente
values (9,1,1,50000,1500,10000,to_date('2013/12/20','YYYY/MM/DD'),'non');

insert into vente
values (10,1,1,50000,1500,10000,to_date('2013/10/24','YYYY/MM/DD'),'non');


insert into creneauVisite
values (1,1,1,to_date('2013/12/29 14:15:00','YYYY/MM/DD HH24:MM:SS'));

insert into creneauVisite
values (1,1,3,to_date('2013/12/29 14:15:00','YYYY/MM/DD HH24:MM:SS'));

insert into creneauVisite
values (2,2,4,to_date('2013/11/29 15:00:00','YYYY/MM/DD HH24:MM:SS'));

insert into creneauVisite
values (1,3,2,to_date('2013/12/29 14:15:00','YYYY/MM/DD HH24:MM:SS'));

