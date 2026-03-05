/// Optional. Whether the persistent disk should be deleted when the workstation is deleted. Valid values are `DELETE` and `RETAIN`. Defaults to `DELETE`.
enum GceRegionalPersistentDiskReclaimPolicyWorkstationsV1beta {
  reclaimPolicyUnspecified("RECLAIM_POLICY_UNSPECIFIED"),
  delete("DELETE"),
  retain("RETAIN");

  const GceRegionalPersistentDiskReclaimPolicyWorkstationsV1beta(this.wireValue);
  final String wireValue;

  static GceRegionalPersistentDiskReclaimPolicyWorkstationsV1beta fromValue(String value) {
    for (final item in GceRegionalPersistentDiskReclaimPolicyWorkstationsV1beta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GceRegionalPersistentDiskReclaimPolicyWorkstationsV1beta value: $value');
  }
}

