import 'package:pulumi/pulumi.dart' as pulumi;

/// The enablement state of the custom module.
enum FolderSecurityHealthAnalyticsSettingCustomModuleEnablementState implements pulumi.PulumiEnum<String> {
  enablementStateUnspecified("ENABLEMENT_STATE_UNSPECIFIED"),
  enabled("ENABLED"),
  disabled("DISABLED"),
  inherited("INHERITED");

  const FolderSecurityHealthAnalyticsSettingCustomModuleEnablementState(this.wireValue);
  @override
  final String wireValue;

  static FolderSecurityHealthAnalyticsSettingCustomModuleEnablementState fromValue(String value) {
    for (final item in FolderSecurityHealthAnalyticsSettingCustomModuleEnablementState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FolderSecurityHealthAnalyticsSettingCustomModuleEnablementState value: $value');
  }
}
