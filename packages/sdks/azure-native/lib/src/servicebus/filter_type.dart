/// Filter type that is evaluated against a BrokeredMessage.
enum FilterType {
  valueSqlFilter("SqlFilter"),
  valueCorrelationFilter("CorrelationFilter");

  const FilterType(this.value);
  final String value;

  static FilterType fromValue(String value) {
    for (final item in FilterType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FilterType value: $value');
  }
}

