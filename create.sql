create table adresse
(
	refAdresse integer not null,
	numVoie integer not null,
	typeVoie varchar(30) not null,
	nomVoie varchar2(30) not null,
	ville varchar2(30) not null,
	codePostal number(5) not null,
	region varchar2(30) not null,
	primary key (refAdresse)
);

create table bienImmobilier
(
	refBien integer not null ,
	refAdresse integer not null,
	nbrePieces integer not null,
	nbreChambres integer not null,
	nbreSalleDeBains integer not null,
	nbreCuisines integer not null,
	sousBassement varchar2(3),
	surface integer not null,
	primary key (refBien),
	foreign key (refAdresse) references adresse
);

create table maison
(
	refBien integer not null,
	surfaceTerrain integer not null,
	primary key (refBien),
	foreign key (refBien) references bienImmobilier on delete cascade
) ;

create table appartement
(
	refBien integer not null,
	etage integer not null,
	ascenceur varchar2(3),
	primary key (refBien),
	foreign key (refBien) references bienImmobilier on delete cascade
) ;

create table client
(
	refClient integer not null,
	nom varchar2(30) not null,
	prenom varchar2(30) not null,
	dateNaissance date not null,
	refAdresse integer not null,
	telephone number(10) not null,
	dateInscritpion date not null,
	eMail varchar(50) not null,
	login varchar2(10) not null,
	passwd integer not null,
	primary key (refClient)
);

create table proprietaire
(
	refProprietaire integer not null,
	nom varchar2(30) not null,
	prenom varchar2(30) not null,
	login varchar2(10) not null,
	passwd integer not null,
	primary key (refProprietaire)
);

create table contrat
(
	refClient integer not null,
	refProprietaire integer not null,
	refBien integer not null,
	typeContrat varchar2(30),
	primary key (refClient, refProprietaire, refBien),
	foreign key (refClient) references client on delete cascade,
	foreign key (refProprietaire) references proprietaire on delete	cascade,
	foreign key (refBien) references bienImmobilier on delete cascade
);

create table agence
(
	refAgence integer not null,
	refAdresse varchar(50),
	primary key (refAgence)
);

create table personnelAgence
(
	refPersonnel integer not null,
	refAgence integer not null,
	nom varchar2(30) not null,
	prenom varchar2(30) not null,
	fonction varchar2(30) not null,
	salaire integer not null,
	primary key (refPersonnel),
	foreign key (refAgence) references agence on delete cascade
);


create table recherche
(
	refClient integer not null,
	typeRecherche varchar2(10) not null,
	maxPrix integer,
	minPrix integer,
	minSurface integer,
	maxSurface integer,
	nbrePiece integer,
	region varchar2(30),
	primary key (refClient,typeRecherche),
	foreign key (refClient) references client on delete cascade
);

create table location
(
	refBien integer not null,
	refProprietaire integer not null,
	loyer integer not null,
	primary key (refBien,refProprietaire),
	foreign key (refBien) references bienImmobilier on delete cascade,
	foreign key (refProprietaire) references proprietaire on delete cascade
);

create table vente
(
	refBien integer not null,
	refProprietaire integer not null,
	refPersonnel integer not null,
	prixInitial integer not null,
	marge integer not null,
	fraisAgence integer not null,
	enVenteDepuis date not null,
	vendu varchar2(3) not null,
	primary key (refBien, refProprietaire, refPersonnel),
	foreign key (refBien) references bienImmobilier on delete cascade,
	foreign key (refProprietaire) references proprietaire on delete	cascade,
	foreign key (refPersonnel) references personnelAgence on delete cascade
);

create table archive
(
	refBien integer not null,
	refProprietaire integer not null,
	refPersonnel integer not null,
	prixInitial integer not null,
	marge integer not null,
	fraisAgence integer not null,
	enVenteDepuis date not null,
	vendu varchar2(3) not null,
	benefice integer not null,
	dateVente date not null,
	primary key (refBien, dateVente),
	foreign key (refBien) references bienImmobilier on delete cascade,
	foreign key (refProprietaire) references proprietaire on delete	cascade,
	foreign key (refPersonnel) references personnelAgence on delete cascade
);

create table creneauVisite
(
	refBien integer not null,
	refPersonnel integer not null,
	refClient integer not null,
	dateVisite date not null,
	primary key (refBien,refPersonnel,refClient),
	foreign key (refClient) references client on delete cascade,
	foreign key (refBien) references bienImmobilier on delete cascade,
	foreign key (refPersonnel) references personnelAgence on delete cascade
);

