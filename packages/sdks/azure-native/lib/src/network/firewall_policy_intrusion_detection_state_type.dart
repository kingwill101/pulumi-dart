/// Intrusion detection general state. When attached to a parent policy, the firewall's effective IDPS mode is the stricter mode of the two.
enum FirewallPolicyIntrusionDetectionStateType {
  valueOff("Off"),
  valueAlert("Alert"),
  valueDeny("Deny");

  const FirewallPolicyIntrusionDetectionStateType(this.wireValue);
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

