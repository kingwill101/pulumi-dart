/// Security level configure whether the function only accepts https. This configuration is only applicable to 1st Gen functions with Http trigger. By default https is optional for 1st Gen functions; 2nd Gen functions are https ONLY.
enum ServiceConfigSecurityLevelCloudfunctionsV2alpha {
  securityLevelUnspecified("SECURITY_LEVEL_UNSPECIFIED"),
  secureAlways("SECURE_ALWAYS"),
  secureOptional("SECURE_OPTIONAL");

  const ServiceConfigSecurityLevelCloudfunctionsV2alpha(this.wireValue);
  final String wireValue;

  static ServiceConfigSecurityLevelCloudfunctionsV2alpha fromValue(
    String value,
  ) {
    for (final item in ServiceConfigSecurityLevelCloudfunctionsV2alpha.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown ServiceConfigSecurityLevelCloudfunctionsV2alpha value: $value',
    );
  }
}
