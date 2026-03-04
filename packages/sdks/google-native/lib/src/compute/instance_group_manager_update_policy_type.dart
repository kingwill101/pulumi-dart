/// The type of update process. You can specify either PROACTIVE so that the MIG automatically updates VMs to the latest configurations or OPPORTUNISTIC so that you can select the VMs that you want to update.
enum InstanceGroupManagerUpdatePolicyType {
  opportunistic("OPPORTUNISTIC"),
  proactive("PROACTIVE");

  const InstanceGroupManagerUpdatePolicyType(this.wireValue);
  final String wireValue;

  static InstanceGroupManagerUpdatePolicyType fromValue(String value) {
    for (final item in InstanceGroupManagerUpdatePolicyType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown InstanceGroupManagerUpdatePolicyType value: $value',
    );
  }
}
