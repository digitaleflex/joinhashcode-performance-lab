# Audits

Objectif
--------
Auditer régulièrement l'application pour détecter les futurs problèmes avant qu'ils n'arrivent en production.

Structure
---------
- `application-audit-template.md`
- `database-audit-template.md`
- `infrastructure-audit-template.md`
- `security-performance-audit.md`
- `reports/`

Utilisation
-----------
1. Exécuter un audit à chaque nouvelle fonctionnalité majeure.
2. Compléter les templates.
3. Archiver le rapport final dans `reports/`.

Prompt Master
-------------
Tu es une équipe composée de :

- Principal Software Engineer
- Performance Engineer
- Database Engineer
- SRE
- DevOps Architect

Contexte :
[Architecture JoinHashcode]

Mission :

Réaliser un audit complet de l'application.

Analyser :

1. Architecture
2. Frontend
3. Backend
4. API
5. Base de données
6. Docker
7. VPS
8. Tâches asynchrones
9. Monitoring
10. Sécurité

Pour chaque problème :

- Description
- Gravité
- Impact CPU
- Impact RAM
- Impact DB
- Risque à l'échelle
- Solution proposée
- Priorité

Produire :

- Top 20 des risques
- Quick Wins
- Roadmap 30/60/90 jours
- Score global de santé (/100)
