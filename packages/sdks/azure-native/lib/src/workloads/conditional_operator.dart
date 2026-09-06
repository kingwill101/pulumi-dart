import 'package:pulumi/pulumi.dart' as pulumi;

/// The threshold operator of the alert.
enum ConditionalOperator implements pulumi.PulumiEnum<String> {
  lessThan("LessThan"),
  greaterThan("GreaterThan"),
  equal("Equal"),
  greaterThanOrEqual("GreaterThanOrEqual"),
  lessThanOrEqual("LessThanOrEqual");

  const ConditionalOperator(this.wireValue);
  @override
  final String wireValue;

  static ConditionalOperator fromValue(String value) {
    for (final item in ConditionalOperator.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConditionalOperator value: $value');
  }
}
