import 'package:pulumi/pulumi.dart' as pulumi;

/// Level of login required to access this resource. Not supported for Node.js in the App Engine standard environment.
enum UrlMapLoginAppengineV1beta implements pulumi.PulumiEnum<String> {
  loginUnspecified("LOGIN_UNSPECIFIED"),
  loginOptional("LOGIN_OPTIONAL"),
  loginAdmin("LOGIN_ADMIN"),
  loginRequired("LOGIN_REQUIRED");

  const UrlMapLoginAppengineV1beta(this.wireValue);
  @override
  final String wireValue;

  static UrlMapLoginAppengineV1beta fromValue(String value) {
    for (final item in UrlMapLoginAppengineV1beta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown UrlMapLoginAppengineV1beta value: $value');
  }
}
