/// The load distribution policy for this rule.
enum LoadDistribution {
  valueDefault("Default"),
  valueSourceIP("SourceIP"),
  valueSourceIPProtocol("SourceIPProtocol");

  const LoadDistribution(this.value);
  final String value;

  static LoadDistribution fromValue(String value) {
    for (final item in LoadDistribution.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LoadDistribution value: $value');
  }
}

