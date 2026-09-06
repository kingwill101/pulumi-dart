import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies whether to use the default server policy.
enum SecurityAlertPolicyUseServerDefault implements pulumi.PulumiEnum<String> {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const SecurityAlertPolicyUseServerDefault(this.wireValue);
  @override
  final String wireValue;

  static SecurityAlertPolicyUseServerDefault fromValue(String value) {
    for (final item in SecurityAlertPolicyUseServerDefault.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SecurityAlertPolicyUseServerDefault value: $value');
  }
}
