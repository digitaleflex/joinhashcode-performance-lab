# Présentation de l'application HASHCODE

**HASHCODE** est une plateforme web moderne conçue pour le profilage de talents technologiques assisté par l'IA et le jumelage communautaire (Community Matching), ciblant spécifiquement les communautés tech africaines.

## 1. Vision du Produit & Parcours Utilisateur

HASHCODE propose une expérience gamifiée et structurée pour les développeurs, designers et professionnels de la tech. Le parcours utilisateur est orchestré par un middleware qui impose un entonnoir rigoureux en 3 étapes :

1. **Authentification** : Accès réservé aux utilisateurs connectés.
2. **Onboarding (Première étape)** : Collecte de la situation professionnelle actuelle, du pays et des objectifs de carrière principaux.
3. **Quiz Psychométrique** : Un quiz complet de personnalité et de compétences qui classe chaque talent dans l'un des 4 grands profils (classes) de la tech :
   - **Builder** (Bâtisseur - profil technique orienté développement et infrastructure)
   - **Creator** (Créateur - profil orienté design, frontend et UI/UX)
   - **Strategist** (Stratège - profil orienté gestion de produit, architecture et données)
   - **Catalyst** (Catalyseur - profil orienté innovation, relations de communauté et croissance)
4. **Intégration** : L'utilisateur rejoint la communauté correspondante (la *Guild*) et peut collaborer, intégrer une *Squad* (organisation/équipe) et accomplir des *Missions*.

## 2. Stack Technique de l'Application

L'application repose sur des technologies modernes, robustes et hautement optimisées :

- **Framework Web** : Next.js 15 App Router (Server Components par défaut, et `"use client"` pour les interactions dynamiques).
- **Gestion de Base de Données** : Prisma ORM (v7) connecté à une base PostgreSQL auto-hébergée dans des conteneurs Docker (VPS Hostinger).
- **Gestion de l'Authentification** : Better Auth avec adaptateur Prisma, utilisant des sessions basées sur les Cookies.
  - Fournisseurs d'identité supportés : Google, GitHub, et Magic Link (emails sécurisés via Resend).
- **Interface Utilisateur (UI)** :
  - Style de base : TailwindCSS v4
  - Composants : Radix UI + shadcn/ui
  - Animations : Framer Motion
  - Notifications : Sonner

## 3. Architecture Logicielle & Modules Clés

### A. Le Système de Squads (Gestion d'Équipes)

Les Squads reposent sur le modèle `Organization` de Better Auth (table `organization`).
- **Leader & Membres** : Le créateur de la Squad est désigné comme `LEADER` et peut configurer le nom et le slug d'invitation personnalisé (ex: `/invite/nom-squad`). Les autres sont `MEMBER`.
- **Mécanique de Cohésion (Cohesion Score)** : Un score de 0 à 1 représentant l'activité de l'équipe. Il augmente avec les check-ins quotidiens (`+0.05`) et les missions approuvées (`+0.10`), et décroît de `−0.02` par jour d'inactivité (via une tâche planifiée Cron).
- **Streaks & Badges** : Maintenir une cohésion supérieure à `0.9` débloque des streaks et des badges d'accomplissement à 3 et 7 jours.

### B. Le Système de Missions & Revues par les Pairs

- Les talents peuvent postuler à des **Missions** pratiques correspondant à leur profil pour gagner de l'Expérience (XP) et monter de niveau.
- **Peer-Review** : Les validations de soumissions de missions passent par une validation par les pairs. Un membre peut réserver (claim) une soumission pour l'évaluer. Si aucune activité n'est enregistrée après 48h, le cron automatique libère la réservation pour d'autres évaluateurs.

### C. Le Système de Logs d'Activité (ActivityLog)

- Un historique immuable (append-only) trace chaque événement clé (`ONBOARDING_COMPLETED`, `QUIZ_COMPLETED`, `SQUAD_JOINED`, `MISSION_APPROVED`, etc.).
- Ce système utilise des processus asynchrones "fire-and-forget" non bloquants (`logActivity`) pour garantir qu'aucune erreur de log ne vienne interrompre l'expérience utilisateur ou les transactions principales.

## 4. Sécurité & Hardening du VPS

L'infrastructure a fait l'objet d'un renforcement de sécurité avancé :

- **Pare-feu (iptables)** : Toutes les connexions entrantes sont rejetées par défaut, à l'exception des protocoles SSH (port 22), HTTP (port 80) et HTTPS (port 443).
- **Docker Network Isolation** : Blocage total via les règles iptables de Docker des ports internes (PostgreSQL 5434, Jaeger, OpenTelemetry).
- **Protection ICMP** : Les requêtes ping vers le serveur sont bloquées au niveau système (`net.ipv4.icmp_echo_ignore_all=1`).
- **Authentification SSH Durcie** : Désactivation complète des mots de passe au profit des clés privées, interdiction de connexion root directe, et désactivation de la redirection X11.
- **Fail2ban** : Bannissement automatique de 1h après 5 tentatives SSH échouées en moins de 10 minutes.
