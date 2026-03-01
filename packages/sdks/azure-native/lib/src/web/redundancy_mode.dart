/// Site redundancy mode
enum RedundancyMode {
  valueNone("None"),
  valueManual("Manual"),
  valueFailover("Failover"),
  valueActiveActive("ActiveActive"),
  valueGeoRedundant("GeoRedundant");

  const RedundancyMode(this.value);
  final String value;

  static RedundancyMode fromValue(String value) {
    for (final item in RedundancyMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RedundancyMode value: $value');
  }
}

