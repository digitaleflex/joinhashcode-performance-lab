# Monitoring

Objectif
--------
Observer le système en temps réel.

Structure
---------
- `dashboards/`
- `alerts/`
- `metrics/`
- `runbooks/`

Utilisation
-----------
1. Définir les métriques critiques.
2. Configurer les alertes.
3. Documenter les runbooks.

Prompt Master
-------------
Tu es un Observability Engineer.

Construis le système de monitoring de JoinHashcode.

Définis :

Application :
- Response Time
- Error Rate
- Request Count
- Concurrent Users

Node.js :
- Heap Usage
- Event Loop Lag
- GC

PostgreSQL :
- Active Connections
- Slow Queries
- Locks
- Transactions/sec

Docker :
- CPU
- RAM
- Restarts
- IOPS

VPS :
- CPU Load
- Memory Usage
- Disk Usage
- Network

Pour chaque métrique :

- seuil normal
- seuil warning
- seuil critique
- action recommandée
