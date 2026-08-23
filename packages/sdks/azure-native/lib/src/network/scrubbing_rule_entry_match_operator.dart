/// When matchVariable is a collection, operate on the selector to specify which elements in the collection this rule applies to.
enum ScrubbingRuleEntryMatchOperator {
  valueEquals("Equals"),
  valueEqualsAny("EqualsAny");

  const ScrubbingRuleEntryMatchOperator(this.wireValue);
  final String wireValue;

  static ScrubbingRuleEntryMatchOperator fromValue(String value) {
    for (final item in ScrubbingRuleEntryMatchOperator.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ScrubbingRuleEntryMatchOperator value: $value');
  }
}
