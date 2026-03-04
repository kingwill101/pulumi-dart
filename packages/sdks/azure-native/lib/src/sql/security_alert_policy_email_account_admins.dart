/// Specifies that the alert is sent to the account administrators.
enum SecurityAlertPolicyEmailAccountAdmins {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const SecurityAlertPolicyEmailAccountAdmins(this.wireValue);
  final String wireValue;

  static SecurityAlertPolicyEmailAccountAdmins fromValue(String value) {
    for (final item in SecurityAlertPolicyEmailAccountAdmins.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown SecurityAlertPolicyEmailAccountAdmins value: $value',
    );
  }
}
