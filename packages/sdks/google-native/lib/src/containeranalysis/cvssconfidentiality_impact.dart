enum CVSSConfidentialityImpact {
  impactUnspecified("IMPACT_UNSPECIFIED"),
  impactHigh("IMPACT_HIGH"),
  impactLow("IMPACT_LOW"),
  impactNone("IMPACT_NONE"),
  impactPartial("IMPACT_PARTIAL"),
  impactComplete("IMPACT_COMPLETE");

  const CVSSConfidentialityImpact(this.value);
  final String value;

  static CVSSConfidentialityImpact fromValue(String value) {
    for (final item in CVSSConfidentialityImpact.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CVSSConfidentialityImpact value: $value');
  }
}

