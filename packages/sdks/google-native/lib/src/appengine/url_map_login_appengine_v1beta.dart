/// Level of login required to access this resource. Not supported for Node.js in the App Engine standard environment.
enum UrlMapLoginAppengineV1beta {
  loginUnspecified("LOGIN_UNSPECIFIED"),
  loginOptional("LOGIN_OPTIONAL"),
  loginAdmin("LOGIN_ADMIN"),
  loginRequired("LOGIN_REQUIRED");

  const UrlMapLoginAppengineV1beta(this.value);
  final String value;

  static UrlMapLoginAppengineV1beta fromValue(String value) {
    for (final item in UrlMapLoginAppengineV1beta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown UrlMapLoginAppengineV1beta value: $value');
  }
}

