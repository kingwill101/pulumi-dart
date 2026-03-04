/// Filter type that is evaluated against a BrokeredMessage.
enum FilterType {
  valueSqlFilter("SqlFilter"),
  valueCorrelationFilter("CorrelationFilter");

  const FilterType(this.wireValue);
  final String wireValue;

  static FilterType fromValue(String value) {
    for (final item in FilterType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FilterType value: $value');
  }
}
