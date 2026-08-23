/// Function app site update strategy type. Available options: Recreate, RollingUpdate
enum SiteUpdateStrategyType {
  recreate("Recreate"),
  rollingUpdate("RollingUpdate");

  const SiteUpdateStrategyType(this.wireValue);
  final String wireValue;

  static SiteUpdateStrategyType fromValue(String value) {
    for (final item in SiteUpdateStrategyType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SiteUpdateStrategyType value: $value');
  }
}
