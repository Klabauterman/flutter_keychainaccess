# flutter_keychainaccess

Flutter Plugin integrates this iOS library https://github.com/kishikawakatsumi/KeychainAccess to use the secure keychain as key-value storage.
Data is getting synced to iCloud.

## Getting Started

```dart
await FlutterKeychainaccess.write(key: "accessToken", value: "1234567890");
var accessToken = await FlutterKeychainaccess.read(key: "accessToken");
```


