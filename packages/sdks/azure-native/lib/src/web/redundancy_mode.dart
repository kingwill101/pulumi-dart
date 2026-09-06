import 'package:pulumi/pulumi.dart' as pulumi;

/// Site redundancy mode
enum RedundancyMode implements pulumi.PulumiEnum<String> {
  valueNone("None"),
  valueManual("Manual"),
  valueFailover("Failover"),
  valueActiveActive("ActiveActive"),
  valueGeoRedundant("GeoRedundant");

  const RedundancyMode(this.wireValue);
  @override
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
