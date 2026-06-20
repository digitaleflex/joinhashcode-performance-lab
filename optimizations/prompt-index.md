# Index des Performance Prompts pour HASHCODE

Ce document centralise les prompts d'audit et d'optimisation pour JoinHashcode.

## 1. Audit Global de Performance

- Fichier principal : `optimizations/performance-prompt-master.md`
- Objectif : analyser l'application dans son ensemble et identifier les goulots d'étranglement sur CPU, RAM, I/O, SQL, mémoire et réseau.
- Utilisation : lancer un audit complet pour chaque cycle de livraison majeur.

## 2. Audit Prisma & PostgreSQL

- Fichier principal : `optimizations/performance-prompt-master.md`
- Objectif : détecter les N+1 queries, index manquants, full table scans, transactions longues et verrous.
- Utilisation : exécuter avant toute optimisation de la base de données ou migration du schéma.

## 3. Audit Next.js 15

- Fichier principal : `optimizations/performance-prompt-master.md`
- Objectif : auditer les Server Components, Client Components, re-renders, hydration, bundles et cache.
- Utilisation : utiliser lors de refactors front-end ou de changement de rendu.

## 4. Audit de Charge VPS

- Fichier principal : `optimizations/performance-prompt-master.md`
- Objectif : modéliser le comportement de la plateforme sous 100 à 5000 utilisateurs et évaluer les risques de saturation du VPS 2 vCPU / 8 Go RAM.
- Utilisation : utile avant les tests de charge et avant chaque optimisation d'infrastructure.

## 5. Audit des Cron Jobs

- Fichier principal : `optimizations/performance-prompt-master.md`
- Objectif : analyser toutes les tâches planifiées, workers et traitements asynchrones pour éviter les traitements gourmands ou répétés.
- Utilisation : lancer chaque fois qu'une nouvelle tâche planifiée est ajoutée ou modifiée.

## 6. Audit Memory Leaks Node.js

- Fichier principal : `optimizations/performance-prompt-master.md`
- Objectif : détecter les fuites mémoire liées aux objets conservés, timers, listeners, buffers, promises et connexions DB.
- Utilisation : utile après tout changement backend ou lorsqu'une hausse d'utilisation RAM est observée.

## 7. Audit de Cache

- Fichier principal : `optimizations/performance-prompt-master.md`
- Objectif : identifier les opportunités de mise en cache, revalidation, memoization et Redis.
- Utilisation : lancer avant de déployer une nouvelle fonctionnalité à fort trafic.

## 8. Prompt Ultime

- Fichier principal : `optimizations/performance-prompt-master.md`
- Objectif : réaliser un audit multi-disciplinaire complet afin de permettre à l'application de supporter 10 000 utilisateurs actifs sur un VPS 2 vCPU / 8 Go RAM.
- Utilisation : exécuter pour obtenir un plan de performance stratégique et une roadmap 90 jours.

## 9. Métriques recommandées

- Application : Response Time, P95, P99, Error Rate, Request/s, Concurrent Users
- PostgreSQL : Active Connections, Slow Queries, Locks, Cache Hit Ratio, Query Duration, Transactions/s
- Docker : CPU %, RAM %, IOPS, Restart Count
- VPS : CPU Load, Memory Usage, Disk Usage, Swap, Network, Open Files

## 10. Comment utiliser ces prompts

1. Ouvrir `optimizations/performance-prompt-master.md`.
2. Copier le prompt pertinent.
3. Lancer l'audit dans l'outil ou le modèle choisi.
4. Documenter les résultats dans `audits/`, `profiling/`, `load-tests/` ou `monitoring/`.
