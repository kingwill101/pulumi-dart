import 'package:pulumi/pulumi.dart' as pulumi;

/// SummaryRules rule type: User.
enum RuleTypeEnum implements pulumi.PulumiEnum<String> {
  user("User");

  const RuleTypeEnum(this.wireValue);
  @override
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
