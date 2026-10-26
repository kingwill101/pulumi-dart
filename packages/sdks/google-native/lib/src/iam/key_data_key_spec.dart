import 'package:pulumi/pulumi.dart' as pulumi;

/// Required. The specifications for the key.
enum KeyDataKeySpec implements pulumi.PulumiEnum<String> {
  keySpecUnspecified("KEY_SPEC_UNSPECIFIED"),
  rsa2048("RSA_2048"),
  rsa3072("RSA_3072"),
  rsa4096("RSA_4096");

  const KeyDataKeySpec(this.wireValue);
  @override
  final String wireValue;

  static KeyDataKeySpec fromValue(String value) {
    for (final item in KeyDataKeySpec.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown KeyDataKeySpec value: $value');
  }
}
