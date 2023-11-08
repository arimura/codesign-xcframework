# codesign-xcframework

This repo show how to codesign an XCFramework on github actions.

## How to set self-signed certificate
1. Create self-signed cert on Keychain Access. See https://developer.apple.com/library/archive/documentation/Security/Conceptual/CodeSigningGuide/Procedures/Procedures.html#//apple_ref/doc/uid/TP40005929-CH4-SW1
2. Export cert as p12. You need to focus "Cert" on tab.
3. Set cert on github acrions. See https://docs.github.com/ja/actions/deployment/deploying-xcode-applications/installing-an-apple-certificate-on-macos-runners-for-xcode-development
