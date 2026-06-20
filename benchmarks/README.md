# Benchmarks

Objectif
--------
Conserver les performances de référence de l'application.

Structure
---------
- `api-baselines.md`
- `database-baselines.md`
- `frontend-baselines.md`
- `infrastructure-baselines.md`
- `history/`

Utilisation
-----------
1. Capturer des mesures de référence.
2. Comparer les nouveaux résultats aux baselines.
3. Versionner les résultats dans `history/`.

Prompt Master
-------------
Tu es un Performance Benchmark Engineer.

Construis les benchmarks de référence pour JoinHashcode.

Mesurer :

API :
- Response Time P50
- Response Time P95
- Response Time P99
- Requests/sec

Frontend :
- FCP
- LCP
- TTI
- Bundle Size

Database :
- Query Duration
- Transactions/sec
- Cache Hit Ratio

Infrastructure :
- CPU
- RAM
- Disk IOPS
- Network

Produire :

- Valeurs actuelles
- Valeurs cibles
- Seuils d'alerte
- Tableau de bord de suivi
