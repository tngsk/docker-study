#!/bin/bash
echo "labjs-setup started."
git clone https://github.com/FelixHenninger/lab.js.git
cd lab.js
yarn && yarn run bootstrap
cd packages/library && yarn
yarn run build:js && yarn run build:starterkit
cd ../builder && yarn start
