/// The required feature policy.
enum FeaturesPolicy {
  any("Any"),
  all("All");

  const FeaturesPolicy(this.wireValue);
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
