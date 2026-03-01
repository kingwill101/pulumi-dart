/// Specifies whether to use the default server policy.
enum SecurityAlertPolicyUseServerDefault {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const SecurityAlertPolicyUseServerDefault(this.value);
  final String value;

  static SecurityAlertPolicyUseServerDefault fromValue(String value) {
    for (final item in SecurityAlertPolicyUseServerDefault.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SecurityAlertPolicyUseServerDefault value: $value');
  }
}

