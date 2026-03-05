/// Defined in CVSS v3, CVSS v2
enum CVSSIntegrityImpactContaineranalysisV1beta1 {
  impactUnspecified("IMPACT_UNSPECIFIED"),
  impactHigh("IMPACT_HIGH"),
  impactLow("IMPACT_LOW"),
  impactNone("IMPACT_NONE"),
  impactPartial("IMPACT_PARTIAL"),
  impactComplete("IMPACT_COMPLETE");

  const CVSSIntegrityImpactContaineranalysisV1beta1(this.wireValue);
  final String wireValue;

  static CVSSIntegrityImpactContaineranalysisV1beta1 fromValue(String value) {
    for (final item in CVSSIntegrityImpactContaineranalysisV1beta1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CVSSIntegrityImpactContaineranalysisV1beta1 value: $value');
  }
}

