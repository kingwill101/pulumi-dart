import 'package:pulumi/pulumi.dart' as pulumi;

/// The valid value is Lifecycle
enum RuleType implements pulumi.PulumiEnum<String> {
  valueLifecycle("Lifecycle");

  const RuleType(this.wireValue);
  @override
  final String wireValue;

  static RuleType fromValue(String value) {
    for (final item in RuleType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RuleType value: $value');
  }
}
