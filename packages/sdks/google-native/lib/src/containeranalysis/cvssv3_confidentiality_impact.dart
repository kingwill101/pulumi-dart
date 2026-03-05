enum CVSSv3ConfidentialityImpact {
  impactUnspecified("IMPACT_UNSPECIFIED"),
  impactHigh("IMPACT_HIGH"),
  impactLow("IMPACT_LOW"),
  impactNone("IMPACT_NONE");

  const CVSSv3ConfidentialityImpact(this.wireValue);
  final String wireValue;

  static CVSSv3ConfidentialityImpact fromValue(String value) {
    for (final item in CVSSv3ConfidentialityImpact.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CVSSv3ConfidentialityImpact value: $value');
  }
}

