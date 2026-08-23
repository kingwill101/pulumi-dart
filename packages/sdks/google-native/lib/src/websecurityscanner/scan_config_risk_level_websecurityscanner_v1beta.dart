/// The risk level selected for the scan
enum ScanConfigRiskLevelWebsecurityscannerV1beta {
  riskLevelUnspecified("RISK_LEVEL_UNSPECIFIED"),
  normal("NORMAL"),
  low("LOW");

  const ScanConfigRiskLevelWebsecurityscannerV1beta(this.wireValue);
  final String wireValue;

  static ScanConfigRiskLevelWebsecurityscannerV1beta fromValue(String value) {
    for (final item in ScanConfigRiskLevelWebsecurityscannerV1beta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ScanConfigRiskLevelWebsecurityscannerV1beta value: $value');
  }
}
