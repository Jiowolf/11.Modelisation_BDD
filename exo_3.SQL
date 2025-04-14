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


