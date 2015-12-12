#!/usr/bin/env bash

echo -n "Username: "
read USER

echo -n "Password: "
read -s PASS

echo -n "Repo (e.g., foo/bar): "
read REPO

REPO_USER=$(echo "$REPO" | cut -f1 -d /)
REPO_NAME=$(echo "$REPO" | cut -f2 -d /)

# Delete default labels
curl -u "$USER:$PASS" -i -X DELETE "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels/bug"
curl -u "$USER:$PASS" -i -X DELETE "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels/duplicate"
curl -u "$USER:$PASS" -i -X DELETE "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels/enhancement"
curl -u "$USER:$PASS" -i -X DELETE "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels/help%20wanted"
curl -u "$USER:$PASS" -i -X DELETE "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels/invalid"
curl -u "$USER:$PASS" -i -X DELETE "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels/question"
curl -u "$USER:$PASS" -i -X DELETE "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels/wontfix"

# Create labels
curl -u "$USER:$PASS" -i -X POST -d '{"name": "freq: low", "color": "bfe5bf"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"
curl -u "$USER:$PASS" -i -X POST -d '{"name": "freq: high", "color": "f7c6c7"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"
curl -u "$USER:$PASS" -i -X POST -d '{"name": "freq: mod", "color": "fef2c0"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"
curl -u "$USER:$PASS" -i -X POST -d '{"name": "resolution: can’t reproduce", "color": "bfdadc"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"
curl -u "$USER:$PASS" -i -X POST -d '{"name": "resolution: duplicate", "color": "bfdadc"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"
curl -u "$USER:$PASS" -i -X POST -d '{"name": "resolution: fixed", "color": "bfdadc"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"
curl -u "$USER:$PASS" -i -X POST -d '{"name": "resolution: invalid", "color": "bfdadc"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"
curl -u "$USER:$PASS" -i -X POST -d '{"name": "resolution: won’t fix", "color": "bfdadc"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"
curl -u "$USER:$PASS" -i -X POST -d '{"name": "resolution: works as expected", "color": "bfdadc"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"
curl -u "$USER:$PASS" -i -X POST -d '{"name": "severity: blocker", "color": "f7c6c7"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"
curl -u "$USER:$PASS" -i -X POST -d '{"name": "severity: critical", "color": "fad8c7"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"
curl -u "$USER:$PASS" -i -X POST -d '{"name": "severity: minor", "color": "fef2c0"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"
curl -u "$USER:$PASS" -i -X POST -d '{"name": "severity: trivial", "color": "bfe5bf"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"
curl -u "$USER:$PASS" -i -X POST -d '{"name": "type: bug", "color": "000000"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"
curl -u "$USER:$PASS" -i -X POST -d '{"name": "type: chore", "color": "e6e29f"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"
curl -u "$USER:$PASS" -i -X POST -d '{"name": "type: docs", "color": "9fe6ad"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"
curl -u "$USER:$PASS" -i -X POST -d '{"name": "type: feat", "color": "248cab"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"
curl -u "$USER:$PASS" -i -X POST -d '{"name": "type: perf", "color": "fbca04"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"
curl -u "$USER:$PASS" -i -X POST -d '{"name": "type: refactor", "color": "5ce675"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"
curl -u "$USER:$PASS" -i -X POST -d '{"name": "type: test", "color": "eb6420"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"
curl -u "$USER:$PASS" -i -X POST -d '{"name": "~discussion", "color": "ededed"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"
curl -u "$USER:$PASS" -i -X POST -d '{"name": "~help wanted", "color": "ededed"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"
curl -u "$USER:$PASS" -i -X POST -d '{"name": "~in progress", "color": "ededed"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"
curl -u "$USER:$PASS" -i -X POST -d '{"name": "~question", "color": "ededed"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"
curl -u "$USER:$PASS" -i -X POST -d '{"name": "~ready", "color": "ededed"}' "https://api.github.com/repos/$REPO_USER/$REPO_NAME/labels"
