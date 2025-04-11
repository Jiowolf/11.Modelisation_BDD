# 11.Modelisation_BDD

1er schéma de BDD avec cette énoncé : 

Une agence de voyages souhaite développer un système permettant de gérer ses réservations de manière efficace. Ce système doit permettre aux clients de réserver des voyages, de procéder aux paiements et d’accéder aux informations concernant les moyens de transport, les hébergements et les guides touristiques associés.

Chaque voyage organisé par l’agence possède une destination, un prix, un nombre limité de places et un nombre d’inscriptions en cours. Lorsqu’un client souhaite participer à un voyage, il doit effectuer une réservation, qui peut être en attente, confirmée ou annulée. Chaque réservation est associée à un montant et une date de réservation.

Le paiement des voyages est également pris en charge par le système. Un client peut régler sa réservation via un mode de paiement défini. Les informations sur le paiement doivent être enregistrées afin de permettre un suivi clair des transactions effectuées.

Les voyages proposés par l’agence incluent des moyens de transport variés tels que les bus, les avions ou les trains, opérés par différentes compagnies de transport. Chaque transport possède un nom, un nombre de places disponibles et un type spécifique. L’agence gère également l’hébergement des voyageurs, avec des établissements de différentes catégories situés dans plusieurs villes et pays. (Petite précision : Un hébergement par voyage & un contact par hébergement)

L’objectif de cet exercice est de modéliser et d’implémenter une base de données relationnelle permettant de gérer ces différents aspects du système de réservation de voyages.

Modélisez le schéma E/R correspondant.
