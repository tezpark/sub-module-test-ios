#!/bin/bash

# 프로젝트 설정
FRAMEWORK_NAME="SendbirdAIAgent"
BUILD_DIR="build"
ARCHIVE_DIR="${BUILD_DIR}/archives"
XCFRAMEWORK_DIR="${BUILD_DIR}/${FRAMEWORK_NAME}.xcframework"

# 기존 빌드 파일 삭제
rm -rf "${BUILD_DIR}"
mkdir -p "${ARCHIVE_DIR}"

# 시뮬레이터용(arm64, x86_64) 빌드
xcodebuild archive \
  -scheme ${FRAMEWORK_NAME} \
  -destination "generic/platform=iOS Simulator" \
  -archivePath "${ARCHIVE_DIR}/${FRAMEWORK_NAME}-simulator.xcarchive" \
  -sdk iphonesimulator \
  SKIP_INSTALL=NO \
  BUILD_LIBRARY_FOR_DISTRIBUTION=YES

# 디바이스용(arm64) 빌드
xcodebuild archive \
  -scheme ${FRAMEWORK_NAME} \
  -destination "generic/platform=iOS" \
  -archivePath "${ARCHIVE_DIR}/${FRAMEWORK_NAME}-ios.xcarchive" \
  -sdk iphoneos \
  SKIP_INSTALL=NO \
  BUILD_LIBRARY_FOR_DISTRIBUTION=YES

# XCFramework 생성
xcodebuild -create-xcframework \
  -framework "${ARCHIVE_DIR}/${FRAMEWORK_NAME}-ios.xcarchive/Products/Library/Frameworks/${FRAMEWORK_NAME}.framework" \
  -framework "${ARCHIVE_DIR}/${FRAMEWORK_NAME}-simulator.xcarchive/Products/Library/Frameworks/${FRAMEWORK_NAME}.framework" \
  -output "${XCFRAMEWORK_DIR}"

echo "✅ XCFramework 생성 완료: ${XCFRAMEWORK_DIR}"

zip -r ./build/SendbirdAIAgent.xcframework.zip ./build/SendbirdAIAgent.xcframework

echo "✅ XCFramework.zip 생성 완료"

swift package compute-checksum build/SendbirdAIAgent.xcframework.zip
