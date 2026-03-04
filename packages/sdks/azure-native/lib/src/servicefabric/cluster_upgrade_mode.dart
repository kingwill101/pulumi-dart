/// The upgrade mode of the cluster when new Service Fabric runtime version is available.
enum ClusterUpgradeMode {
  valueAutomatic("Automatic"),
  valueManual("Manual");

  const ClusterUpgradeMode(this.wireValue);
  final String wireValue;

  static ClusterUpgradeMode fromValue(String value) {
    for (final item in ClusterUpgradeMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ClusterUpgradeMode value: $value');
  }
}
