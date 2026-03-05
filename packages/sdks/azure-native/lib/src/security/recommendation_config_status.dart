/// Recommendation status. When the recommendation status is disabled recommendations are not generated.
enum RecommendationConfigStatus {
  valueDisabled("Disabled"),
  valueEnabled("Enabled");

  const RecommendationConfigStatus(this.wireValue);
  final String wireValue;

  static RecommendationConfigStatus fromValue(String value) {
    for (final item in RecommendationConfigStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RecommendationConfigStatus value: $value');
  }
}

