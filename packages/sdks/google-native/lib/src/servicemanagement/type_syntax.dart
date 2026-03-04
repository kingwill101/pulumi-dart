/// The source syntax.
enum TypeSyntax {
  syntaxProto2("SYNTAX_PROTO2"),
  syntaxProto3("SYNTAX_PROTO3"),
  syntaxEditions("SYNTAX_EDITIONS");

  const TypeSyntax(this.wireValue);
  final String wireValue;

  static TypeSyntax fromValue(String value) {
    for (final item in TypeSyntax.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TypeSyntax value: $value');
  }
}
