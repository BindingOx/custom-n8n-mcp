FROM n8nio/n8n:latest

# Switch to root user to install global npm packages
USER root

# Install the desired npm packages globally
# RUN npm install -g firecrawl-mcp
# RUN npm install -g @modelcontextprotocol/server-brave-search
# RUN npm install -g @adenot/mcp-google-search
# RUN npm install @smithery/sdk @modelcontextprotocol/sdk
RUN set N8N_ENABLE_COMMUNITY_NODES=true
RUN set N8N_COMMUNITY_PACKAGES_ALLOW_TOOL_USAGE=true

# Revert to the node user for security purposes
USER node
