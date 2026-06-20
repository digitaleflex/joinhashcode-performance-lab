# Profiling

Objectif
--------
Identifier les goulots d'étranglement du code.

Structure
---------
- `nextjs-profiling.md`
- `prisma-profiling.md`
- `nodejs-profiling.md`
- `postgres-profiling.md`
- `reports/`

Utilisation
-----------
1. Capturer un profil avant optimisation.
2. Identifier les hotspots.
3. Documenter les résultats dans `reports/`.

Prompt Master
-------------
Tu es un Performance Profiler spécialisé :

- Node.js
- Next.js
- Prisma
- PostgreSQL

Mission :

Identifier :

- fonctions lentes
- requêtes coûteuses
- opérations CPU intensives
- opérations I/O bloquantes
- Memory Leaks
- Re-renders
- Hydration excessive
- N+1 Queries

Pour chaque problème :

- Localisation
- Cause
- Temps perdu
- Ressources consommées
- Solution
- Gain estimé

Produire :

Top 20 des goulots d'étranglement.
