/// The kind of the entity.
enum ThreatIntelligenceResourceInnerKind {
  valueIndicator("indicator");

  const ThreatIntelligenceResourceInnerKind(this.wireValue);
  final String wireValue;

  static ThreatIntelligenceResourceInnerKind fromValue(String value) {
    for (final item in ThreatIntelligenceResourceInnerKind.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown ThreatIntelligenceResourceInnerKind value: $value',
    );
  }
}
