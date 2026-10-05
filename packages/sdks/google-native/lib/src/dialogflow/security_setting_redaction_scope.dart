import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines the data for which Dialogflow applies redaction. Dialogflow does not redact data that it does not have access to – for example, Cloud logging.
enum SecuritySettingRedactionScope implements pulumi.PulumiEnum<String> {
  redactionScopeUnspecified("REDACTION_SCOPE_UNSPECIFIED"),
  redactDiskStorage("REDACT_DISK_STORAGE");

  const SecuritySettingRedactionScope(this.wireValue);
  @override
  final String wireValue;

  static SecuritySettingRedactionScope fromValue(String value) {
    for (final item in SecuritySettingRedactionScope.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SecuritySettingRedactionScope value: $value');
  }
}
