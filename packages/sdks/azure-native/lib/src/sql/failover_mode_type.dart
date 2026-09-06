import 'package:pulumi/pulumi.dart' as pulumi;

/// The link failover mode - can be Manual if intended to be used for two-way failover with a supported SQL Server, or None for one-way failover to Azure.
enum FailoverModeType implements pulumi.PulumiEnum<String> {
  valueNone("None"),
  valueManual("Manual");

  const FailoverModeType(this.wireValue);
  @override
  final String wireValue;

  static FailoverModeType fromValue(String value) {
    for (final item in FailoverModeType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FailoverModeType value: $value');
  }
}
