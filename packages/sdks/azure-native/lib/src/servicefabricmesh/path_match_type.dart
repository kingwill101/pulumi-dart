/// how to match value in the Uri
enum PathMatchType {
  valuePrefix("prefix");

  const PathMatchType(this.wireValue);
  final String wireValue;

  static PathMatchType fromValue(String value) {
    for (final item in PathMatchType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PathMatchType value: $value');
  }
}
