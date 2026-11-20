# --- TD1 : Analyse Statistique et Econometrie ---

# 1. Importation des donnees
donnees <- read.csv("donnees_illustratives_ch1.csv")

# 2. Statistiques descriptives de base par region (Moyenne du PIB par habitant)
resultat <- aggregate(pib_hab_usd ~ region, data = donnees, FUN = mean)
print(resultat)

# 3. Identification des valeurs extremes (Chomage max et min)
# Note : L'indice 14 correspond a l'Afrique du Sud et 15 au Vietnam
donnees[which.max(donnees$chomage_pct), c("pays", "chomage_pct")]
donnees[which.min(donnees$chomage_pct), c("pays", "chomage_pct")]
# test

