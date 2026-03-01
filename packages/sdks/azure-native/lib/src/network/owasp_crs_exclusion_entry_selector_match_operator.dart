/// When matchVariable is a collection, operate on the selector to specify which elements in the collection this exclusion applies to.
enum OwaspCrsExclusionEntrySelectorMatchOperator {
  valueEquals("Equals"),
  valueContains("Contains"),
  valueStartsWith("StartsWith"),
  valueEndsWith("EndsWith"),
  valueEqualsAny("EqualsAny");

  const OwaspCrsExclusionEntrySelectorMatchOperator(this.value);
  final String value;

  static OwaspCrsExclusionEntrySelectorMatchOperator fromValue(String value) {
    for (final item in OwaspCrsExclusionEntrySelectorMatchOperator.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OwaspCrsExclusionEntrySelectorMatchOperator value: $value');
  }
}

