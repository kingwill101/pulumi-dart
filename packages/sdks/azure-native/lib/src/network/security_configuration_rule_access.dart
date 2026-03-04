/// Indicates the access allowed for this particular rule
enum SecurityConfigurationRuleAccess {
  valueAllow("Allow"),
  valueDeny("Deny"),
  valueAlwaysAllow("AlwaysAllow");

  const SecurityConfigurationRuleAccess(this.wireValue);
  final String wireValue;

  static SecurityConfigurationRuleAccess fromValue(String value) {
    for (final item in SecurityConfigurationRuleAccess.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown SecurityConfigurationRuleAccess value: $value',
    );
  }
}
