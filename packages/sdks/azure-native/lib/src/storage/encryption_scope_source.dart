/// The provider for the encryption scope. Possible values (case-insensitive):  Microsoft.Storage, Microsoft.KeyVault.
enum EncryptionScopeSource {
  valueMicrosoftStorage("Microsoft.Storage"),
  valueMicrosoftKeyVault("Microsoft.KeyVault");

  const EncryptionScopeSource(this.value);
  final String value;

  static EncryptionScopeSource fromValue(String value) {
    for (final item in EncryptionScopeSource.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EncryptionScopeSource value: $value');
  }
}

