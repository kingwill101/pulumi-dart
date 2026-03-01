/// The format of the key.
enum PublicKeyCredentialFormat {
  unspecifiedPublicKeyFormat("UNSPECIFIED_PUBLIC_KEY_FORMAT"),
  rsaPem("RSA_PEM"),
  rsaX509Pem("RSA_X509_PEM"),
  es256Pem("ES256_PEM"),
  es256X509Pem("ES256_X509_PEM");

  const PublicKeyCredentialFormat(this.value);
  final String value;

  static PublicKeyCredentialFormat fromValue(String value) {
    for (final item in PublicKeyCredentialFormat.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PublicKeyCredentialFormat value: $value');
  }
}

