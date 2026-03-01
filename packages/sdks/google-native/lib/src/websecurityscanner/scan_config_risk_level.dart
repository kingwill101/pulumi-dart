/// The risk level selected for the scan
enum ScanConfigRiskLevel {
  riskLevelUnspecified("RISK_LEVEL_UNSPECIFIED"),
  normal("NORMAL"),
  low("LOW");

  const ScanConfigRiskLevel(this.value);
  final String value;

  static ScanConfigRiskLevel fromValue(String value) {
    for (final item in ScanConfigRiskLevel.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ScanConfigRiskLevel value: $value');
  }
}

