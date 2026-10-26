import 'package:pulumi/pulumi.dart' as pulumi;

/// The source syntax.
enum EnumSyntax implements pulumi.PulumiEnum<String> {
  syntaxProto2("SYNTAX_PROTO2"),
  syntaxProto3("SYNTAX_PROTO3"),
  syntaxEditions("SYNTAX_EDITIONS");

  const EnumSyntax(this.wireValue);
  @override
  final String wireValue;

  static EnumSyntax fromValue(String value) {
    for (final item in EnumSyntax.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EnumSyntax value: $value');
  }
}
