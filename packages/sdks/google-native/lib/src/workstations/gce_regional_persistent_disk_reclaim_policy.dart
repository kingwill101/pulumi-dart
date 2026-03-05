/// Optional. Whether the persistent disk should be deleted when the workstation is deleted. Valid values are `DELETE` and `RETAIN`. Defaults to `DELETE`.
enum GceRegionalPersistentDiskReclaimPolicy {
  reclaimPolicyUnspecified("RECLAIM_POLICY_UNSPECIFIED"),
  delete("DELETE"),
  retain("RETAIN");

  const GceRegionalPersistentDiskReclaimPolicy(this.wireValue);
  final String wireValue;

  static GceRegionalPersistentDiskReclaimPolicy fromValue(String value) {
    for (final item in GceRegionalPersistentDiskReclaimPolicy.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GceRegionalPersistentDiskReclaimPolicy value: $value');
  }
}

