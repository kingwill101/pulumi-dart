import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines the data for which Dialogflow applies redaction. Dialogflow does not redact data that it does not have access to – for example, Cloud logging.
enum SecuritySettingRedactionScopeDialogflowV3beta1 implements pulumi.PulumiEnum<String> {
  redactionScopeUnspecified("REDACTION_SCOPE_UNSPECIFIED"),
  redactDiskStorage("REDACT_DISK_STORAGE");

  const SecuritySettingRedactionScopeDialogflowV3beta1(this.wireValue);
  @override
  final String wireValue;

  static SecuritySettingRedactionScopeDialogflowV3beta1 fromValue(String value) {
    for (final item in SecuritySettingRedactionScopeDialogflowV3beta1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SecuritySettingRedactionScopeDialogflowV3beta1 value: $value');
  }
}
