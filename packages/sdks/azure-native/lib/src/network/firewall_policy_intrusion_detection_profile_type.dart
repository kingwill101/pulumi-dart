/// IDPS profile name. When attached to a parent policy, the firewall's effective profile is the profile name of the parent policy.
enum FirewallPolicyIntrusionDetectionProfileType {
  valueBasic("Basic"),
  valueStandard("Standard"),
  valueAdvanced("Advanced"),
  valueExtended("Extended");

  const FirewallPolicyIntrusionDetectionProfileType(this.wireValue);
  final String wireValue;

  static FirewallPolicyIntrusionDetectionProfileType fromValue(String value) {
    for (final item in FirewallPolicyIntrusionDetectionProfileType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FirewallPolicyIntrusionDetectionProfileType value: $value');
  }
}

