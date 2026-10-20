import 'package:pulumi/pulumi.dart' as pulumi;

/// Level of login required to access this resource. Defaults to optional.
enum ApiConfigHandlerLoginAppengineV1beta implements pulumi.PulumiEnum<String> {
  loginUnspecified("LOGIN_UNSPECIFIED"),
  loginOptional("LOGIN_OPTIONAL"),
  loginAdmin("LOGIN_ADMIN"),
  loginRequired("LOGIN_REQUIRED");

  const ApiConfigHandlerLoginAppengineV1beta(this.wireValue);
  @override
  final String wireValue;

  static ApiConfigHandlerLoginAppengineV1beta fromValue(String value) {
    for (final item in ApiConfigHandlerLoginAppengineV1beta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ApiConfigHandlerLoginAppengineV1beta value: $value');
  }
}
