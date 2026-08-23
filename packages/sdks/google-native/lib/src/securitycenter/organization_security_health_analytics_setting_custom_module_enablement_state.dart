/// The enablement state of the custom module.
enum OrganizationSecurityHealthAnalyticsSettingCustomModuleEnablementState {
  enablementStateUnspecified("ENABLEMENT_STATE_UNSPECIFIED"),
  enabled("ENABLED"),
  disabled("DISABLED"),
  inherited("INHERITED");

  const OrganizationSecurityHealthAnalyticsSettingCustomModuleEnablementState(this.wireValue);
  final String wireValue;

  static OrganizationSecurityHealthAnalyticsSettingCustomModuleEnablementState fromValue(String value) {
    for (final item in OrganizationSecurityHealthAnalyticsSettingCustomModuleEnablementState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OrganizationSecurityHealthAnalyticsSettingCustomModuleEnablementState value: $value');
  }
}
