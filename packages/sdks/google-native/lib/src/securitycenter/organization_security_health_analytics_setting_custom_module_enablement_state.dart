import 'package:pulumi/pulumi.dart' as pulumi;

/// The enablement state of the custom module.
enum OrganizationSecurityHealthAnalyticsSettingCustomModuleEnablementState implements pulumi.PulumiEnum<String> {
  enablementStateUnspecified("ENABLEMENT_STATE_UNSPECIFIED"),
  enabled("ENABLED"),
  disabled("DISABLED"),
  inherited("INHERITED");

  const OrganizationSecurityHealthAnalyticsSettingCustomModuleEnablementState(this.wireValue);
  @override
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
