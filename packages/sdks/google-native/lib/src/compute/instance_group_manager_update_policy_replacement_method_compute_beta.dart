import 'package:pulumi/pulumi.dart' as pulumi;

/// What action should be used to replace instances. See minimal_action.REPLACE
enum InstanceGroupManagerUpdatePolicyReplacementMethodComputeBeta implements pulumi.PulumiEnum<String> {
  recreate("RECREATE"),
  substitute("SUBSTITUTE");

  const InstanceGroupManagerUpdatePolicyReplacementMethodComputeBeta(this.wireValue);
  @override
  final String wireValue;

  static InstanceGroupManagerUpdatePolicyReplacementMethodComputeBeta fromValue(String value) {
    for (final item in InstanceGroupManagerUpdatePolicyReplacementMethodComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InstanceGroupManagerUpdatePolicyReplacementMethodComputeBeta value: $value');
  }
}
