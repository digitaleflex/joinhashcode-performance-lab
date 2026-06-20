#!/usr/bin/env bash

# Script de base pour lancer un test de charge.
# Adapter le contenu à l'outil de load testing utilisé (k6, artillery, locust, etc.).

set -e

SCENARIO=${1:-default}
USERS=${2:-100}
DURATION=${3:-60}

echo "Lancement du test de charge :"
echo "Scenario: ${SCENARIO}"
echo "Utilisateurs: ${USERS}"
echo "Durée: ${DURATION}s"

echo "---"
# Exemple : remplacer par la commande réelle de l'outil
# k6 run --vus ${USERS} --duration ${DURATION}s scenarios/${SCENARIO}.js

echo "Test de charge simulé. Ajouter la commande de votre outil ici."
