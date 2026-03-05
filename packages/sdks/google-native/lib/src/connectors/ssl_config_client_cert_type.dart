/// Type of Client Cert (PEM/JKS/.. etc.)
enum SslConfigClientCertType {
  certTypeUnspecified("CERT_TYPE_UNSPECIFIED"),
  pem("PEM");

  const SslConfigClientCertType(this.wireValue);
  final String wireValue;

  static SslConfigClientCertType fromValue(String value) {
    for (final item in SslConfigClientCertType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SslConfigClientCertType value: $value');
  }
}

