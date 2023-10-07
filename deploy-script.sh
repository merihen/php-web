#!/bin/bash

# Define your deployment directory on the server
DEPLOY_DIR="/home/master/applications/mgtwwtytpk/public_html"

# Navigate to the deployment directory
cd $DEPLOY_DIR

# Pull the latest changes from your GitHub repository
git pull origin-ssh test 

# Optional: Update WordPress database (replace with your actual command)
wp db update

echo "Deployment completed."
