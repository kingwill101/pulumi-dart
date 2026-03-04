/// Required. Relation between source value and compare value
enum IntComparisonFilterValueComparison {
  valueComparisonUnspecified("VALUE_COMPARISON_UNSPECIFIED"),
  valueComparisonIfValueSmallerThan("VALUE_COMPARISON_IF_VALUE_SMALLER_THAN"),
  valueComparisonIfValueSmallerEqualThan(
    "VALUE_COMPARISON_IF_VALUE_SMALLER_EQUAL_THAN",
  ),
  valueComparisonIfValueLargerThan("VALUE_COMPARISON_IF_VALUE_LARGER_THAN"),
  valueComparisonIfValueLargerEqualThan(
    "VALUE_COMPARISON_IF_VALUE_LARGER_EQUAL_THAN",
  );

  const IntComparisonFilterValueComparison(this.wireValue);
  final String wireValue;

  static IntComparisonFilterValueComparison fromValue(String value) {
    for (final item in IntComparisonFilterValueComparison.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown IntComparisonFilterValueComparison value: $value',
    );
  }
}
