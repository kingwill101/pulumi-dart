import 'package:pulumi/pulumi.dart' as pulumi;

/// The operation against the threshold that triggers alert rule.
enum TriggerOperator implements pulumi.PulumiEnum<String> {
  valueGreaterThan("GreaterThan"),
  valueLessThan("LessThan"),
  valueEqual("Equal"),
  valueNotEqual("NotEqual");

  const TriggerOperator(this.wireValue);
  @override
  final String wireValue;

  static TriggerOperator fromValue(String value) {
    for (final item in TriggerOperator.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TriggerOperator value: $value');
  }
}
