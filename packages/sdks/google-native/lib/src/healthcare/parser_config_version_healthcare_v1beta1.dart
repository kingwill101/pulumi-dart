/// Immutable. Determines the version of both the default parser to be used when `schema` is not given, as well as the schematized parser used when `schema` is specified. This field is immutable after HL7v2 store creation.
enum ParserConfigVersionHealthcareV1beta1 {
  parserVersionUnspecified("PARSER_VERSION_UNSPECIFIED"),
  v1("V1"),
  v2("V2"),
  v3("V3");

  const ParserConfigVersionHealthcareV1beta1(this.wireValue);
  final String wireValue;

  static ParserConfigVersionHealthcareV1beta1 fromValue(String value) {
    for (final item in ParserConfigVersionHealthcareV1beta1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown ParserConfigVersionHealthcareV1beta1 value: $value',
    );
  }
}
