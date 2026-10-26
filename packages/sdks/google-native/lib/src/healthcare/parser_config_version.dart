import 'package:pulumi/pulumi.dart' as pulumi;

/// Immutable. Determines the version of both the default parser to be used when `schema` is not given, as well as the schematized parser used when `schema` is specified. This field is immutable after HL7v2 store creation.
enum ParserConfigVersion implements pulumi.PulumiEnum<String> {
  parserVersionUnspecified("PARSER_VERSION_UNSPECIFIED"),
  v1("V1"),
  v2("V2"),
  v3("V3");

  const ParserConfigVersion(this.wireValue);
  @override
  final String wireValue;

  static ParserConfigVersion fromValue(String value) {
    for (final item in ParserConfigVersion.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ParserConfigVersion value: $value');
  }
}
