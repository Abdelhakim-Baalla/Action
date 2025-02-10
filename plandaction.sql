CREATE TABLE Clients(
	id INT PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(50),
    prenom VARCHAR(50),
    email VARCHAR(100) UNIQUE,
    adress VARCHAR(100)
)ENGINE = InnoDB;


CREATE TABLE Produits(
	id INT PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(50),
    categorie VARCHAR(50),
    prix DECIMAL(10,2)
)ENGINE = InnoDB;

CREATE TABLE Produits(
	id INT PRIMARY KEY AUTO_INCREMENT,
    client_id INT,
    produit_id INT,
    datee DATE,
    FOREIGN KEY (client_id) REFERENCES Clients(id),
    FOREIGN KEY (produit_id) REFERENCES Produits(id),
)ENGINE = InnoDB; 