import 'package:pulumi/pulumi.dart' as pulumi;

/// Recommendation status. When the recommendation status is disabled recommendations are not generated.
enum RecommendationConfigStatus implements pulumi.PulumiEnum<String> {
  disabled("Disabled"),
  enabled("Enabled");

  const RecommendationConfigStatus(this.wireValue);
  @override
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
