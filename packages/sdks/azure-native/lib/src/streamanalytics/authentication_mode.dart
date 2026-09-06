import 'package:pulumi/pulumi.dart' as pulumi;

/// Authentication Mode.
enum AuthenticationMode implements pulumi.PulumiEnum<String> {
  valueMsi("Msi"),
  valueUserToken("UserToken"),
  valueConnectionString("ConnectionString");

  const AuthenticationMode(this.wireValue);
  @override
  final String wireValue;

  static AuthenticationMode fromValue(String value) {
    for (final item in AuthenticationMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuthenticationMode value: $value');
  }
}
