/// The load distribution policy for this rule.
enum LoadDistribution {
  valueDefault("Default"),
  valueSourceIP("SourceIP"),
  valueSourceIPProtocol("SourceIPProtocol");

  const LoadDistribution(this.wireValue);
  final String wireValue;

  static LoadDistribution fromValue(String value) {
    for (final item in LoadDistribution.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LoadDistribution value: $value');
  }
}

