/// Required. The format of the public key.
enum PublicKeyFormat {
  keyFormatUnspecified("KEY_FORMAT_UNSPECIFIED"),
  pem("PEM");

  const PublicKeyFormat(this.wireValue);
  final String wireValue;

  static PublicKeyFormat fromValue(String value) {
    for (final item in PublicKeyFormat.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PublicKeyFormat value: $value');
  }
}

