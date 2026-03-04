/// The threshold operator of the alert.
enum ConditionalOperator {
  lessThan("LessThan"),
  greaterThan("GreaterThan"),
  equal("Equal"),
  greaterThanOrEqual("GreaterThanOrEqual"),
  lessThanOrEqual("LessThanOrEqual");

  const ConditionalOperator(this.wireValue);
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
