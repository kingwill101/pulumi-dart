import 'package:pulumi/pulumi.dart' as pulumi;

/// The provider for the encryption scope. Possible values (case-insensitive):  Microsoft.Storage, Microsoft.KeyVault.
enum EncryptionScopeSource implements pulumi.PulumiEnum<String> {
  valueMicrosoftStorage("Microsoft.Storage"),
  valueMicrosoftKeyVault("Microsoft.KeyVault");

  const EncryptionScopeSource(this.wireValue);
  @override
  final String wireValue;

  static EncryptionScopeSource fromValue(String value) {
    for (final item in EncryptionScopeSource.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EncryptionScopeSource value: $value');
  }
}
