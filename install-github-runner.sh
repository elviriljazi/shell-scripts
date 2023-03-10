#!/bin/sh
# Create a folder
mkdir actions-runner && cd actions-runner
# Download the latest runner package
curl -o actions-runner-linux-arm64-2.299.1.tar.gz -L https://github.com/actions/runner/releases/download/v2.299.1/actions-runner-linux-arm64-2.299.1.tar.gz
# Optional: Validate the hash
echo "debe1cc9656963000a4fbdbb004f475ace5b84360ace2f7a191c1ccca6a16c00  actions-runner-linux-arm64-2.299.1.tar.gz" | shasum -a 256 -c
# Extract the installer
tar xzf ./actions-runner-linux-arm64-2.299.1.tar.gz

# Create the runner and start the configuration experience
./config.sh 
# Last step, run it!
./run.sh