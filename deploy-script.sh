#!/bin/bash

# Define your deployment directory on the server
DEPLOY_DIR="/home/master/applications/mgtwwtytpk/public_html"

# Navigate to the deployment directory
cd $DEPLOY_DIR

# Pull the latest changes from your GitHub repository
git pull origin-ssh test

# Check if there are uncommitted changes
if git diff-index --quiet HEAD --; then
    # No uncommitted changes, proceed with deployment
    echo "No local changes to commit."
else
    # Stash and pop the local changes
    git stash
    git stash pop
fi

# Update WordPress database (use 'wp db update' if applicable)
wp core update-db

echo "Deployment completed."
