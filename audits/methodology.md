# Performance Audit Methodology

## Objectif
Définir un processus reproductible pour auditer Hashcode et prioriser les optimisations.

## Étapes

1. **Pré-audit**
   - Rassembler la documentation technique.
   - Identifier les composants critiques (auth, onboarding, quiz, squads, missions).
   - Lister les dépendances externes et les ressources.

2. **Collecte des données**
   - Relevés de métriques actuelles.
   - Logs d'erreur et traces.
   - Extractions SQL / plans d'exécution.
   - Profils CPU / mémoire.

3. **Analyse par domaine**
   - **Frontend** : bundle, hydration, re-renders, caches.
   - **Backend** : API, middleware, authentification, logging.
   - **Database** : requêtes Prisma, index, verrous, indexation.
   - **Infrastructure** : Docker, VPS, tâches planifiées.
   - **Observabilité** : métriques, alertes, dashboards.

4. **Priorisation**
   - Quick Wins (<1h).
   - Optimisations intermédiaires (<1 jour).
   - Changements structurels (>1 semaine).

5. **Recommandations**
   - Plan d'action 30/60/90 jours.
   - Score de santé global (/100).
   - Liste des métriques et seuils à surveiller.

## Livrables
- Rapport d'audit dans `audits/reports/`
- Plan de monitoring dans `monitoring/`
- Actions d'optimisation dans `optimizations/`
- Postmortem si incident critique dans `postmortems/`

## Bons réflexes
- Toujours documenter la source des données.
- Ne pas optimiser sans mesure.
- Prioriser les problèmes avec impact sur le VPS 2 vCPU / 8 Go RAM.
