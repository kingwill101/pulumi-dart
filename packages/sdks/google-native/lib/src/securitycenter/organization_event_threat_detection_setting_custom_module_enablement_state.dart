/// The state of enablement for the module at the given level of the hierarchy.
enum OrganizationEventThreatDetectionSettingCustomModuleEnablementState {
  enablementStateUnspecified("ENABLEMENT_STATE_UNSPECIFIED"),
  enabled("ENABLED"),
  disabled("DISABLED");

  const OrganizationEventThreatDetectionSettingCustomModuleEnablementState(this.value);
  final String value;

  static OrganizationEventThreatDetectionSettingCustomModuleEnablementState fromValue(String value) {
    for (final item in OrganizationEventThreatDetectionSettingCustomModuleEnablementState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OrganizationEventThreatDetectionSettingCustomModuleEnablementState value: $value');
  }
}

