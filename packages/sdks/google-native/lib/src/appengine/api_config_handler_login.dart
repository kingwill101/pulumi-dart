/// Level of login required to access this resource. Defaults to optional.
enum ApiConfigHandlerLogin {
  loginUnspecified("LOGIN_UNSPECIFIED"),
  loginOptional("LOGIN_OPTIONAL"),
  loginAdmin("LOGIN_ADMIN"),
  loginRequired("LOGIN_REQUIRED");

  const ApiConfigHandlerLogin(this.wireValue);
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
