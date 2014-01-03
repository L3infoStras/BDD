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
