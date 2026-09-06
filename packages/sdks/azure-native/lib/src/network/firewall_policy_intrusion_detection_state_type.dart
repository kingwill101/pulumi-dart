import 'package:pulumi/pulumi.dart' as pulumi;

/// Intrusion detection general state. When attached to a parent policy, the firewall's effective IDPS mode is the stricter mode of the two.
enum FirewallPolicyIntrusionDetectionStateType implements pulumi.PulumiEnum<String> {
  valueOff("Off"),
  valueAlert("Alert"),
  valueDeny("Deny");

  const FirewallPolicyIntrusionDetectionStateType(this.wireValue);
  @override
  final String wireValue;

  static FirewallPolicyIntrusionDetectionStateType fromValue(String value) {
    for (final item in FirewallPolicyIntrusionDetectionStateType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FirewallPolicyIntrusionDetectionStateType value: $value');
  }
}
