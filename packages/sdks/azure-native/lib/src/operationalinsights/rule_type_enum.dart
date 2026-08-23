/// SummaryRules rule type: User.
enum RuleTypeEnum {
  user("User");

  const RuleTypeEnum(this.wireValue);
  final String wireValue;

  static RuleTypeEnum fromValue(String value) {
    for (final item in RuleTypeEnum.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RuleTypeEnum value: $value');
  }
}
