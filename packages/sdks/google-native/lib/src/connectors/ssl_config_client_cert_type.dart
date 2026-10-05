import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of Client Cert (PEM/JKS/.. etc.)
enum SslConfigClientCertType implements pulumi.PulumiEnum<String> {
  certTypeUnspecified("CERT_TYPE_UNSPECIFIED"),
  pem("PEM");

  const SslConfigClientCertType(this.wireValue);
  @override
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
