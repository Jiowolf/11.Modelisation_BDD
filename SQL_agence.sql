
CREATE TABLE Agence
(
  AgenceID    INT         NOT NULL AUTO_INCREMENT,
  Nom_agence  VARCHAR(50) NULL    ,
  Mail_agence VARCHAR(50) NULL    ,
  PRIMARY KEY (AgenceID)
);

ALTER TABLE Agence
  ADD CONSTRAINT UQ_AgenceID UNIQUE (AgenceID);

CREATE TABLE Client
(
  ClientID       INT         NOT NULL AUTO_INCREMENT,
  Nom_client     VARCHAR(50) NULL    ,
  Prenom_client  VARCHAR(50) NULL    ,
  Date_naissance DATE        NULL    ,
  Mail_client    VARCHAR(50) NULL    ,
  PRIMARY KEY (ClientID)
);

ALTER TABLE Client
  ADD CONSTRAINT UQ_ClientID UNIQUE (ClientID);

CREATE TABLE Guide_touristique
(
  GuideID      INT         NOT NULL AUTO_INCREMENT,
  Nom_guide    VARCHAR(50) NULL    ,
  Zone_travail VARCHAR(50) NULL    ,
  AgenceID     INT         NOT NULL,
  voyageID     INT         NOT NULL,
  PRIMARY KEY (GuideID)
);

ALTER TABLE Guide_touristique
  ADD CONSTRAINT UQ_GuideID UNIQUE (GuideID);

CREATE TABLE Hebergement
(
  HerbergementID      INT         NOT NULL AUTO_INCREMENT,
  Nom_hebergement     VARCHAR(50) NULL    ,
  Type_hebergement    VARCHAR(50) NULL    ,
  Ville_hebergement   VARCHAR(50) NULL    ,
  Pays_hebergement    VARCHAR(50) NULL    ,
  Contact_hebergement VARCHAR(50) NULL    ,
  AgenceID            INT         NOT NULL,
  voyageID            INT         NOT NULL,
  PRIMARY KEY (HerbergementID)
);

ALTER TABLE Hebergement
  ADD CONSTRAINT UQ_HerbergementID UNIQUE (HerbergementID);

CREATE TABLE Moyen_de_transport
(
  Transport      INT         NOT NULL AUTO_INCREMENT,
  Type_Transport VARCHAR(50) NULL    ,
  Nom_transport  VARCHAR(50) NULL    ,
  Place_véhicule VARCHAR(50) NULL    ,
  Nom_compagine  VARCHAR(50) NULL    ,
  voyageID       INT         NOT NULL,
  ClientID       INT         NOT NULL,
  PRIMARY KEY (Transport)
);

ALTER TABLE Moyen_de_transport
  ADD CONSTRAINT UQ_Transport UNIQUE (Transport);

CREATE TABLE Payement
(
  PayementID      INT         NOT NULL AUTO_INCREMENT,
  Date_payement   DATE        NULL    ,
  Status_payement BOOLEAN     NULL     DEFAULT false,
  Mode_payement   VARCHAR(50) NULL    ,
  voyageID        INT         NOT NULL,
  ClientID        INT         NOT NULL,
  PRIMARY KEY (PayementID)
);

ALTER TABLE Payement
  ADD CONSTRAINT UQ_PayementID UNIQUE (PayementID);

CREATE TABLE Voyage
(
  voyageID            INT         NOT NULL AUTO_INCREMENT,
  Destination         VARCHAR(30) NULL    ,
  Prix                NUMERIC     NULL    ,
  Places_disponible   INT         NULL    ,
  Incription_en_cours INT         NULL    ,
  AgenceID            INT         NOT NULL,
  ClientID            INT         NOT NULL,
  PRIMARY KEY (voyageID)
);

ALTER TABLE Voyage
  ADD CONSTRAINT UQ_voyageID UNIQUE (voyageID);

ALTER TABLE Guide_touristique
  ADD CONSTRAINT FK_Agence_TO_Guide_touristique
    FOREIGN KEY (AgenceID)
    REFERENCES Agence (AgenceID);

ALTER TABLE Hebergement
  ADD CONSTRAINT FK_Agence_TO_Hebergement
    FOREIGN KEY (AgenceID)
    REFERENCES Agence (AgenceID);

ALTER TABLE Voyage
  ADD CONSTRAINT FK_Agence_TO_Voyage
    FOREIGN KEY (AgenceID)
    REFERENCES Agence (AgenceID);

ALTER TABLE Hebergement
  ADD CONSTRAINT FK_Voyage_TO_Hebergement
    FOREIGN KEY (voyageID)
    REFERENCES Voyage (voyageID);

ALTER TABLE Moyen_de_transport
  ADD CONSTRAINT FK_Voyage_TO_Moyen_de_transport
    FOREIGN KEY (voyageID)
    REFERENCES Voyage (voyageID);

ALTER TABLE Payement
  ADD CONSTRAINT FK_Voyage_TO_Payement
    FOREIGN KEY (voyageID)
    REFERENCES Voyage (voyageID);

ALTER TABLE Voyage
  ADD CONSTRAINT FK_Client_TO_Voyage
    FOREIGN KEY (ClientID)
    REFERENCES Client (ClientID);

ALTER TABLE Payement
  ADD CONSTRAINT FK_Client_TO_Payement
    FOREIGN KEY (ClientID)
    REFERENCES Client (ClientID);

ALTER TABLE Moyen_de_transport
  ADD CONSTRAINT FK_Client_TO_Moyen_de_transport
    FOREIGN KEY (ClientID)
    REFERENCES Client (ClientID);

ALTER TABLE Guide_touristique
  ADD CONSTRAINT FK_Voyage_TO_Guide_touristique
    FOREIGN KEY (voyageID)
    REFERENCES Voyage (voyageID);
