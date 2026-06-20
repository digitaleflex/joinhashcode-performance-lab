# Template de règles d'alerte

## Objectif
Décrire les alertes de monitoring et les actions associées.

## Alerte 1 : Latence API
- Métrique : `application.response_time_p95`
- Seuil warning : 800 ms
- Seuil critique : 1500 ms
- Action : vérifier le load balancer, analyser les logs, lancer un profilage CPU.

## Alerte 2 : Error Rate
- Métrique : `application.error_rate`
- Seuil warning : 1 %
- Seuil critique : 3 %
- Action : investiguer les erreurs 500/503, vérifier les changements récents.

## Alerte 3 : PostgreSQL Slow Queries
- Métrique : `postgres.slow_queries`
- Seuil warning : 5 slow queries/min
- Seuil critique : 20 slow queries/min
- Action : analyser les requêtes, vérifier les index, examiner les verrous.

## Alerte 4 : CPU Docker
- Métrique : `docker.cpu_usage`
- Seuil warning : 70 %
- Seuil critique : 90 %
- Action : vérifier les conteneurs, analyser les processus Node.js.

## Alerte 5 : RAM VPS
- Métrique : `vps.memory_usage`
- Seuil warning : 75 %
- Seuil critique : 90 %
- Action : analyser la consommation mémoire, vérifier les fuites.
