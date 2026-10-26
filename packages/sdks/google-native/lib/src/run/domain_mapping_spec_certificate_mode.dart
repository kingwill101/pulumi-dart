import 'package:pulumi/pulumi.dart' as pulumi;

/// The mode of the certificate.
enum DomainMappingSpecCertificateMode implements pulumi.PulumiEnum<String> {
  certificateModeUnspecified("CERTIFICATE_MODE_UNSPECIFIED"),
  none("NONE"),
  automatic("AUTOMATIC");

  const DomainMappingSpecCertificateMode(this.wireValue);
  @override
  final String wireValue;

  static DomainMappingSpecCertificateMode fromValue(String value) {
    for (final item in DomainMappingSpecCertificateMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DomainMappingSpecCertificateMode value: $value');
  }
}
