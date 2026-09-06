import 'package:pulumi/pulumi.dart' as pulumi;

/// Encryption key type to be used for the encryption service. 'Account' key type implies that an account-scoped encryption key will be used. 'Service' key type implies that a default service key is used.
enum KeyType implements pulumi.PulumiEnum<String> {
  valueService("Service"),
  valueAccount("Account");

  const KeyType(this.wireValue);
  @override
  final String wireValue;

  static KeyType fromValue(String value) {
    for (final item in KeyType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown KeyType value: $value');
  }
}
