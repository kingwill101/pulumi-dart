import 'package:pulumi/pulumi.dart' as pulumi;

/// The risk level selected for the scan
enum ScanConfigRiskLevel implements pulumi.PulumiEnum<String> {
  riskLevelUnspecified("RISK_LEVEL_UNSPECIFIED"),
  normal("NORMAL"),
  low("LOW");

  const ScanConfigRiskLevel(this.wireValue);
  @override
  final String wireValue;

  static ScanConfigRiskLevel fromValue(String value) {
    for (final item in ScanConfigRiskLevel.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ScanConfigRiskLevel value: $value');
  }
}
