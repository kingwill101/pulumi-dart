/// The mode of operation for runtime protection.
enum ClusterUpdateStrategyType {
  valueRack("Rack"),
  valuePauseAfterRack("PauseAfterRack");

  const ClusterUpdateStrategyType(this.wireValue);
  final String wireValue;

  static ClusterUpdateStrategyType fromValue(String value) {
    for (final item in ClusterUpdateStrategyType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ClusterUpdateStrategyType value: $value');
  }
}

