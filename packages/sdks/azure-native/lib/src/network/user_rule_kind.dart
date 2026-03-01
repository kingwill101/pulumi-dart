/// Whether the rule is custom or default.
enum UserRuleKind {
  valueCustom("Custom"),
  valueDefault("Default");

  const UserRuleKind(this.value);
  final String value;

  static UserRuleKind fromValue(String value) {
    for (final item in UserRuleKind.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown UserRuleKind value: $value');
  }
}

