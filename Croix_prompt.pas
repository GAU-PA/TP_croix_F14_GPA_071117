
{Algorithme: Croix_prompt

//but: afficher une croix avec un caractère et une taille choisie par l'utilisateur
//principe: Utiliser la boucle Pour et la boucle Tant que

Entrée: le caractère et la taille que demande l'utilisateur
Sortie: La croix avec la bonne taille et les bon caractères la constituant

Var:	car : caractere
		Taille, hauteur, largeur: Entier

Début:
		ECRIRE "Entrer le caractere souhaite pour la croix";
		LIRE car;
		ECRIRE "Entrer la taille de la croix";
		LIRE Taille;
	
	Pour ((hauteur=0) to (taille-1)) faire
		Pour ((largeur=0) to (taille-1)) faire
			Si (hauteur=largeur) ou (largeur=(taille-1)-width) Alors
			Debut
				Ecrire car;
			Sinon
				Ecrire (' ');
			Fin
		Fin
	Fin


Fin}

PROGRAM Croix_prompt;

USES crt;

VAR
	car : char;
	taille, Height, Width : integer;

BEGIN
	clrscr;

	writeln('Entrer le caractere souhaite pour la croix:');
	readln(car);
	writeln('Entrer la taille de la croix:');
	readln(taille);

	FOR Height:=0 TO taille-1 DO
		BEGIN
		FOR Width:=0 TO taille-1 DO
			BEGIN
				IF ((Height=Width) OR (Width=(taille-1)-Height)) THEN
					write(car)
				ELSE
					write(' ');
			END;
			writeln;
		END;
		readkey;
END.