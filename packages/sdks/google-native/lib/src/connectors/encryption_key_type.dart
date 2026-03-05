/// Type.
enum EncryptionKeyType {
  typeUnspecified("TYPE_UNSPECIFIED"),
  googleManaged("GOOGLE_MANAGED"),
  customerManaged("CUSTOMER_MANAGED");

  const EncryptionKeyType(this.wireValue);
  final String wireValue;

  static EncryptionKeyType fromValue(String value) {
    for (final item in EncryptionKeyType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EncryptionKeyType value: $value');
  }
}

