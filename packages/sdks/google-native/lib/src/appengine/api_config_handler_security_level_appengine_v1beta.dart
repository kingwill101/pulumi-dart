import 'package:pulumi/pulumi.dart' as pulumi;

/// Security (HTTPS) enforcement for this URL.
enum ApiConfigHandlerSecurityLevelAppengineV1beta implements pulumi.PulumiEnum<String> {
  secureUnspecified("SECURE_UNSPECIFIED"),
  secureDefault("SECURE_DEFAULT"),
  secureNever("SECURE_NEVER"),
  secureOptional("SECURE_OPTIONAL"),
  secureAlways("SECURE_ALWAYS");

  const ApiConfigHandlerSecurityLevelAppengineV1beta(this.wireValue);
  @override
  final String wireValue;

  static ApiConfigHandlerSecurityLevelAppengineV1beta fromValue(String value) {
    for (final item in ApiConfigHandlerSecurityLevelAppengineV1beta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ApiConfigHandlerSecurityLevelAppengineV1beta value: $value');
  }
}
