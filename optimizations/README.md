# Optimizations

Objectif
--------
Documenter toutes les améliorations.

Structure
---------
- `frontend/`
- `backend/`
- `database/`
- `infrastructure/`
- `changelog/`

Utilisation
-----------
1. Ajouter des optimisations identifiées.
2. Évaluer les gains et la difficulté.
3. Documenter le ROI.

Project Presentation
--------------------
- Voir `project-overview.md` pour une description complète de l'application HASHCODE, de sa stack technique et de ses modules clés.
- Voir `performance-prompt-master.md` pour des prompts spécialisés en optimisation de performance et identification des points de rupture.
- Voir `prompt-index.md` pour un index synthétique des audits et des prompts.
- Voir `master-prompt-template.md` pour un modèle générique de Master Prompt.

Prompt Master
-------------
Utilise le modèle `master-prompt-template.md` pour structurer tous tes prompts.

Exemple d'utilisation :

ROLE
- Principal Performance Engineer

CONTEXTE
- Application : HASHCODE
- Stack : Next.js 15, Prisma, PostgreSQL, Docker
- Environnement : VPS 2 vCPU / 8 Go RAM

OBJECTIVE
- Documenter les optimisations critiques pour améliorer la stabilité et la scalabilité.

INPUTS
- Code source
- Schéma Prisma
- Config Docker
- Inventaire des tasks asynchrones

TASKS
- Identifier les goulots d'étranglement
- Prioriser les optimisations
- Proposer des corrections

METHODOLOGY
- Analyser couche par couche
- Prioriser par impact
- Fournir des exemples concrets

DELIVERABLES
- Liste des optimisations
- Estimations de gain
- Plan d'action

FORMAT
- Sections
- Listes à puces
- Tableaux
- Exemples de code

QUALITY GATES
- Professionnel
- Actionnable
- Réutilisable
- Facile à maintenir

VERIFICATION
- Vérifier la cohérence
- Vérifier les dépendances
- Vérifier les risques
- Vérifier les omissions

Catégories :

Frontend :
- Bundle Splitting
- Dynamic Imports
- Memoization
- Caching

Backend :
- Async Processing
- Queues
- Pagination
- Rate Limiting

Database :
- Indexes
- Query Optimization
- Materialized Views
- Connection Pooling

Infrastructure :
- Docker
- Linux
- PostgreSQL Tuning
- Reverse Proxy

Pour chaque optimisation :

- difficulté
- gain estimé
- impact CPU
- impact RAM
- impact DB
- ROI
