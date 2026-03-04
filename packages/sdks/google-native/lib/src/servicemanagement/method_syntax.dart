/// The source syntax of this method.
enum MethodSyntax {
  syntaxProto2("SYNTAX_PROTO2"),
  syntaxProto3("SYNTAX_PROTO3"),
  syntaxEditions("SYNTAX_EDITIONS");

  const MethodSyntax(this.wireValue);
  final String wireValue;

  static MethodSyntax fromValue(String value) {
    for (final item in MethodSyntax.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MethodSyntax value: $value');
  }
}
