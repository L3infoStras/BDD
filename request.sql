--1
select *
from proprietaire p 
where 5 <= (
	select count(*)
	from vente v, bienImmobilier bi
	where p.refProprietaire=v.refProprietaire
		and bi.refBien=v.refBien
		and bi.surface>120);

--3
