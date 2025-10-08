# 🧠 MellowMood — Guide EDA & Étapes de travail

## 🎯 Objectif
Réaliser une analyse exploratoire complète du dataset financier et magasins pour identifier les leviers de performance.

---

## 📋 Étapes principales

### Étape 1 — Import & Setup
- [x] Importer pandas, numpy, matplotlib, seaborn
- [x] Charger les CSV financiers et magasins
- [ ] Vérifier la structure (`.info()`, `.shape`)

### Étape 2 — Nettoyage & Préparation
- [ ] Renommer les colonnes en snake_case
- [ ] Corriger les types (`int`, `float`, `datetime`)
- [ ] Supprimer colonnes vides et doublons
- [ ] Gérer les valeurs manquantes
- [ ] Export vers `data/interim/`

### Étape 3 — Analyse Univariée
- [ ] Histogrammes ventes, marges, profits
- [ ] Boxplots pour détecter les outliers
- [ ] Calcul des stats descriptives (`mean`, `std`, `quantiles`)

### Étape 4 — Analyse Bivariée
- [ ] Corrélations (heatmap)
- [ ] Scatter plots (ventes ↔ marketing, profit ↔ margin)
- [ ] Interprétation des relations

### Étape 5 — KPI & Écarts
- [ ] Créer les colonnes delta (%)
- [ ] Calculer le ROMI
- [ ] Identifier les magasins performants

### Étape 6 — Insights & Sauvegarde
- [ ] Lister les insights majeurs
- [ ] Export `df_financial_clean.csv`
- [ ] Mettre à jour `Journal.md` et `EDA_Steps.mk`
