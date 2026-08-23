/// The type of update process. You can specify either PROACTIVE so that the MIG automatically updates VMs to the latest configurations or OPPORTUNISTIC so that you can select the VMs that you want to update.
enum InstanceGroupManagerUpdatePolicyTypeComputeV1 {
  opportunistic("OPPORTUNISTIC"),
  proactive("PROACTIVE");

  const InstanceGroupManagerUpdatePolicyTypeComputeV1(this.wireValue);
  final String wireValue;

  static InstanceGroupManagerUpdatePolicyTypeComputeV1 fromValue(String value) {
    for (final item in InstanceGroupManagerUpdatePolicyTypeComputeV1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InstanceGroupManagerUpdatePolicyTypeComputeV1 value: $value');
  }
}
