import 'package:pulumi/pulumi.dart' as pulumi;

/// Level of login required to access this resource. Defaults to optional.
enum ApiConfigHandlerLogin implements pulumi.PulumiEnum<String> {
  loginUnspecified("LOGIN_UNSPECIFIED"),
  loginOptional("LOGIN_OPTIONAL"),
  loginAdmin("LOGIN_ADMIN"),
  loginRequired("LOGIN_REQUIRED");

  const ApiConfigHandlerLogin(this.wireValue);
  @override
  final String wireValue;

  static ApiConfigHandlerLogin fromValue(String value) {
    for (final item in ApiConfigHandlerLogin.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ApiConfigHandlerLogin value: $value');
  }
}
