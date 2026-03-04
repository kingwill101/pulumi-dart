/// Specifies the state of the policy, whether it is enabled or disabled or a policy has not been applied yet on the specific database.
enum SecurityAlertsPolicyState {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const SecurityAlertsPolicyState(this.wireValue);
  final String wireValue;

  static SecurityAlertsPolicyState fromValue(String value) {
    for (final item in SecurityAlertsPolicyState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SecurityAlertsPolicyState value: $value');
  }
}
