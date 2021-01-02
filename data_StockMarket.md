Fichier `StockMarket.csv`

Chargement des données:
```R
StockMarket <- read.table("StockMarket.csv", sep = ";", header=TRUE)
```

Pour chaque jour de l'année 2009, on a les valeurs des indices boursiers pour différentes bourses à travers le monde: Allemagne (Ger), Brésil (Bra), États-Unis (US), Grande-Bretagne (GB), Japon (Jap), Turquie (Tur).

Question : Peut-on prédire la valeur de l'indice américain (US) à partir de la connaissance des autres indices boursiers. En effet, en raison du décalage horraire, les bourses américaines ouvrent après toutes les autres à l'échelle d'une journée.
