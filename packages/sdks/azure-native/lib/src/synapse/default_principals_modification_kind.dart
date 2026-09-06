import 'package:pulumi/pulumi.dart' as pulumi;

/// The default principals modification kind
enum DefaultPrincipalsModificationKind implements pulumi.PulumiEnum<String> {
  valueUnion("Union"),
  valueReplace("Replace"),
  valueNone("None");

  const DefaultPrincipalsModificationKind(this.wireValue);
  @override
  final String wireValue;

  static DefaultPrincipalsModificationKind fromValue(String value) {
    for (final item in DefaultPrincipalsModificationKind.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DefaultPrincipalsModificationKind value: $value');
  }
}
