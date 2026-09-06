import 'package:pulumi/pulumi.dart' as pulumi;

/// Whether the rule is custom or default.
enum UserRuleKind implements pulumi.PulumiEnum<String> {
  valueCustom("Custom"),
  valueDefault("Default");

  const UserRuleKind(this.wireValue);
  @override
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
