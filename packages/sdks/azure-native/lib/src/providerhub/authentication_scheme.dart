import 'package:pulumi/pulumi.dart' as pulumi;

/// The authentication scheme.
enum AuthenticationScheme implements pulumi.PulumiEnum<String> {
  poP("PoP"),
  bearer("Bearer");

  const AuthenticationScheme(this.wireValue);
  @override
  final String wireValue;

  static AuthenticationScheme fromValue(String value) {
    for (final item in AuthenticationScheme.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuthenticationScheme value: $value');
  }
}
