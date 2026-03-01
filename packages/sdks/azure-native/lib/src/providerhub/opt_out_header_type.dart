/// The opt out headers.
enum OptOutHeaderType {
  notSpecified("NotSpecified"),
  systemDataCreatedByLastModifiedBy("SystemDataCreatedByLastModifiedBy");

  const OptOutHeaderType(this.value);
  final String value;

  static OptOutHeaderType fromValue(String value) {
    for (final item in OptOutHeaderType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OptOutHeaderType value: $value');
  }
}

