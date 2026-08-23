/// Specifies how to handle instances when a node in the group undergoes maintenance. Set to one of: DEFAULT, RESTART_IN_PLACE, or MIGRATE_WITHIN_NODE_GROUP. The default value is DEFAULT. For more information, see Maintenance policies.
enum NodeGroupMaintenancePolicyComputeV1 {
  default_("DEFAULT"),
  maintenancePolicyUnspecified("MAINTENANCE_POLICY_UNSPECIFIED"),
  migrateWithinNodeGroup("MIGRATE_WITHIN_NODE_GROUP"),
  restartInPlace("RESTART_IN_PLACE");

  const NodeGroupMaintenancePolicyComputeV1(this.wireValue);
  final String wireValue;

  static NodeGroupMaintenancePolicyComputeV1 fromValue(String value) {
    for (final item in NodeGroupMaintenancePolicyComputeV1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NodeGroupMaintenancePolicyComputeV1 value: $value');
  }
}
