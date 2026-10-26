import 'package:pulumi/pulumi.dart' as pulumi;

/// What action should be used to replace instances. See minimal_action.REPLACE
enum InstanceGroupManagerUpdatePolicyReplacementMethod implements pulumi.PulumiEnum<String> {
  recreate("RECREATE"),
  substitute("SUBSTITUTE");

  const InstanceGroupManagerUpdatePolicyReplacementMethod(this.wireValue);
  @override
  final String wireValue;

  static InstanceGroupManagerUpdatePolicyReplacementMethod fromValue(String value) {
    for (final item in InstanceGroupManagerUpdatePolicyReplacementMethod.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InstanceGroupManagerUpdatePolicyReplacementMethod value: $value');
  }
}
