import 'package:pulumi/pulumi.dart' as pulumi;

/// SQL IaaS Agent least privilege mode.
enum LeastPrivilegeMode implements pulumi.PulumiEnum<String> {
  enabled("Enabled"),
  notSet("NotSet");

  const LeastPrivilegeMode(this.wireValue);
  @override
  final String wireValue;

  static LeastPrivilegeMode fromValue(String value) {
    for (final item in LeastPrivilegeMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LeastPrivilegeMode value: $value');
  }
}
