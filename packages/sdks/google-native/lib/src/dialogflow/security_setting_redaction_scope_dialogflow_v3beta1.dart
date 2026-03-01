/// Defines the data for which Dialogflow applies redaction. Dialogflow does not redact data that it does not have access to – for example, Cloud logging.
enum SecuritySettingRedactionScopeDialogflowV3beta1 {
  redactionScopeUnspecified("REDACTION_SCOPE_UNSPECIFIED"),
  redactDiskStorage("REDACT_DISK_STORAGE");

  const SecuritySettingRedactionScopeDialogflowV3beta1(this.value);
  final String value;

  static SecuritySettingRedactionScopeDialogflowV3beta1 fromValue(String value) {
    for (final item in SecuritySettingRedactionScopeDialogflowV3beta1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SecuritySettingRedactionScopeDialogflowV3beta1 value: $value');
  }
}

