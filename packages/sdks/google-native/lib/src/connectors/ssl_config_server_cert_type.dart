import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of Server Cert (PEM/JKS/.. etc.)
enum SslConfigServerCertType implements pulumi.PulumiEnum<String> {
  certTypeUnspecified("CERT_TYPE_UNSPECIFIED"),
  pem("PEM");

  const SslConfigServerCertType(this.wireValue);
  @override
  final String wireValue;

  static SslConfigServerCertType fromValue(String value) {
    for (final item in SslConfigServerCertType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SslConfigServerCertType value: $value');
  }
}
