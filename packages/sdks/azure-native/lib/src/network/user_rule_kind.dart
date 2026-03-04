/// Whether the rule is custom or default.
enum UserRuleKind {
  valueCustom("Custom"),
  valueDefault("Default");

  const UserRuleKind(this.wireValue);
  final String wireValue;

  static UserRuleKind fromValue(String value) {
    for (final item in UserRuleKind.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown UserRuleKind value: $value');
  }
}
