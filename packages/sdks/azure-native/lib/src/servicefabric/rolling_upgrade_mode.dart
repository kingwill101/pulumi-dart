import 'package:pulumi/pulumi.dart' as pulumi;

/// The mode used to monitor health during a rolling upgrade. The values are Monitored, and UnmonitoredAuto.
enum RollingUpgradeMode implements pulumi.PulumiEnum<String> {
  valueMonitored("Monitored"),
  valueUnmonitoredAuto("UnmonitoredAuto");

  const RollingUpgradeMode(this.wireValue);
  @override
  final String wireValue;

  static RollingUpgradeMode fromValue(String value) {
    for (final item in RollingUpgradeMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RollingUpgradeMode value: $value');
  }
}
