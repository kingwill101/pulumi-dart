import 'package:pulumi/pulumi.dart' as pulumi;

/// (Optional) Specifies the type of SSL certificate, either "SELF_MANAGED" or "MANAGED". If not specified, the certificate is self-managed and the fields certificate and private_key are used.
enum RegionSslCertificateTypeComputeV1 implements pulumi.PulumiEnum<String> {
  managed("MANAGED"),
  selfManaged("SELF_MANAGED"),
  typeUnspecified("TYPE_UNSPECIFIED");

  const RegionSslCertificateTypeComputeV1(this.wireValue);
  @override
  final String wireValue;

  static RegionSslCertificateTypeComputeV1 fromValue(String value) {
    for (final item in RegionSslCertificateTypeComputeV1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RegionSslCertificateTypeComputeV1 value: $value');
  }
}
