import 'package:pulumi/pulumi.dart' as pulumi;

/// Scope specifies the upgrade scope which upgrades are blocked by the exclusion.
enum MaintenanceExclusionOptionsScopeContainerV1beta1 implements pulumi.PulumiEnum<String> {
  noUpgrades("NO_UPGRADES"),
  noMinorUpgrades("NO_MINOR_UPGRADES"),
  noMinorOrNodeUpgrades("NO_MINOR_OR_NODE_UPGRADES");

  const MaintenanceExclusionOptionsScopeContainerV1beta1(this.wireValue);
  @override
  final String wireValue;

  static MaintenanceExclusionOptionsScopeContainerV1beta1 fromValue(String value) {
    for (final item in MaintenanceExclusionOptionsScopeContainerV1beta1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MaintenanceExclusionOptionsScopeContainerV1beta1 value: $value');
  }
}
