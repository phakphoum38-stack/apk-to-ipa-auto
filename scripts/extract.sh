#!/bin/bash
set -e

echo "Decoding APK..."

apktool d app.apk -o decoded -f

ICON=$(find decoded/res -name "*launcher*.png" | head -n 1)

mkdir -p ios/App/Assets.xcassets/AppIcon.appiconset

cp "$ICON" ios/App/Assets.xcassets/AppIcon.appiconset/icon.png

echo "Icon extracted"
