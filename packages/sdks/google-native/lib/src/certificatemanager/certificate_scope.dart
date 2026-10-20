import 'package:pulumi/pulumi.dart' as pulumi;

/// Immutable. The scope of the certificate.
enum CertificateScope implements pulumi.PulumiEnum<String> {
  default_("DEFAULT"),
  edgeCache("EDGE_CACHE"),
  allRegions("ALL_REGIONS");

  const CertificateScope(this.wireValue);
  @override
  final String wireValue;

  static CertificateScope fromValue(String value) {
    for (final item in CertificateScope.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CertificateScope value: $value');
  }
}
