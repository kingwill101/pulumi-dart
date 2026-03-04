/// Defines behaviour of using instances from standby pool to resize MIG.
enum InstanceGroupManagerStandbyPolicyMode {
  manual("MANUAL"),
  scaleOutPool("SCALE_OUT_POOL");

  const InstanceGroupManagerStandbyPolicyMode(this.wireValue);
  final String wireValue;

  static InstanceGroupManagerStandbyPolicyMode fromValue(String value) {
    for (final item in InstanceGroupManagerStandbyPolicyMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown InstanceGroupManagerStandbyPolicyMode value: $value',
    );
  }
}
