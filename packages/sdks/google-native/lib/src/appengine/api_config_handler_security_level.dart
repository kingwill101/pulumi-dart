/// Security (HTTPS) enforcement for this URL.
enum ApiConfigHandlerSecurityLevel {
  secureUnspecified("SECURE_UNSPECIFIED"),
  secureDefault("SECURE_DEFAULT"),
  secureNever("SECURE_NEVER"),
  secureOptional("SECURE_OPTIONAL"),
  secureAlways("SECURE_ALWAYS");

  const ApiConfigHandlerSecurityLevel(this.wireValue);
  final String wireValue;

  static ApiConfigHandlerSecurityLevel fromValue(String value) {
    for (final item in ApiConfigHandlerSecurityLevel.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ApiConfigHandlerSecurityLevel value: $value');
  }
}

