/// Enumerates the possible value of keySource for Encryption
enum KeySource {
  valueMicrosoftKeyVault("Microsoft.KeyVault");

  const KeySource(this.wireValue);
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

