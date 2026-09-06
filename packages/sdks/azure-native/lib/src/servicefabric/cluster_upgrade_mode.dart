import 'package:pulumi/pulumi.dart' as pulumi;

/// The upgrade mode of the cluster when new Service Fabric runtime version is available.
enum ClusterUpgradeMode implements pulumi.PulumiEnum<String> {
  valueAutomatic("Automatic"),
  valueManual("Manual");

  const ClusterUpgradeMode(this.wireValue);
  @override
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
