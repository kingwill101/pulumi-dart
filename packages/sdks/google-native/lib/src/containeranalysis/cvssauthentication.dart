import 'package:pulumi/pulumi.dart' as pulumi;

enum CVSSAuthentication implements pulumi.PulumiEnum<String> {
  authenticationUnspecified("AUTHENTICATION_UNSPECIFIED"),
  authenticationMultiple("AUTHENTICATION_MULTIPLE"),
  authenticationSingle("AUTHENTICATION_SINGLE"),
  authenticationNone("AUTHENTICATION_NONE");

  const CVSSAuthentication(this.wireValue);
  @override
  final String wireValue;

  static CVSSAuthentication fromValue(String value) {
    for (final item in CVSSAuthentication.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CVSSAuthentication value: $value');
  }
}
