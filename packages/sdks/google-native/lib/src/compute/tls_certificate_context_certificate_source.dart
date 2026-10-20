import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines how TLS certificates are obtained.
enum TlsCertificateContextCertificateSource implements pulumi.PulumiEnum<String> {
  invalid("INVALID"),
  usePath("USE_PATH"),
  useSds("USE_SDS");

  const TlsCertificateContextCertificateSource(this.wireValue);
  @override
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
