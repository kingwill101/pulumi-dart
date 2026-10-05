import 'package:pulumi/pulumi.dart' as pulumi;

/// The instance redistribution policy for regional managed instance groups. Valid values are: - PROACTIVE (default): The group attempts to maintain an even distribution of VM instances across zones in the region. - NONE: For non-autoscaled groups, proactive redistribution is disabled.
enum InstanceGroupManagerUpdatePolicyInstanceRedistributionTypeComputeBeta implements pulumi.PulumiEnum<String> {
  none("NONE"),
  proactive("PROACTIVE");

  const InstanceGroupManagerUpdatePolicyInstanceRedistributionTypeComputeBeta(this.wireValue);
  @override
  final String wireValue;

  static InstanceGroupManagerUpdatePolicyInstanceRedistributionTypeComputeBeta fromValue(String value) {
    for (final item in InstanceGroupManagerUpdatePolicyInstanceRedistributionTypeComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InstanceGroupManagerUpdatePolicyInstanceRedistributionTypeComputeBeta value: $value');
  }
}
