/// The activation policy specifies when the instance is activated; it is applicable only when the instance state is RUNNABLE. Valid values: * `ALWAYS`: The instance is on, and remains so even in the absence of connection requests. * `NEVER`: The instance is off; it is not activated, even if a connection request arrives.
enum SettingsActivationPolicySqladminV1beta4 {
  sqlActivationPolicyUnspecified("SQL_ACTIVATION_POLICY_UNSPECIFIED"),
  always("ALWAYS"),
  never("NEVER"),
  onDemand("ON_DEMAND");

  const SettingsActivationPolicySqladminV1beta4(this.value);
  final String value;

  static SettingsActivationPolicySqladminV1beta4 fromValue(String value) {
    for (final item in SettingsActivationPolicySqladminV1beta4.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SettingsActivationPolicySqladminV1beta4 value: $value');
  }
}

