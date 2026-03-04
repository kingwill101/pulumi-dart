/// The provider for the encryption scope. Possible values (case-insensitive):  Microsoft.Storage, Microsoft.KeyVault.
enum EncryptionScopeSource {
  valueMicrosoftStorage("Microsoft.Storage"),
  valueMicrosoftKeyVault("Microsoft.KeyVault");

  const EncryptionScopeSource(this.wireValue);
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
