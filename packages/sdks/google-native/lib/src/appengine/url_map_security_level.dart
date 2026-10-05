import 'package:pulumi/pulumi.dart' as pulumi;

/// Security (HTTPS) enforcement for this URL.
enum UrlMapSecurityLevel implements pulumi.PulumiEnum<String> {
  secureUnspecified("SECURE_UNSPECIFIED"),
  secureDefault("SECURE_DEFAULT"),
  secureNever("SECURE_NEVER"),
  secureOptional("SECURE_OPTIONAL"),
  secureAlways("SECURE_ALWAYS");

  const UrlMapSecurityLevel(this.wireValue);
  @override
  final String wireValue;

  static UrlMapSecurityLevel fromValue(String value) {
    for (final item in UrlMapSecurityLevel.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown UrlMapSecurityLevel value: $value');
  }
}
