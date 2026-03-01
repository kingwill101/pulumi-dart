/// Required. The specifications for the key.
enum KeyDataKeySpec {
  keySpecUnspecified("KEY_SPEC_UNSPECIFIED"),
  rsa2048("RSA_2048"),
  rsa3072("RSA_3072"),
  rsa4096("RSA_4096");

  const KeyDataKeySpec(this.value);
  final String value;

  static KeyDataKeySpec fromValue(String value) {
    for (final item in KeyDataKeySpec.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown KeyDataKeySpec value: $value');
  }
}

