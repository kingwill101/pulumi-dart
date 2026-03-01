/// A valid comparer operator to use. A case-insensitive comparison will be applied for String PropertyType.
enum Operator {
  valueEquals("Equals"),
  valueGreaterThan("GreaterThan"),
  valueGreaterThanOrEqualTo("GreaterThanOrEqualTo"),
  valueLesserThan("LesserThan"),
  valueLesserThanOrEqualTo("LesserThanOrEqualTo"),
  valueNotEquals("NotEquals"),
  valueContains("Contains"),
  valueStartsWith("StartsWith"),
  valueEndsWith("EndsWith");

  const Operator(this.value);
  final String value;

  static Operator fromValue(String value) {
    for (final item in Operator.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Operator value: $value');
  }
}

