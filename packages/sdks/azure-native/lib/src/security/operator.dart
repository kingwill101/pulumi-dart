/// A valid comparer operator to use. A case-insensitive comparison will be applied for String PropertyType.
enum Operator {
  equals("Equals"),
  greaterThan("GreaterThan"),
  greaterThanOrEqualTo("GreaterThanOrEqualTo"),
  lesserThan("LesserThan"),
  lesserThanOrEqualTo("LesserThanOrEqualTo"),
  notEquals("NotEquals"),
  contains("Contains"),
  startsWith("StartsWith"),
  endsWith("EndsWith");

  const Operator(this.wireValue);
  final String wireValue;

  static Operator fromValue(String value) {
    for (final item in Operator.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Operator value: $value');
  }
}
