import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the state of the policy. If state is Enabled, storageEndpoint and storageAccountAccessKey are required.
enum SecurityAlertPolicyState implements pulumi.PulumiEnum<String> {
  valueNew("New"),
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const SecurityAlertPolicyState(this.wireValue);
  @override
  final String wireValue;

  static SecurityAlertPolicyState fromValue(String value) {
    for (final item in SecurityAlertPolicyState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SecurityAlertPolicyState value: $value');
  }
}
