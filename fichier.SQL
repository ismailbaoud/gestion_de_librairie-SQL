--CREATION DE DATABASE
CREATE DATABASE Librairie;
--SELECTIONNER LA BASE DE DONNEES
USE Librairie;
--CREEZ LE TABLEAU LIVRES ET DETERMINER LES CHAMPS D'INFORMATION ET LES TYPES DE DONNEES
CREATE TABLE Livres (
 ID INT PRIMARY KEY AUTO_INCREMENT,
 TITRE VARCHAR(255) NOT NULL,
 AUTEUR VARCHAR(255) NOT NULL,
 PRIX 	DECIMAL(5,2) NOT NULL,
 STOCK INT NOT NULL
);
--CREEZ LE TABLEAU CLIENTS ET DETERMINER LES CHAMPS D'INFORMATION ET LES TYPES DE DONNEES
CREATE TABLE Clients (
 ID INT PRIMARY KEY AUTO_INCREMENT,
 nom VARCHAR(255) NOT NULL,
 email VARCHAR(255) NOT NULL UNIQUE,
 date_inscription 	DATE NOT NULL
)
--ENTREZ LES INFORMATIONS DU LIVRE DANS LE TABLEAU LIVRES
INSERT INTO livres
VALUES (1, "Les Misérables" , "	Victor Hugo" , 20.50 , 12),
	   (2, "Le Petit Prince" , "Antoine de Saint-Exupéry" , 15.99 , 5),
       (3, "1984" , "George Orwell" ,  18.00, 8),
       (4, "Harry Potter et la pierre philosophale" , "J.K. Rowling" , 25.00,10 );
--Listez tous les livres disponibles dans la librairie avec leur titre, auteur, et prix
SELECT * FROM Livres;
--ENTREZ LES INFORMATIONS DU CLIEN DANS LE TABLEAU CLIENTS

INSERT INTO Clients
VALUES (1, "Jean Dupont" , "jean.dupont@email.fr", "2024-01-10"),
	   (2, "Alice Martin" , "alice.martin@email.fr" , "2024-02-15"),
       (3, "Bob Robert" , "bob.robert@email.fr" , "2024-03-20");
--Listez tous les CLIENTS disponibles dans la librairie avec leur NOM , EMAIL, DATA_INSCRIPTION
SELECT * FROM Clients;
--Trouvez tous les livres dont le prix est supérieur à 20 euros
SELECT * FROM Livres
WHERE prix > 20;
--Trouvez tous les clients inscrits après le 1er février 2024 
SELECT * FROM Clients 
WHERE date_inscription > '2024-02-01';
--Réduisez le stock de 1 pour le livre "1984" (simulatez une vente)
UPDATE Livres
SET STOCK = STOCK - 1
WHERE TITRE = '1984';
--Supprimez un client dont l'email est "bob.robert@email.fr"
DELETE FROM Clients
WHERE email = 'bob.robert@email.fr';
--Ajoutez un nouveau livre à la table Livres
INSERT INTO Livres (ID,TITRE,AUTEUR,PRIX,STOCK)
VALUES (5, "Le Seigneur des Anneaux" , "J.R.R. Tolkien",  30.00,  7);
SELECT * FROM Livres;