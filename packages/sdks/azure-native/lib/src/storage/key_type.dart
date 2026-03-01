/// Encryption key type to be used for the encryption service. 'Account' key type implies that an account-scoped encryption key will be used. 'Service' key type implies that a default service key is used.
enum KeyType {
  valueService("Service"),
  valueAccount("Account");

  const KeyType(this.value);
  final String value;

  static KeyType fromValue(String value) {
    for (final item in KeyType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown KeyType value: $value');
  }
}

