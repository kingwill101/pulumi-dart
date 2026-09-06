import 'package:pulumi/pulumi.dart' as pulumi;

/// The cloud that the recommendation is supported on.
enum RecommendationSupportedClouds implements pulumi.PulumiEnum<String> {
  azure("Azure"),
  aWS("AWS"),
  gCP("GCP");

  const RecommendationSupportedClouds(this.wireValue);
  @override
  final String wireValue;

  static RecommendationSupportedClouds fromValue(String value) {
    for (final item in RecommendationSupportedClouds.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RecommendationSupportedClouds value: $value');
  }
}
