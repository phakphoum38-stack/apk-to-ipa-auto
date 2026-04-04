#!/bin/bash
set -e

mkdir -p build

xcodebuild \
-scheme App \
-archivePath build/App.xcarchive \
archive

xcodebuild \
-exportArchive \
-archivePath build/App.xcarchive \
-exportOptionsPlist exportOptions.plist \
-exportPath build
