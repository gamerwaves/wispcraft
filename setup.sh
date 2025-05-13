#!/bin/sh

npm i
npm run build

cd dist
wget https://bafybeidtmtattvhd2y45dbafncqmu52bxjr3kwyrftky552bpnomy2vzpu.ipfs.dweb.link/?filename=EaglercraftX_1.8_WASM-GC_Offline_Download.zip
unzip EaglercraftX_1.8_WASM-GC_Offline_Download.zip
rm EaglercraftX_1.8_WASM-GC_Offline_Download.zip
sed -i 's/<head>/<head>\<script src="index.js"><\/script>/' EaglercraftX_1.8_WASM-GC_Offline_Download.html
cp ../ci/_headers .
