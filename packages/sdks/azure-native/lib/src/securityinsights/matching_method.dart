/// Grouping matching method. When method is Selected at least one of groupByEntities, groupByAlertDetails, groupByCustomDetails must be provided and not empty.
enum MatchingMethod {
  valueAllEntities("AllEntities"),
  valueAnyAlert("AnyAlert"),
  valueSelected("Selected");

  const MatchingMethod(this.wireValue);
  final String wireValue;

  static MatchingMethod fromValue(String value) {
    for (final item in MatchingMethod.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MatchingMethod value: $value');
  }
}

