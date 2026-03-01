/// The enablement state of the custom module.
enum OrganizationSecurityHealthAnalyticsSettingCustomModuleEnablementState {
  enablementStateUnspecified("ENABLEMENT_STATE_UNSPECIFIED"),
  enabled("ENABLED"),
  disabled("DISABLED"),
  inherited("INHERITED");

  const OrganizationSecurityHealthAnalyticsSettingCustomModuleEnablementState(this.value);
  final String value;

  static OrganizationSecurityHealthAnalyticsSettingCustomModuleEnablementState fromValue(String value) {
    for (final item in OrganizationSecurityHealthAnalyticsSettingCustomModuleEnablementState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OrganizationSecurityHealthAnalyticsSettingCustomModuleEnablementState value: $value');
  }
}

