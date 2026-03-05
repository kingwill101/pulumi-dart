/// The source syntax of the service.
enum ApiSyntax {
  syntaxProto2("SYNTAX_PROTO2"),
  syntaxProto3("SYNTAX_PROTO3"),
  syntaxEditions("SYNTAX_EDITIONS");

  const ApiSyntax(this.wireValue);
  final String wireValue;

  static ApiSyntax fromValue(String value) {
    for (final item in ApiSyntax.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ApiSyntax value: $value');
  }
}

