import 'package:pulumi/pulumi.dart' as pulumi;

enum CertificateType implements pulumi.PulumiEnum<String> {
  letsEncrypt("lets_encrypt"),
  custom("custom");

  const CertificateType(this.wireValue);
  @override
  final String wireValue;

  static CertificateType fromValue(String value) {
    for (final item in CertificateType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CertificateType value: $value');
  }
}
