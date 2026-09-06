import 'package:pulumi/pulumi.dart' as pulumi;

/// Enumerates the possible value of keySource for Encryption
enum KeySource implements pulumi.PulumiEnum<String> {
  valueMicrosoftKeyVault("Microsoft.KeyVault");

  const KeySource(this.wireValue);
  @override
  final String wireValue;

  static KeySource fromValue(String value) {
    for (final item in KeySource.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown KeySource value: $value');
  }
}
