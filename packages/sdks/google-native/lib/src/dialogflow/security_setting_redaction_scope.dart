/// Defines the data for which Dialogflow applies redaction. Dialogflow does not redact data that it does not have access to – for example, Cloud logging.
enum SecuritySettingRedactionScope {
  redactionScopeUnspecified("REDACTION_SCOPE_UNSPECIFIED"),
  redactDiskStorage("REDACT_DISK_STORAGE");

  const SecuritySettingRedactionScope(this.value);
  final String value;

  static SecuritySettingRedactionScope fromValue(String value) {
    for (final item in SecuritySettingRedactionScope.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SecuritySettingRedactionScope value: $value');
  }
}

