/// A bit indicating whether to forcefully apply the group's latest configuration when repairing a VM. Valid options are: - NO (default): If configuration updates are available, they are not forcefully applied during repair. Instead, configuration updates are applied according to the group's update policy. - YES: If configuration updates are available, they are applied during repair.
enum InstanceGroupManagerInstanceLifecyclePolicyForceUpdateOnRepairComputeV1 {
  no("NO"),
  yes("YES");

  const InstanceGroupManagerInstanceLifecyclePolicyForceUpdateOnRepairComputeV1(
    this.wireValue,
  );
  final String wireValue;

  static InstanceGroupManagerInstanceLifecyclePolicyForceUpdateOnRepairComputeV1
  fromValue(String value) {
    for (final item
        in InstanceGroupManagerInstanceLifecyclePolicyForceUpdateOnRepairComputeV1
            .values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown InstanceGroupManagerInstanceLifecyclePolicyForceUpdateOnRepairComputeV1 value: $value',
    );
  }
}
