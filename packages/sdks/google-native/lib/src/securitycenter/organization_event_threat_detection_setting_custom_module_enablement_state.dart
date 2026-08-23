/// The state of enablement for the module at the given level of the hierarchy.
enum OrganizationEventThreatDetectionSettingCustomModuleEnablementState {
  enablementStateUnspecified("ENABLEMENT_STATE_UNSPECIFIED"),
  enabled("ENABLED"),
  disabled("DISABLED");

  const OrganizationEventThreatDetectionSettingCustomModuleEnablementState(this.wireValue);
  final String wireValue;

  static OrganizationEventThreatDetectionSettingCustomModuleEnablementState fromValue(String value) {
    for (final item in OrganizationEventThreatDetectionSettingCustomModuleEnablementState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OrganizationEventThreatDetectionSettingCustomModuleEnablementState value: $value');
  }
}
