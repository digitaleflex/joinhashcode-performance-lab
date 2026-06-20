# Load Tests

Objectif
--------
Connaître le point de rupture de JoinHashcode.

Structure
---------
- `scenarios/`
- `results/`
- `scripts/`
- `reports/`

Utilisation
-----------
1. Définir les scénarios critiques.
2. Lancer des tests de charge progressifs.
3. Capturer les résultats dans `results/`.
4. Produire un rapport dans `reports/`.

Prompt Master
-------------
Tu es un Site Reliability Engineer.

Construis un plan de tests de charge pour JoinHashcode.

Simuler :

100 utilisateurs
500 utilisateurs
1000 utilisateurs
5000 utilisateurs
10000 utilisateurs

Scénarios :

- connexion
- onboarding
- quiz
- dashboard
- missions
- squads
- notifications

Pour chaque niveau :

- CPU
- RAM
- Requests/sec
- DB Queries/sec
- Latence
- Error Rate

Identifier :

- premier point de rupture
- deuxième point de rupture
- troisième point de rupture

Produire :

- recommandations
- architecture cible
- plan de scaling
