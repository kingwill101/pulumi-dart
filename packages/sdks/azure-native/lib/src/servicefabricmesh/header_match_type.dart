/// how to match header value
enum HeaderMatchType {
  valueExact("exact");

  const HeaderMatchType(this.wireValue);
  final String wireValue;

  static HeaderMatchType fromValue(String value) {
    for (final item in HeaderMatchType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HeaderMatchType value: $value');
  }
}
