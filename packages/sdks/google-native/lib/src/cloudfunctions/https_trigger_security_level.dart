/// The security level for the function.
enum HttpsTriggerSecurityLevel {
  securityLevelUnspecified("SECURITY_LEVEL_UNSPECIFIED"),
  secureAlways("SECURE_ALWAYS"),
  secureOptional("SECURE_OPTIONAL");

  const HttpsTriggerSecurityLevel(this.value);
  final String value;

  static HttpsTriggerSecurityLevel fromValue(String value) {
    for (final item in HttpsTriggerSecurityLevel.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HttpsTriggerSecurityLevel value: $value');
  }
}

