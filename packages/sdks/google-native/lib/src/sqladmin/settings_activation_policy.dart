/// The activation policy specifies when the instance is activated; it is applicable only when the instance state is RUNNABLE. Valid values: * `ALWAYS`: The instance is on, and remains so even in the absence of connection requests. * `NEVER`: The instance is off; it is not activated, even if a connection request arrives.
enum SettingsActivationPolicy {
  sqlActivationPolicyUnspecified("SQL_ACTIVATION_POLICY_UNSPECIFIED"),
  always("ALWAYS"),
  never_("NEVER"),
  onDemand("ON_DEMAND");

  const SettingsActivationPolicy(this.wireValue);
  final String wireValue;

  static SettingsActivationPolicy fromValue(String value) {
    for (final item in SettingsActivationPolicy.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SettingsActivationPolicy value: $value');
  }
}
