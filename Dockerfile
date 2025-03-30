FROM n8nio/n8n:latest

# Switch to root user to install global npm packages
USER root

# Attempt to fix mcp uninstalled after redeployment
RUN npm install n8n-nodes-mcp

# Revert to the node user for security purposes
USER node
