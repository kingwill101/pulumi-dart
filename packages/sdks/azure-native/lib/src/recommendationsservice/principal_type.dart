import 'package:pulumi/pulumi.dart' as pulumi;

/// AAD principal type.
enum PrincipalType implements pulumi.PulumiEnum<String> {
  valueApplication("Application"),
  valueUser("User");

  const PrincipalType(this.wireValue);
  @override
  final String wireValue;

  static PrincipalType fromValue(String value) {
    for (final item in PrincipalType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PrincipalType value: $value');
  }
}
