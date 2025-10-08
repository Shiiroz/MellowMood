# Journal EDA – MellowMood


## 🎯 Objectif
Analyse exploratoire du dataset financier et des données magasins pour préparer la modélisation et la data visualisation.

---

## 🧩 Étape 1 — Import & structure
**Fichier :** `01_eda_financier.ipynb`  
**Code clé :**
```python
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns

df_fin = pd.read_csv("../../data/df_mm_financial_details.csv")
df_sto = pd.read_csv("../../data/df_mm_stores_details.csv")



# 🧭 Plan de Travail — Projet MellowMood

Ce document résume l’ordre logique de travail pour l’analyse et la modélisation du projet **MellowMood**.  
Chaque notebook correspond à une étape clé du pipeline d’analyse.

---

## 📋 Vue d’ensemble

| Ordre | Fichier | Objectif principal | Résultat attendu |
|:------:|:---------|:------------------|:------------------|
| 1️⃣ | **`financier.ipynb`** | Nettoyage et analyse exploratoire du dataset financier (ventes, profits, marges, coûts, marketing) | `data/interim/df_financial_clean.csv` |
| 2️⃣ | **`stores.ipynb`** | Analyse du dataset des magasins (localisation, marché, produit, effectifs) | `data/interim/df_stores_clean.csv` |
| 3️⃣ | **`jointure_kpi.ipynb`** | Fusion des données financières et magasins + calculs des KPI (écarts Réel vs Prévu, ROMI, classement) | `data/processed/mellowmood_joined.parquet` |
| 4️⃣ | **`Analyse.ipynb`** | Synthèse finale : insights, storytelling et recommandations business | Rapport final ou Dashboard Power BI / Streamlit |

---

## 🧱 Détails par étape

### 1️⃣ `financier.ipynb`
- Import et exploration du dataset financier  
- Nettoyage, typage, gestion des NA / outliers  
- Analyse descriptive : ventes, profits, marges  
- Export des données nettoyées → `df_financial_clean.csv`

---

### 2️⃣ `stores.ipynb`
- Étude du réseau de magasins : localisation, marché, produits  
- Analyse par État / Type de produit / Quarter  
- Nettoyage et enrichissement des données  
- Export des données nettoyées → `df_stores_clean.csv`

---

### 3️⃣ `jointure_kpi.ipynb`
- Jointure sur la clé commune (`ReportId`)  
- Calculs des KPI :  
  - Δ (écart) et %Δ (écart relatif)  
  - ROMI = Profit incrémental / Marketing  
  - Scoring magasin  
- Export final → `mellowmood_joined.parquet`

---

### 4️⃣ `Analyse.ipynb`
- Analyse globale et synthèse des résultats  
- Sélection des visualisations clés  
- Rédaction des insights et recommandations  
- Préparation du dashboard ou rapport final

---

## 🚀 Résumé
Le flux complet suit une logique **d’analyse reproductible** :
1. **Explorer & Nettoyer** → `financier.ipynb`, `stores.ipynb`  
2. **Fusionner & Calculer** → `jointure_kpi.ipynb`  
3. **Présenter & Recommander** → `Analyse.ipynb`


