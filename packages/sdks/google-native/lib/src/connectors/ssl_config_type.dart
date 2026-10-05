import 'package:pulumi/pulumi.dart' as pulumi;

/// Controls the ssl type for the given connector version.
enum SslConfigType implements pulumi.PulumiEnum<String> {
  sslTypeUnspecified("SSL_TYPE_UNSPECIFIED"),
  tls("TLS"),
  mtls("MTLS");

  const SslConfigType(this.wireValue);
  @override
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
