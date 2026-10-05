import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of data policy.
enum DataPolicyDataPolicyType implements pulumi.PulumiEnum<String> {
  dataPolicyTypeUnspecified("DATA_POLICY_TYPE_UNSPECIFIED"),
  columnLevelSecurityPolicy("COLUMN_LEVEL_SECURITY_POLICY"),
  dataMaskingPolicy("DATA_MASKING_POLICY");

  const DataPolicyDataPolicyType(this.wireValue);
  @override
  final String wireValue;

  static DataPolicyDataPolicyType fromValue(String value) {
    for (final item in DataPolicyDataPolicyType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DataPolicyDataPolicyType value: $value');
  }
}
