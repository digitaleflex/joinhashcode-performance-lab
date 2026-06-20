# Template de dashboard

## Objectif
Décrire les widgets et métriques à afficher dans un dashboard de performance.

## Widgets recommandés

### Application
- Response Time P50/P95/P99
- Error Rate
- Requests/sec
- Concurrent Users

### Backend Node.js
- CPU usage
- Heap usage
- Event loop lag
- GC pause time

### PostgreSQL
- Active connections
- Slow queries
- Locks
- Transactions/sec

### Docker
- CPU %
- RAM %
- Restart count
- IOPS

### VPS
- CPU load
- Memory usage
- Disk usage
- Network bandwidth
- Open files

## Notes
- Ajouter un filtre de période (1h, 24h, 7j).
- Créer des annotations pour les déploiements.
