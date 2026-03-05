/// Specifies the state of the policy. If state is Enabled, storageEndpoint and storageAccountAccessKey are required.
enum SecurityAlertPolicyState {
  valueNew("New"),
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const SecurityAlertPolicyState(this.wireValue);
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

