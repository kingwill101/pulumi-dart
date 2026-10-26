import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines behaviour of using instances from standby pool to resize MIG.
enum InstanceGroupManagerStandbyPolicyMode implements pulumi.PulumiEnum<String> {
  manual("MANUAL"),
  scaleOutPool("SCALE_OUT_POOL");

  const InstanceGroupManagerStandbyPolicyMode(this.wireValue);
  @override
  final String wireValue;

  static InstanceGroupManagerStandbyPolicyMode fromValue(String value) {
    for (final item in InstanceGroupManagerStandbyPolicyMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InstanceGroupManagerStandbyPolicyMode value: $value');
  }
}
