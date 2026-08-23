/// Defined in CVSS v3, CVSS v2
enum CVSSAttackComplexityContaineranalysisV1beta1 {
  attackComplexityUnspecified("ATTACK_COMPLEXITY_UNSPECIFIED"),
  attackComplexityLow("ATTACK_COMPLEXITY_LOW"),
  attackComplexityHigh("ATTACK_COMPLEXITY_HIGH"),
  attackComplexityMedium("ATTACK_COMPLEXITY_MEDIUM");

  const CVSSAttackComplexityContaineranalysisV1beta1(this.wireValue);
  final String wireValue;

  static CVSSAttackComplexityContaineranalysisV1beta1 fromValue(String value) {
    for (final item in CVSSAttackComplexityContaineranalysisV1beta1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CVSSAttackComplexityContaineranalysisV1beta1 value: $value');
  }
}
