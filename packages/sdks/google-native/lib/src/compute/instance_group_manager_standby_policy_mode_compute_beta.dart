/// Defines behaviour of using instances from standby pool to resize MIG.
enum InstanceGroupManagerStandbyPolicyModeComputeBeta {
  manual("MANUAL"),
  scaleOutPool("SCALE_OUT_POOL");

  const InstanceGroupManagerStandbyPolicyModeComputeBeta(this.wireValue);
  final String wireValue;

  static InstanceGroupManagerStandbyPolicyModeComputeBeta fromValue(
    String value,
  ) {
    for (final item
        in InstanceGroupManagerStandbyPolicyModeComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown InstanceGroupManagerStandbyPolicyModeComputeBeta value: $value',
    );
  }
}
