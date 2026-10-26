import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines the type of technology used by the confidential instance.
enum ConfidentialInstanceConfigConfidentialInstanceTypeComputeBeta implements pulumi.PulumiEnum<String> {
  confidentialInstanceTypeUnspecified("CONFIDENTIAL_INSTANCE_TYPE_UNSPECIFIED"),
  sev("SEV"),
  sevSnp("SEV_SNP");

  const ConfidentialInstanceConfigConfidentialInstanceTypeComputeBeta(this.wireValue);
  @override
  final String wireValue;

  static ConfidentialInstanceConfigConfidentialInstanceTypeComputeBeta fromValue(String value) {
    for (final item in ConfidentialInstanceConfigConfidentialInstanceTypeComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConfidentialInstanceConfigConfidentialInstanceTypeComputeBeta value: $value');
  }
}
