enum CVSSv3AttackComplexityContaineranalysisV1beta1 {
  attackComplexityUnspecified("ATTACK_COMPLEXITY_UNSPECIFIED"),
  attackComplexityLow("ATTACK_COMPLEXITY_LOW"),
  attackComplexityHigh("ATTACK_COMPLEXITY_HIGH");

  const CVSSv3AttackComplexityContaineranalysisV1beta1(this.wireValue);
  final String wireValue;

  static CVSSv3AttackComplexityContaineranalysisV1beta1 fromValue(
    String value,
  ) {
    for (final item in CVSSv3AttackComplexityContaineranalysisV1beta1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown CVSSv3AttackComplexityContaineranalysisV1beta1 value: $value',
    );
  }
}
