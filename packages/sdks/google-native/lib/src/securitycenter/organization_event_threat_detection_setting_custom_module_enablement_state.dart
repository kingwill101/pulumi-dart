import 'package:pulumi/pulumi.dart' as pulumi;

/// The state of enablement for the module at the given level of the hierarchy.
enum OrganizationEventThreatDetectionSettingCustomModuleEnablementState implements pulumi.PulumiEnum<String> {
  enablementStateUnspecified("ENABLEMENT_STATE_UNSPECIFIED"),
  enabled("ENABLED"),
  disabled("DISABLED");

  const OrganizationEventThreatDetectionSettingCustomModuleEnablementState(this.wireValue);
  @override
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
