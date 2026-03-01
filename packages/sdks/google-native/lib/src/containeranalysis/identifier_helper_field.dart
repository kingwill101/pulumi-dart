/// The field that is set in the API proto.
enum IdentifierHelperField {
  identifierHelperFieldUnspecified("IDENTIFIER_HELPER_FIELD_UNSPECIFIED"),
  genericUri("GENERIC_URI");

  const IdentifierHelperField(this.value);
  final String value;

  static IdentifierHelperField fromValue(String value) {
    for (final item in IdentifierHelperField.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IdentifierHelperField value: $value');
  }
}

