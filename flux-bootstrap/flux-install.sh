#!/bin/bash
# Install Flux CLI if not present
if ! command -v flux &> /dev/null; then
  curl -s https://fluxcd.io/install.sh | sudo bash
fi

# Set these before running!
 export GITHUB_TOKEN=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
 export GITHUB_USER=Hemanthbugata

flux bootstrap github \
  --owner=Hemanthbugata \
  --repository=deployment-task \
  --branch=main \
  --path=clusters/my-cluster \
  --personal