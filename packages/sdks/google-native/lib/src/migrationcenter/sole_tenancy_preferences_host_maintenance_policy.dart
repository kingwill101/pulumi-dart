/// Sole Tenancy nodes maintenance policy.
enum SoleTenancyPreferencesHostMaintenancePolicy {
  hostMaintenancePolicyUnspecified("HOST_MAINTENANCE_POLICY_UNSPECIFIED"),
  hostMaintenancePolicyDefault("HOST_MAINTENANCE_POLICY_DEFAULT"),
  hostMaintenancePolicyRestartInPlace(
    "HOST_MAINTENANCE_POLICY_RESTART_IN_PLACE",
  ),
  hostMaintenancePolicyMigrateWithinNodeGroup(
    "HOST_MAINTENANCE_POLICY_MIGRATE_WITHIN_NODE_GROUP",
  );

  const SoleTenancyPreferencesHostMaintenancePolicy(this.wireValue);
  final String wireValue;

  static SoleTenancyPreferencesHostMaintenancePolicy fromValue(String value) {
    for (final item in SoleTenancyPreferencesHostMaintenancePolicy.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown SoleTenancyPreferencesHostMaintenancePolicy value: $value',
    );
  }
}
