/// Scope specifies the upgrade scope which upgrades are blocked by the exclusion.
enum MaintenanceExclusionOptionsScope {
  noUpgrades("NO_UPGRADES"),
  noMinorUpgrades("NO_MINOR_UPGRADES"),
  noMinorOrNodeUpgrades("NO_MINOR_OR_NODE_UPGRADES");

  const MaintenanceExclusionOptionsScope(this.wireValue);
  final String wireValue;

  static MaintenanceExclusionOptionsScope fromValue(String value) {
    for (final item in MaintenanceExclusionOptionsScope.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown MaintenanceExclusionOptionsScope value: $value',
    );
  }
}
