/// The activation policy specifies when the instance is activated; it is applicable only when the instance state is 'RUNNABLE'. Valid values: 'ALWAYS': The instance is on, and remains so even in the absence of connection requests. `NEVER`: The instance is off; it is not activated, even if a connection request arrives.
enum CloudSqlSettingsActivationPolicyDatamigrationV1beta1 {
  sqlActivationPolicyUnspecified("SQL_ACTIVATION_POLICY_UNSPECIFIED"),
  always("ALWAYS"),
  never_("NEVER");

  const CloudSqlSettingsActivationPolicyDatamigrationV1beta1(this.wireValue);
  final String wireValue;

  static CloudSqlSettingsActivationPolicyDatamigrationV1beta1 fromValue(String value) {
    for (final item in CloudSqlSettingsActivationPolicyDatamigrationV1beta1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CloudSqlSettingsActivationPolicyDatamigrationV1beta1 value: $value');
  }
}

