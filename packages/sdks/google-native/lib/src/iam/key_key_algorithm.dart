/// Which type of key and algorithm to use for the key. The default is currently a 2K RSA key. However this may change in the future.
enum KeyKeyAlgorithm {
  keyAlgUnspecified("KEY_ALG_UNSPECIFIED"),
  keyAlgRsa1024("KEY_ALG_RSA_1024"),
  keyAlgRsa2048("KEY_ALG_RSA_2048");

  const KeyKeyAlgorithm(this.value);
  final String value;

  static KeyKeyAlgorithm fromValue(String value) {
    for (final item in KeyKeyAlgorithm.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown KeyKeyAlgorithm value: $value');
  }
}

