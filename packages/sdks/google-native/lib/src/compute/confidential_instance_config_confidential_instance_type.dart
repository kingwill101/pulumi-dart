import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines the type of technology used by the confidential instance.
enum ConfidentialInstanceConfigConfidentialInstanceType implements pulumi.PulumiEnum<String> {
  confidentialInstanceTypeUnspecified("CONFIDENTIAL_INSTANCE_TYPE_UNSPECIFIED"),
  sev("SEV"),
  sevSnp("SEV_SNP"),
  tdx("TDX");

  const ConfidentialInstanceConfigConfidentialInstanceType(this.wireValue);
  @override
  final String wireValue;

  static ConfidentialInstanceConfigConfidentialInstanceType fromValue(String value) {
    for (final item in ConfidentialInstanceConfigConfidentialInstanceType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConfidentialInstanceConfigConfidentialInstanceType value: $value');
  }
}
