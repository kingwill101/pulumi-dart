import 'package:pulumi/pulumi.dart' as pulumi;

/// The security level for the function.
enum HttpsTriggerSecurityLevel implements pulumi.PulumiEnum<String> {
  securityLevelUnspecified("SECURITY_LEVEL_UNSPECIFIED"),
  secureAlways("SECURE_ALWAYS"),
  secureOptional("SECURE_OPTIONAL");

  const HttpsTriggerSecurityLevel(this.wireValue);
  @override
  final String wireValue;

  static HttpsTriggerSecurityLevel fromValue(String value) {
    for (final item in HttpsTriggerSecurityLevel.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HttpsTriggerSecurityLevel value: $value');
  }
}
