# Performance Prompt Master pour HASHCODE

## MASTER PROMPT FORMULA

MASTER = R + C + O + I + T + M + D + F + Q + V

- R = ROLE
- C = CONTEXT
- O = OBJECTIVE
- I = INPUTS
- T = TASKS
- M = METHODOLOGY
- D = DELIVERABLES
- F = FORMAT
- Q = QUALITY GATES
- V = VERIFICATION

Chaque prompt ci-dessous est structuré pour respecter cette formule.

## Contexte général
- Framework : Next.js 15 App Router
- Base : PostgreSQL auto-hébergée sous Docker
- ORM : Prisma v7
- Auth : Better Auth
- UI : TailwindCSS v4 + Radix UI + Shadcn
- Hébergement : VPS Hostinger KVM 2 vCPU / 8 Go RAM

---

## Prompt Master #1 — Audit Global de Performance

ROLE
Tu es un Staff Software Engineer spécialisé en Performance Engineering, Next.js 15, PostgreSQL, Prisma et Infrastructure Cloud.

CONTEXTE
HASHCODE est une plateforme de profilage et de matching communautaire ciblant les talents technologiques africains. L'application tourne sur un VPS 2 vCPU / 8 Go RAM avec Next.js 15, PostgreSQL dans Docker, Prisma et Better Auth.

OBJECTIVE
Analyser le code fourni comme si l'application devait supporter plusieurs milliers d'utilisateurs.

INPUTS
- Code source de l'application
- Schéma Prisma si disponible
- Configuration Docker / VPS
- Documentation d'architecture existante

TASKS
1. Identifier les goulots d'étranglement par fichier.
2. Détecter les opérations CPU intensives.
3. Détecter les opérations I/O coûteuses.
4. Détecter les requêtes SQL inefficaces.
5. Détecter les risques de Memory Leak.
6. Détecter les opérations bloquantes.
7. Détecter les appels réseau inutiles.
8. Détecter les risques de saturation du VPS.

METHODOLOGY
- Analyser chaque couche séparément : frontend, backend, base de données, infrastructure.
- Prioriser les problèmes avec impact tangible sur CPU, RAM, DB, réseau.
- Fournir des exemples concrets et des recommandations pratiques.

DELIVERABLES
- Liste des problèmes identifiés
- Tableau d'impacts par dimension
- Recommandations de correction
- Priorisation des Quick Wins et optimisations structurelles

FORMAT
- Utiliser des sections claires et des listes à puces
- Fournir des exemples de code optimisé
- Terminer par des blocs de priorités

QUALITY GATES
- Analyse professionnelle et structurée
- Recommandations actionnables
- Résultats reproductibles
- Conformité aux contraintes du VPS

VERIFICATION
- Vérifier la cohérence des résultats
- Vérifier que tous les aspects CPU / RAM / DB / réseau sont couverts
- Vérifier qu'il y a des livrables clairs et une priorisation

Livrables attendus
1. Quick Wins (<1h)
2. Optimisations moyennes (<1 jour)
3. Optimisations structurelles (>1 semaine)
4. Score de santé global (/100)

---

## Prompt Master #2 — Audit Prisma & PostgreSQL

ROLE
Tu es un Database Performance Engineer expert PostgreSQL et Prisma.

CONTEXTE
Analyse le schéma Prisma et le code d'une application Next.js 15 avec PostgreSQL auto-hébergé sous Docker.

OBJECTIVE
Identifier les problèmes de base de données qui peuvent saturer PostgreSQL et dégrader les performances.

INPUTS
- Schéma Prisma
- Requêtes Prisma utilisées dans le code
- Configuration PostgreSQL si disponible

TASKS
- Identifier les N+1 queries
- Détecter les index manquants et full table scans
- Repérer les SELECT * et les relations mal chargées
- Vérifier la pagination et les transactions longues
- Identifier les connexions inutiles et les verrous potentiels
- Analyser les agrégations coûteuses

METHODOLOGY
- Examiner chaque requête Prisma et son pattern d'accès aux données
- Prioriser les optimisations avec impact direct sur la charge DB
- Proposer des corrections avec code Prisma et SQL

DELIVERABLES
- Liste des problèmes DB
- Requêtes risquées et analyse
- Recommandations d'index et de migration
- Plan de monitoring PostgreSQL

FORMAT
- Tableaux ou listes structurées
- Exemples de requêtes et de code optimisé
- Plan clair pour la mise en œuvre

QUALITY GATES
- Analyse technique détaillée
- Propositions conformes aux bonnes pratiques PostgreSQL
- Résultats exploitables par une équipe de DB

VERIFICATION
- Vérifier que tous les points critiques sont couverts
- Vérifier l'existence de recommandations SQL
- Vérifier l'impact estimé sur PostgreSQL

Livrables attendus
- Liste des index à créer
- Plan de migration
- Plan de monitoring PostgreSQL
- Top 10 des requêtes les plus risquées

---

## Prompt Master #3 — Audit Next.js 15

ROLE
Tu es un Principal Frontend Performance Engineer spécialisé Next.js 15 App Router.

CONTEXTE
Analyse l'application Next.js 15 du point de vue du rendu, du bundling et de la consommation client/serveur.

OBJECTIVE
Identifier les optimisations front-end spécifiques à Next.js et la structure des composants.

INPUTS
- Code Next.js
- Composition des pages et composants
- Utilisation des Server/Client Components

TASKS
- Identifier les mauvais usages de Server vs Client Components
- Repérer les Client Components inutiles
- Détecter les re-renders excessifs
- Détecter l'hydration excessive
- Mesurer la taille des bundles
- Identifier les imports dynamiques manquants
- Repérer les fetchs redondants
- Vérifier l'utilisation de Suspense et de cache
- Vérifier le streaming

METHODOLOGY
- Cartographier les composants et leurs dépendances
- Prioriser ce qui impacte le plus l'expérience utilisateur
- Fournir des refactors concrets

DELIVERABLES
- Liste des problèmes front-end
- Plan d'optimisation
- Architecture cible

FORMAT
- Sections claires avec causes et solutions
- Exemples de refactor
- Estimations de gain

QUALITY GATES
- Analyse ciblée sur Next.js App Router
- Recommandations adaptées au framework
- Résultats prêts à être implémentés

VERIFICATION
- Vérifier que chaque problème a une solution
- Vérifier que le plan d'optimisation est cohérent
- Vérifier l'architecture cible proposée

Livrables attendus
- Plan d'optimisation
- Estimation du gain
- Architecture cible

---

## Prompt Master #4 — Audit de Charge VPS

ROLE
Tu es un Site Reliability Engineer (SRE).

CONTEXTE
Modélise le comportement d'une application Next.js/PostgreSQL sur un VPS 2 vCPU / 8 Go RAM et Docker.

OBJECTIVE
Évaluer les seuils de charge, les points de rupture et les réglages d'infrastructure.

INPUTS
- Configuration VPS
- Conteneurs Docker
- Charge utilisateur prévue

TASKS
- Estimer CPU, RAM, IOPS, requêtes SQL/s et bande passante pour chaque palier
- Identifier les points de rupture
- Proposer les réglages PostgreSQL, Node.js, Docker, Linux
- Définir une architecture cible

METHODOLOGY
- Utiliser des profils de charge progressifs
- Prioriser les limitations matérielles
- Proposer des ajustements pragmatiques

DELIVERABLES
- Modélisation par palier utilisateur
- Points de rupture
- Recommandations de tuning
- Architecture cible

FORMAT
- Tableaux par palier de charge
- Recommandations claires
- Comparaisons avant/après

QUALITY GATES
- Analyse quantitative
- Propositions réalistes pour le VPS
- Focus sur la disponibilité

VERIFICATION
- Vérifier la cohérence des estimations
- Vérifier les risques de saturation
- Vérifier la pertinence des paramètres proposés

Livrables attendus
- Paramètres PostgreSQL
- Paramètres Node.js
- Paramètres Docker
- Paramètres Linux
- Architecture cible

---

## Prompt Master #5 — Audit des Cron Jobs

ROLE
Tu es un Software Performance Engineer.

CONTEXTE
Analyse les jobs planifiés, les workers et les tâches asynchrones de l'application Hashcode.

OBJECTIVE
Réduire les coûts CPU/DB/IO des tâches programmées et éviter la saturation du VPS.

INPUTS
- Liste des cron jobs
- Code des workers
- Planification des tâches

TASKS
- Identifier les boucles coûteuses
- Repérer les requêtes répétitives
- Détecter les traitements inutiles
- Identifier les calculs pré-agrégeables
- Vérifier les risques de race conditions et deadlocks

METHODOLOGY
- Analyser chaque tâche séparément
- Rechercher des patterns inefficaces
- Proposer des architectures plus légères

DELIVERABLES
- Diagnostic des jobs
- Recommandations d'optimisation
- Versions optimisées des tâches

FORMAT
- Section par job
- Comparaison avant/après
- Proposition de batch/queue/cache

QUALITY GATES
- Solutions pragmatiques
- Respect de la logique métier
- Gains mesurables

VERIFICATION
- Vérifier l'impact CPU/DB
- Vérifier la robustesse des propositions
- Vérifier l'absence de effets secondaires

Livrables attendus
- Version optimisée de chaque tâche
- Recommandation d'architecture event driven

---

## Prompt Master #6 — Audit Memory Leaks Node.js

ROLE
Tu es un Node.js Performance Engineer.

CONTEXTE
Analyse l'application Node.js pour détecter les fuites mémoire et les consommations anormales.

OBJECTIVE
Identifier les sources de fuites mémoire et proposer des correctifs.

INPUTS
- Code backend Node.js
- Utilisation des timers et listeners
- Gestion des connexions DB

TASKS
- Rechercher les objets conservés inutilement
- Vérifier les timers non nettoyés
- Vérifier les listeners non supprimés
- Analyser les buffers excessifs
- Repérer les collections grandissantes
- Vérifier les fuites de Promises
- Vérifier les fuites de connexions DB
- Rechercher les variables globales dangereuses

METHODOLOGY
- Utiliser une analyse statique et dynamique
- Prioriser les sources de fuite à fort impact
- Fournir des solutions concrètes

DELIVERABLES
- Liste des risques mémoire
- Impact RAM et probabilité
- Solutions proposées

FORMAT
- Tableaux de risques
- Recommandations par catégorie

QUALITY GATES
- Analyse complète des fuites possibles
- Propositions exploitables par l'équipe backend

VERIFICATION
- Vérifier l'exhaustivité des points analysés
- Vérifier la clarté des solutions

Livrables attendus
- Risque
- Impact RAM
- Probabilité
- Solution

---

## Prompt Master #7 — Audit de Cache

ROLE
Tu es un Performance Architect.

CONTEXTE
Analyse les opportunités de mise en cache dans l'application Hashcode.

OBJECTIVE
Proposer une stratégie de cache adaptée au frontend, backend et base de données.

INPUTS
- Utilisation des données
- Fréquence des requêtes
- Pages et endpoints critiques

TASKS
- Identifier les données rarement modifiées
- Identifier les calculs coûteux
- Identifier les requêtes fréquentes
- Identifier les pages fréquemment consultées
- Proposer cache mémoire, Next.js, Redis, revalidation, memoization

METHODOLOGY
- Classer les opportunités selon fréquence et coût
- Prioriser selon gain CPU/RAM/DB
- Proposer des solutions simples et sûres

DELIVERABLES
- Liste des propositions de cache
- Gains estimés
- Complexité d'implémentation

FORMAT
- Tableau des propositions
- Comparaison gains / complexité

QUALITY GATES
- Stratégie réaliste et adaptée
- Recommandations exploitables
- Focus sur la réduction de charge DB et CPU

VERIFICATION
- Vérifier la pertinence des propositions
- Vérifier les gains estimés
- Vérifier la cohérence globale


Proposer :

- Cache mémoire
- Cache Next.js
- Redis
- Revalidation
- Memoization

Pour chaque proposition :

- Gain CPU
- Gain RAM
- Gain Base
- Complexité

---

## Métriques clés à mettre en place

### Application
- Response Time
- P95
- P99
- Error Rate
- Request/s
- Concurrent Users

### PostgreSQL
- Active Connections
- Slow Queries
- Locks
- Cache Hit Ratio
- Query Duration
- Transactions/s

### Docker
- CPU %
- RAM %
- IOPS
- Restart Count

### VPS
- CPU Load
- Memory Usage
- Disk Usage
- Swap
- Network
- Open Files

---

## Prompt Ultime

Agis comme une équipe composée de :

- Principal Next.js Engineer
- Principal Database Engineer
- Site Reliability Engineer
- Performance Engineer
- DevOps Architect

Analyse entièrement le projet JoinHashcode.

Objectif :

Permettre à l'application de supporter 10 000 utilisateurs actifs avec un VPS de 2 vCPU et 8 Go RAM.

Pour chaque fichier :

1. Identifier les problèmes.
2. Donner leur gravité.
3. Expliquer leur impact.
4. Donner le code optimisé.
5. Estimer le gain.

Produire ensuite :

- Top 20 des optimisations prioritaires
- Architecture cible
- Roadmap de performance sur 90 jours
- Checklist avant mise en production
- Plan de monitoring et alerting
- Capacité estimée avant saturation
- Capacité estimée après optimisation

