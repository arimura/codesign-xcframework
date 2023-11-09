build/MyDemo.xcframework:
	xcodebuild -project MyDemo/MyDemo.xcodeproj -scheme MyDemo \
	  -configuration Release -sdk iphoneos \
	  BUILD_LIBRARY_FOR_DISTRIBUTION=YES SKIP_INSTALL=NO \
	  ARCHS="arm64" \
	  -derivedDataPath ./build
	xcodebuild -project MyDemo/MyDemo.xcodeproj -scheme MyDemo \
	  -configuration Release -sdk iphonesimulator \
	  BUILD_LIBRARY_FOR_DISTRIBUTION=YES \
	  SKIP_INSTALL=NO \
	  ARCHS="x86_64 arm64" \
	  -derivedDataPath ./build
	xcodebuild -create-xcframework \
	  -framework ./build/Build/Products/Release-iphoneos/MyDemo.framework \
	  -framework ./build/Build/Products/Release-iphonesimulator/MyDemo.framework \
	  -output MyDemo.xcframework

codesign:
	codesign --sign "MyDemo" --force --timestamp=none MyDemo.xcframework

clean:
	rm -rf build MyDemo.xcframework
	