/// The way resources to remediate are discovered. Defaults to ExistingNonCompliant if not specified.
enum ResourceDiscoveryMode {
  valueExistingNonCompliant("ExistingNonCompliant"),
  valueReEvaluateCompliance("ReEvaluateCompliance");

  const ResourceDiscoveryMode(this.wireValue);
  final String wireValue;

  static ResourceDiscoveryMode fromValue(String value) {
    for (final item in ResourceDiscoveryMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ResourceDiscoveryMode value: $value');
  }
}
