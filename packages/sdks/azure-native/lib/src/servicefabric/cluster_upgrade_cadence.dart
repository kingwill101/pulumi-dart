/// Indicates when new cluster runtime version upgrades will be applied after they are released. By default is Wave0. Only applies when **clusterUpgradeMode** is set to 'Automatic'.
enum ClusterUpgradeCadence {
  valueWave0("Wave0"),
  valueWave1("Wave1"),
  valueWave2("Wave2");

  const ClusterUpgradeCadence(this.wireValue);
  final String wireValue;

  static ClusterUpgradeCadence fromValue(String value) {
    for (final item in ClusterUpgradeCadence.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ClusterUpgradeCadence value: $value');
  }
}
