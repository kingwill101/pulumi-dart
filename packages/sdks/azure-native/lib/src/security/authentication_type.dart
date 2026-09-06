import 'package:pulumi/pulumi.dart' as pulumi;

/// The authentication type
enum AuthenticationType implements pulumi.PulumiEnum<String> {
  accessToken("AccessToken");

  const AuthenticationType(this.wireValue);
  @override
  final String wireValue;

  static AuthenticationType fromValue(String value) {
    for (final item in AuthenticationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuthenticationType value: $value');
  }
}
