/// The opt out headers.
enum OptOutHeaderType {
  notSpecified("NotSpecified"),
  systemDataCreatedByLastModifiedBy("SystemDataCreatedByLastModifiedBy");

  const OptOutHeaderType(this.wireValue);
  final String wireValue;

  static OptOutHeaderType fromValue(String value) {
    for (final item in OptOutHeaderType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OptOutHeaderType value: $value');
  }
}
