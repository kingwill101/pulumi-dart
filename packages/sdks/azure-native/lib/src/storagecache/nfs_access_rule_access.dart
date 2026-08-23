/// Access allowed by this rule.
enum NfsAccessRuleAccess {
  valueNo("no"),
  valueRo("ro"),
  valueRw("rw");

  const NfsAccessRuleAccess(this.wireValue);
  final String wireValue;

  static NfsAccessRuleAccess fromValue(String value) {
    for (final item in NfsAccessRuleAccess.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NfsAccessRuleAccess value: $value');
  }
}
