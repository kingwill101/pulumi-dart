/// The enablement state of the custom module.
enum FolderSecurityHealthAnalyticsSettingCustomModuleEnablementState {
  enablementStateUnspecified("ENABLEMENT_STATE_UNSPECIFIED"),
  enabled("ENABLED"),
  disabled("DISABLED"),
  inherited("INHERITED");

  const FolderSecurityHealthAnalyticsSettingCustomModuleEnablementState(this.wireValue);
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

