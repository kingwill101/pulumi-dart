import 'package:pulumi/pulumi.dart' as pulumi;

/// Optional. Controls the amount of detail to include as part of the audit logs.
enum AccessDeterminationLogConfigLogLevel implements pulumi.PulumiEnum<String> {
  logLevelUnspecified("LOG_LEVEL_UNSPECIFIED"),
  disabled("DISABLED"),
  minimum("MINIMUM"),
  verbose("VERBOSE");

  const AccessDeterminationLogConfigLogLevel(this.wireValue);
  @override
  final String wireValue;

  static AccessDeterminationLogConfigLogLevel fromValue(String value) {
    for (final item in AccessDeterminationLogConfigLogLevel.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AccessDeterminationLogConfigLogLevel value: $value');
  }
}
