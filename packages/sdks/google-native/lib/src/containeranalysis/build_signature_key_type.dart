/// The type of the key, either stored in `public_key` or referenced in `key_id`
enum BuildSignatureKeyType {
  keyTypeUnspecified("KEY_TYPE_UNSPECIFIED"),
  pgpAsciiArmored("PGP_ASCII_ARMORED"),
  pkixPem("PKIX_PEM");

  const BuildSignatureKeyType(this.wireValue);
  final String wireValue;

  static BuildSignatureKeyType fromValue(String value) {
    for (final item in BuildSignatureKeyType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BuildSignatureKeyType value: $value');
  }
}

