# codesign-xcframework

This repo show how to codesign an XCFramework on github actions.

## How to set self-signed certificate
1. Create a self-signed certificate in Keychain Access. See https://developer.apple.com/library/archive/documentation/Security/Conceptual/CodeSigningGuide/Procedures/Procedures.html#//apple_ref/doc/uid/TP40005929-CH4-SW1
2. Export the certificate as a .p12 file from Keychain Access. Ensure that you are focused on the "Certificates" tab to save it as a .p12 file.
3. Set up the certificate in GitHub Actions. See https://docs.github.com/ja/actions/deployment/deploying-xcode-applications/installing-an-apple-certificate-on-macos-runners-for-xcode-development