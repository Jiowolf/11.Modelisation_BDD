-- 3.2

SELECT 
    voyage.voyageID,
    voyage.Destination,
    voyage.Prix,
    hebergement.Nom_hebergement,
    hebergement.Type_hebergement,
    moyen_de_transport.Type_Transport,
    moyen_de_transport.Nom_transport
FROM 
    voyage
JOIN 
    hebergement ON voyage.voyageID = hebergement.voyageID
JOIN 
    moyen_de_transport ON voyage.voyageID = moyen_de_transport.voyageID;


SELECT 
    client.clientID,
    client.Nom_client,
    client.Prenom_client,
    client.Mail_client,
    voyage.Destination,
    voyage.Prix,
    payement.Status_payement
FROM
    client
JOIN
    payement ON client.clientID = payement.clientID
JOIN
    voyage ON client.clientID = voyage.clientID




SELECT 
    voyage.Destination,
    moyen_de_transport.Type_Transport,
    moyen_de_transport.Nom_transport,
    moyen_de_transport.Nom_compagine
FROM
    voyage
JOIN
    moyen_de_transport ON moyen_de_transport.voyageID = voyage.voyageID;



SELECT 
    agence.Nom_agence,
    agence.Mail_agence,
    hebergement.Nom_hebergement,
    hebergement.Pays_hebergement,
    hebergement.Type_hebergement
FROM
    agence
JOIN
    hebergement ON agence.agenceID = hebergement.agenceID;


-- 3.3

UPDATE
    client
SET 
    Nom_client = "Mason",
    Prenom_client = "Jordan",
    Date_naissance = "1999-11-03",
    Mail_client = "mason.jordan@cljkznf.com"
WHERE
    clientID = 1;


UPDATE
    payement
SET
    Status_payement = 1
WHERE
    PayementID = 3;


UPDATE
    voyage
SET
    Prix = 2600,
    Places_disponible = 40
WHERE
    voyageID = 3;

-- 3.4

ALTER TABLE hebergement
DROP FOREIGN KEY FK_voyage_TO_hebergement;

ALTER TABLE hebergement
ADD CONSTRAINT FK_voyage_TO_hebergement
FOREIGN KEY (voyageID) REFERENCES voyage(voyageID) ON DELETE CASCADE;

DELETE FROM 
    voyage
WHERE
    voyageID = 9;



DELETE FROM 
    payement
WHERE
    PayementID = 3



DELETE FROM
    moyen_de_transport
WHERE
    Transport = 4



-- exercices suivant

/*
Exercice 1 : Afficher toutes les sociétés qui proposent des avions
📌 Objectif : Trouver les entreprises (company) qui ont au moins un transport de type Avion.
*/

SELECT 
    Nom_compagine
FROM
    moyen_de_transport
WHERE
    Type_Transport = "Avion";

/*
Exercice 2 : Lister les transports avec leur société
📌 Objectif : Afficher tous les transports (transport), en affichant le nom de la société correspondante.
*/



/*
Exercice 3 : Trouver les transports ayant plus de 200 places
📌 Objectif : Afficher tous les transports qui ont plus de 200 places (TotalSeats).
*/



/*
Exercice 4 : Afficher les hébergements et leur type de contact principal
📌 Objectif : Associer les hébergements (hebergement) avec le type de contact principal
*/



/* 
Exercice 5 : Trouver les contacts des hébergements en Suisse
📌 Objectif : Afficher les contacts (contact) associés à un hébergement situé en Suisse.e).
*/



/* 
Exercice 6 : Créer un voyage en Belgique (3 jours à Plopsaland) avec un nombre limité de 50 places.
📌 Objectif : Créer un voyage en Belgique, Trouver le moyen de transport, l'herbergement et le contact.
*/



/* 
Exercice 7 : Ajouter un client à ce voyage
📌 Objectif : Ajouter plusieurs clients, payment ....
*/



