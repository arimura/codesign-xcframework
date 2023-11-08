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
	
	