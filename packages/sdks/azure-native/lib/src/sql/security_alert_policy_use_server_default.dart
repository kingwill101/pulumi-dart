/// Specifies whether to use the default server policy.
enum SecurityAlertPolicyUseServerDefault {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const SecurityAlertPolicyUseServerDefault(this.wireValue);
  final String wireValue;

  static SecurityAlertPolicyUseServerDefault fromValue(String value) {
    for (final item in SecurityAlertPolicyUseServerDefault.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SecurityAlertPolicyUseServerDefault value: $value');
  }
}
