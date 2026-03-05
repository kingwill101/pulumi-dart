enum CVSSv3IntegrityImpactContaineranalysisV1beta1 {
  impactUnspecified("IMPACT_UNSPECIFIED"),
  impactHigh("IMPACT_HIGH"),
  impactLow("IMPACT_LOW"),
  impactNone("IMPACT_NONE");

  const CVSSv3IntegrityImpactContaineranalysisV1beta1(this.wireValue);
  final String wireValue;

  static CVSSv3IntegrityImpactContaineranalysisV1beta1 fromValue(String value) {
    for (final item in CVSSv3IntegrityImpactContaineranalysisV1beta1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CVSSv3IntegrityImpactContaineranalysisV1beta1 value: $value');
  }
}

