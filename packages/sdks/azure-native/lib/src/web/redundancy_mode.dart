/// Site redundancy mode
enum RedundancyMode {
  valueNone("None"),
  valueManual("Manual"),
  valueFailover("Failover"),
  valueActiveActive("ActiveActive"),
  valueGeoRedundant("GeoRedundant");

  const RedundancyMode(this.wireValue);
  final String wireValue;

  static RedundancyMode fromValue(String value) {
    for (final item in RedundancyMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RedundancyMode value: $value');
  }
}
