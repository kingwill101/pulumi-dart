/// The upgrade mode of the cluster when new Service Fabric runtime version is available.
enum ClusterUpgradeMode {
  valueAutomatic("Automatic"),
  valueManual("Manual");

  const ClusterUpgradeMode(this.value);
  final String value;

  static ClusterUpgradeMode fromValue(String value) {
    for (final item in ClusterUpgradeMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ClusterUpgradeMode value: $value');
  }
}

