import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of the key, either stored in `public_key` or referenced in `key_id`
enum BuildSignatureKeyType implements pulumi.PulumiEnum<String> {
  keyTypeUnspecified("KEY_TYPE_UNSPECIFIED"),
  pgpAsciiArmored("PGP_ASCII_ARMORED"),
  pkixPem("PKIX_PEM");

  const BuildSignatureKeyType(this.wireValue);
  @override
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
