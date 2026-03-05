/// Defined in CVSS v3, CVSS v2
enum CVSSAvailabilityImpactContaineranalysisV1alpha1 {
  impactUnspecified("IMPACT_UNSPECIFIED"),
  impactHigh("IMPACT_HIGH"),
  impactLow("IMPACT_LOW"),
  impactNone("IMPACT_NONE"),
  impactPartial("IMPACT_PARTIAL"),
  impactComplete("IMPACT_COMPLETE");

  const CVSSAvailabilityImpactContaineranalysisV1alpha1(this.wireValue);
  final String wireValue;

  static CVSSAvailabilityImpactContaineranalysisV1alpha1 fromValue(String value) {
    for (final item in CVSSAvailabilityImpactContaineranalysisV1alpha1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CVSSAvailabilityImpactContaineranalysisV1alpha1 value: $value');
  }
}

