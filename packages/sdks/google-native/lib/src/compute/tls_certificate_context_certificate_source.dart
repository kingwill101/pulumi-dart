/// Defines how TLS certificates are obtained.
enum TlsCertificateContextCertificateSource {
  invalid("INVALID"),
  usePath("USE_PATH"),
  useSds("USE_SDS");

  const TlsCertificateContextCertificateSource(this.wireValue);
  final String wireValue;

  static TlsCertificateContextCertificateSource fromValue(String value) {
    for (final item in TlsCertificateContextCertificateSource.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TlsCertificateContextCertificateSource value: $value');
  }
}
