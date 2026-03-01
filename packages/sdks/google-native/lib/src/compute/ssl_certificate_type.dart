/// (Optional) Specifies the type of SSL certificate, either "SELF_MANAGED" or "MANAGED". If not specified, the certificate is self-managed and the fields certificate and private_key are used.
enum SslCertificateType {
  managed("MANAGED"),
  selfManaged("SELF_MANAGED"),
  typeUnspecified("TYPE_UNSPECIFIED");

  const SslCertificateType(this.value);
  final String value;

  static SslCertificateType fromValue(String value) {
    for (final item in SslCertificateType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SslCertificateType value: $value');
  }
}

