import 'package:pulumi/pulumi.dart' as pulumi;

/// The required feature policy.
enum FeaturesPolicy implements pulumi.PulumiEnum<String> {
  any("Any"),
  all("All");

  const FeaturesPolicy(this.wireValue);
  @override
  final String wireValue;

  static FeaturesPolicy fromValue(String value) {
    for (final item in FeaturesPolicy.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FeaturesPolicy value: $value');
  }
}
