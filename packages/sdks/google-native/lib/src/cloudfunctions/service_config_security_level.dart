/// Security level configure whether the function only accepts https. This configuration is only applicable to 1st Gen functions with Http trigger. By default https is optional for 1st Gen functions; 2nd Gen functions are https ONLY.
enum ServiceConfigSecurityLevel {
  securityLevelUnspecified("SECURITY_LEVEL_UNSPECIFIED"),
  secureAlways("SECURE_ALWAYS"),
  secureOptional("SECURE_OPTIONAL");

  const ServiceConfigSecurityLevel(this.wireValue);
  final String wireValue;

  static ServiceConfigSecurityLevel fromValue(String value) {
    for (final item in ServiceConfigSecurityLevel.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServiceConfigSecurityLevel value: $value');
  }
}
