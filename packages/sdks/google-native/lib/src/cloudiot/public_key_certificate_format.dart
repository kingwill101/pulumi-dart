/// The certificate format.
enum PublicKeyCertificateFormat {
  unspecifiedPublicKeyCertificateFormat(
    "UNSPECIFIED_PUBLIC_KEY_CERTIFICATE_FORMAT",
  ),
  x509CertificatePem("X509_CERTIFICATE_PEM");

  const PublicKeyCertificateFormat(this.wireValue);
  final String wireValue;

  static PublicKeyCertificateFormat fromValue(String value) {
    for (final item in PublicKeyCertificateFormat.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PublicKeyCertificateFormat value: $value');
  }
}
