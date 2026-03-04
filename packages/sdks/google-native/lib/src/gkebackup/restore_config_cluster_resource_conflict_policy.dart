/// Optional. Defines the behavior for handling the situation where cluster-scoped resources being restored already exist in the target cluster. This MUST be set to a value other than CLUSTER_RESOURCE_CONFLICT_POLICY_UNSPECIFIED if cluster_resource_restore_scope is not empty.
enum RestoreConfigClusterResourceConflictPolicy {
  clusterResourceConflictPolicyUnspecified(
    "CLUSTER_RESOURCE_CONFLICT_POLICY_UNSPECIFIED",
  ),
  useExistingVersion("USE_EXISTING_VERSION"),
  useBackupVersion("USE_BACKUP_VERSION");

  const RestoreConfigClusterResourceConflictPolicy(this.wireValue);
  final String wireValue;

  static RestoreConfigClusterResourceConflictPolicy fromValue(String value) {
    for (final item in RestoreConfigClusterResourceConflictPolicy.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown RestoreConfigClusterResourceConflictPolicy value: $value',
    );
  }
}
