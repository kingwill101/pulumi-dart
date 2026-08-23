/// The field that is set in the API proto.
enum IdentifierHelperField {
  identifierHelperFieldUnspecified("IDENTIFIER_HELPER_FIELD_UNSPECIFIED"),
  genericUri("GENERIC_URI");

  const IdentifierHelperField(this.wireValue);
  final String wireValue;

  static IdentifierHelperField fromValue(String value) {
    for (final item in IdentifierHelperField.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IdentifierHelperField value: $value');
  }
}
