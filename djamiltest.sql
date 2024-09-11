CREATE DATABASE TESTER

USE TESTER 

CREATE  TABLE client (customerid VARCHAR(5) PRIMARY KEY NOT NULL, 
Prenom VARCHAR(80) NOT NULL,
Nom_de_famille VARCHAR(80) NOT NULL,
email VARCHAR(80) NOT NULL,
Telephone NUMERIC(9) NOT NULL,
address_ VARCHAR (80) NOT NULL,
Ville VARCHAR(80) NOT NULL,
etat VARCHAR (80) NOT NULL, 
Code_postal VARCHAR(80)NOT NULL);



CREATE TABLE categorie ( categorieid VARCHAR(5) PRIMARY KEY NOT NULL, 
nom_de_la_categorie VARCHAR(80) NOT NULL,
description_ VARCHAR (80) NOT NULL);


CREATE TABLE Produit (productid VARCHAR(5) PRIMARY KEY NOT NULL,
Nom_du_produit VARCHAR(80) NOT NULL,
description_ VARCHAR(80) NOT NULL,
Prix NUMERIC(9) NOT NULL,
quantite_en_stock NUMERIC NOT NULL,
categorieid VARCHAR(5) NOT NULL FOREIGN KEY REFERENCES categorie(categorieid))



CREATE TABLE orders (orderid VARCHAR(5) PRIMARY KEY NOT NULL,
customerid VARCHAR (5) NOT NULL FOREIGN KEY REFERENCES client(customerid),
date_comande DATE NOT NULL,
montant_total NUMERIC(12) NOT NULL)


CREATE TABLE detaille_commande (orderdetailleid VARCHAR (80) PRIMARY KEY NOT NULL,
orderid VARCHAR(5) NOT NULL FOREIGN KEY REFERENCES orders(orderid),
customerid VARCHAR(5) NOT NULL FOREIGN KEY REFERENCES client(customerid),
quantite VARCHAR (80) NOT NULL,
prix_unitaire NUMERIC (10) NOT NULL)



