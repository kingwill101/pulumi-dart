/// The mode used to monitor health during a rolling upgrade. The values are Monitored, and UnmonitoredAuto.
enum RollingUpgradeMode {
  valueMonitored("Monitored"),
  valueUnmonitoredAuto("UnmonitoredAuto");

  const RollingUpgradeMode(this.wireValue);
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
