/// Specifies how to handle instances when a node in the group undergoes maintenance. Set to one of: DEFAULT, RESTART_IN_PLACE, or MIGRATE_WITHIN_NODE_GROUP. The default value is DEFAULT. For more information, see Maintenance policies.
enum NodeGroupMaintenancePolicy {
  default_("DEFAULT"),
  maintenancePolicyUnspecified("MAINTENANCE_POLICY_UNSPECIFIED"),
  migrateWithinNodeGroup("MIGRATE_WITHIN_NODE_GROUP"),
  restartInPlace("RESTART_IN_PLACE");

  const NodeGroupMaintenancePolicy(this.wireValue);
  final String wireValue;

  static NodeGroupMaintenancePolicy fromValue(String value) {
    for (final item in NodeGroupMaintenancePolicy.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NodeGroupMaintenancePolicy value: $value');
  }
}
