/// (Optional) Specifies the type of SSL certificate, either "SELF_MANAGED" or "MANAGED". If not specified, the certificate is self-managed and the fields certificate and private_key are used.
enum SslCertificateTypeComputeBeta {
  managed("MANAGED"),
  selfManaged("SELF_MANAGED"),
  typeUnspecified("TYPE_UNSPECIFIED");

  const SslCertificateTypeComputeBeta(this.wireValue);
  final String wireValue;

  static SslCertificateTypeComputeBeta fromValue(String value) {
    for (final item in SslCertificateTypeComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SslCertificateTypeComputeBeta value: $value');
  }
}

