/// Controls the ssl type for the given connector version.
enum SslConfigType {
  sslTypeUnspecified("SSL_TYPE_UNSPECIFIED"),
  tls("TLS"),
  mtls("MTLS");

  const SslConfigType(this.wireValue);
  final String wireValue;

  static SslConfigType fromValue(String value) {
    for (final item in SslConfigType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SslConfigType value: $value');
  }
}

