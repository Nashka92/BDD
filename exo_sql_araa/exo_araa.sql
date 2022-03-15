/*1 : Sélectionner toutes les colonnes de la table SER*/
SELECT * FROM serv;

/*2 : Sélectionner d’une autre manière ces colonne*/
SELECT * FROM `emp` WHERE 1;

/*3 : Sélectionner les colonnes SERVICE et NOSERV de la table SERV*/
SELECT noserv,service from serv;

/*4 : Sélectionner toutes les colonnes de la table EMP*/
SELECT * from emp;

/*5 : Sélectionner les emplois de la table EMP*/
SELECT emploi FROM emp;

/*6 : Sélectionner les différents emplois de la table EMP*/
SELECT DISTINCT emploi FROM emp;

/*7 : Sélectionner les employés du service N°3*/
SELECT * FROM emp where noserv=3;

/*8 : Sélectionner les noms, prénoms, numéro d’employé, numéro de service de tous les techniciens.*/
SELECT nom,prenom,noemp,noserv FROM emp WHERE emploi="TECHNICIEN";

/*10 : Sélectionner les noms, numéros de service de tous les services dont le numéro est inférieur ou égal à 2.*/
SELECT nom,noserv FROM emp WHERE noserv<=2;

/*11 : Sélectionner les employés dont la commission est inférieure au salaire. Vérifiez le résultat jusqu’à obtenir la bonne réponse.*/
SELECT * from emp where comm<sal;

/*12 : Sélectionner les employés qui ne touchent jamais de commission.*/
select * from emp WHERE comm=0;

/*13 : Sélectionner les employés qui touchent éventuellement une commission et dans l’ordre croissant des commissions.*/
SELECT * from emp WHERE comm>=0 ORDER BY comm;

/*14 : Sélectionner les employés qui ont un chef.*/
SELECT * FROM emp WHERE sup;

/*15 : Sélectionner les employés qui n’ont pas de chef.*/
SELECT * FROM emp WHERE sup IS NULL;

/*16 : Sélectionner les noms, emploi, salaire, numéro de service de tous les employés du service 5 qui gagnent plus de 20000 €*/
SELECT nom,prenom,emploi,sal,noserv FROM emp WHERE noserv=5 AND sal>=20000;

/*17 : Sélectionner les vendeurs du service 6 qui ont un revenu mensuel supérieur ou égal à 9500 €.*/
SELECT emploi,nom FROM emp WHERE noserv=6 AND sal>=9500;

/*18 : Sélectionner dans les employés tous les présidents et directeurs. Attention, le français et la logique sont parfois contradictoires.*/
SELECT * FROM emp WHERE emploi="DIRECTEUR" OR emploi="PRESIDENT";

/*19 : Sélectionner les directeurs qui ne sont pas dans le service 3.*/
SELECT * FROM emp WHERE emploi="DIRECTEUR" AND noserv!=3;

/*20 : Sélectionner les directeurs et « les techniciens du service 1 ».*/
SELECT * FROM emp WHERE emploi="DIRECTEUR" OR emploi="TECHNICIEN" and noserv=1;

/*21 : Sélectionner les « directeurs et les techniciens » du service 1.*/
SELECT * from emp WHERE emploi="DIRECTEUR" AND noserv=1 or emploi="TECHNICIEN" AND noserv=1;

/*22 : Sélectionner les employés du service 1 qui sont directeurs ou techniciens.*/
SELECT * from emp WHERE noserv=1 AND emploi="DIRECTEUR" or emploi="TECHNICIEN";

/*23 : Sélectionner les employés qui ne sont ni directeur, ni technicien et travaillant dans le service 1.*/
SELECT * FROM `emp` WHERE emploi!="DIRECTEUR" AND emploi!="TECHNICIEN" OR noserv=1;

/*24 : Sélectionner les employés qui sont techniciens, comptables ou vendeurs.*/
SELECT * from emp WHERE emploi="TECHNICIEN" OR emploi="COMPTABLE" OR emploi="VENDEUR";

/*25 : Sélectionner les employés qui ne sont ni technicien, ni comptable, ni vendeur.*/
SELECT * FROM emp WHERE emploi!="TECHNICIEN" AND emploi!="COMPTABLE" AND emploi!="VENDEUR";

/*26 : Sélectionner les directeurs des services 2, 4 et 5.*/
SELECT * FROM emp WHERE emploi="DIRECTEUR" AND (noserv=2 OR noserv=4 OR noserv=5);

/*27 : Sélectionner les subalternes qui ne sont pas dans les services 1, 3, 5.*/
SELECT * from emp WHERE sup IS NOT NULL AND (noserv=1 OR noserv=2 OR noserv=5);

/*28 : Sélectionner les employés qui gagnent entre 20000 et 40000 euros, bornes comprises.*/
SELECT * FROM emp WHERE (sal BETWEEN 20000 AND 40000);

/*29 : Sélectionner les employés qui gagnent moins de 20000 et plus de 40000*/ (DOUTE)
 SELECT * FROM `emp` WHERE (sal<2000 or sal>4000);
 
/*30 : Sélectionner les employés qui ne sont pas directeur et qui ont été embauchés en 88.*/
SELECT * FROM emp WHERE emploi!="DIRECTEUR" AND (embauche BETWEEN "1988-01-01" AND"1988-12-31");

/*31 : Sélectionner les directeurs des services 2 ,3 , 4, 5 sans le IN.*/ (DOUTE)
SELECT * FROM emp WHERE emploi="DIRECTEUR" AND (noserv=2 OR noserv=3 OR noserv=4 OR noserv=5);

/*32 : Sélectionner les employés dont le nom commence par la lettre M.*/
SELECT * FROM emp WHERE nom LIKE 'm%';

/*33 : Sélectionner les employés dont le nom se termine par T.*/
SELECT * FROM emp WHERE nom LIKE '%t';

/*34 : Sélectionner les employés ayant au moins deux E dans leur nom.*/
SELECT * FROM emp WHERE nom like '%e%e%';

/*35 : Sélectionner les employés ayant exactement un E dans leur nom.*/
SELECT * from emp WHERE nom LIKE '%e%';

/*36 : Sélectionner les employés ayant au moins un N et un O dans leur nom.*/
SELECT * from emp WHERE nom LIKE '%n%o%';

/*37 : Sélectionner les employés dont le nom s'écrit avec 6 caractères et qui se termine par N.*/
SELECT * FROM emp WHERE length(nom)=6 AND nom LIKE '%n';

/*38 : Sélectionner les employés dont la troisième lettre du nom est un R.*/
SELECT * FROM emp WHERE nom LIKE "__r%";
SELECT * FROM emp WHERE substr(nom,3,1)="r"

/*39 : Sélectionner les employés dont le nom ne s'écrit pas avec 5 caractères.*/
SELECT * FROM emp WHERE length(nom)!=5;

/*40 : Trier les employés (nom, prénom, n° de service, salaire) du service 3 par ordre de salaire croissant.*/
SELECT nom,prenom,noserv,sal from emp WHERE noserv=3 ORDER BY sal ASC;

/*41 : Trier les employés (nom, prénom, n° de service , salaire) du service 3 par ordre de salaire décroissant.*/
SELECT nom,prenom,noserv,sal from emp WHERE noserv=3 ORDER BY sal DESC;

/*42 : Idem en indiquant le numéro de colonne à la place du nom colonne.*/
SELECT nom,prenom,noserv,sal from emp WHERE noserv=3 ORDER BY 4 DESC;

/*43 : Trier les employés (nom, prénom, n° de service, salaire, emploi) par emploi, et pour chaque emploi par ordre décroissant de salaire.*/
SELECT nom,prenom,noserv,sal,emploi from emp ORDER BY emploi AND sal DESC;

/*44 : Idem en indiquant les numéros de colonnes.*/
SELECT nom,prenom,noserv,sal,emploi from emp ORDER BY 5 AND 4 DESC;

/*45 : Trier les employés (nom, prénom, n° de service, commission) du service 3 par ordre croissant de commission.*/
SELECT nom,prenom,noserv,comm from emp WHERE noserv=3 ORDER BY comm ASC;

/*46 : Trier les employés (nom, prénom, n° de service, commission) du service 3 par ordre décroissant de commission, en considérant que celui dont la commission est nulle ne touche pas de commission.*/
SELECT nom,prenom,noserv,comm from emp WHERE noserv=3 AND comm IS NOT NULL ORDER BY comm DESC;


















