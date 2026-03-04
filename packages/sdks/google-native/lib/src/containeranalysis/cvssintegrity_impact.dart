enum CVSSIntegrityImpact {
  impactUnspecified("IMPACT_UNSPECIFIED"),
  impactHigh("IMPACT_HIGH"),
  impactLow("IMPACT_LOW"),
  impactNone("IMPACT_NONE"),
  impactPartial("IMPACT_PARTIAL"),
  impactComplete("IMPACT_COMPLETE");

  const CVSSIntegrityImpact(this.wireValue);
  final String wireValue;

  static CVSSIntegrityImpact fromValue(String value) {
    for (final item in CVSSIntegrityImpact.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CVSSIntegrityImpact value: $value');
  }
}
