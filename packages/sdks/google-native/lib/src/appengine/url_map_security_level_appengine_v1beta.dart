/// Security (HTTPS) enforcement for this URL.
enum UrlMapSecurityLevelAppengineV1beta {
  secureUnspecified("SECURE_UNSPECIFIED"),
  secureDefault("SECURE_DEFAULT"),
  secureNever("SECURE_NEVER"),
  secureOptional("SECURE_OPTIONAL"),
  secureAlways("SECURE_ALWAYS");

  const UrlMapSecurityLevelAppengineV1beta(this.wireValue);
  final String wireValue;

  static UrlMapSecurityLevelAppengineV1beta fromValue(String value) {
    for (final item in UrlMapSecurityLevelAppengineV1beta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown UrlMapSecurityLevelAppengineV1beta value: $value',
    );
  }
}
