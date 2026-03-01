/// how to match value in the Uri
enum PathMatchType {
  valuePrefix("prefix");

  const PathMatchType(this.value);
  final String value;

  static PathMatchType fromValue(String value) {
    for (final item in PathMatchType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PathMatchType value: $value');
  }
}

