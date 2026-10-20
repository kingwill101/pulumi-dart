import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of update process. You can specify either PROACTIVE so that the MIG automatically updates VMs to the latest configurations or OPPORTUNISTIC so that you can select the VMs that you want to update.
enum InstanceGroupManagerUpdatePolicyTypeComputeBeta implements pulumi.PulumiEnum<String> {
  opportunistic("OPPORTUNISTIC"),
  proactive("PROACTIVE");

  const InstanceGroupManagerUpdatePolicyTypeComputeBeta(this.wireValue);
  @override
  final String wireValue;

  static InstanceGroupManagerUpdatePolicyTypeComputeBeta fromValue(String value) {
    for (final item in InstanceGroupManagerUpdatePolicyTypeComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InstanceGroupManagerUpdatePolicyTypeComputeBeta value: $value');
  }
}
