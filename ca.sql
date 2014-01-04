create or replace function chiffreAffaire (idAgent integer) 
	return integer is
cursor agent is 
	select marge from vente where refPersonnel=idAgent;
resultat integer := 0;
begin
	for i in agent loop
		resultat := resultat + i.marge;
	end loop;
end;
/
show errors;

create or replace procedure lowerPrice is
	cursor venteC is 
		select refBien, refProprietaire, refPersonnel, prixInitial 
		from vente v
		where sysdate-v.enVenteDepuis>30;
	newPrice integer;
	refB integer;
	refP integer;
	refPer integer;
begin
	open venteC;
	loop
		fetch venteC into refB,refP,refPer,newPrice;
		exit when venteC%notfound;
		update vente 
		set prixInitial=newPrice*98/100
		where refBien=refB and refProprietaire=refP and refPersonnel=refPer;
	end loop;
	close venteC;
end;
/
show errors;

create or replace procedure archiverVentes is
	cursor venteC is
		select *
		from vente 
		where vendu like 'oui';
	refB integer;
	refP integer;
	refPer integer;
begin
	open venteC;
	for curV in venteC loop
		insert into archive
		values (
			curV.refBien,
			curV.refProprietaire,
			curV.refPersonnel,
			curV.prixInitial,
			curV.marge,
			curV.fraisAgence,
			curV.enVenteDepuis,
			curV.vendu,
			curV.marge,
			sysdate);
	end loop;
	delete from vente
	where vendu like 'oui';
	close venteC;
end;
/
show errors;


