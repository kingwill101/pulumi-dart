import 'package:pulumi/pulumi.dart' as pulumi;

/// The enablement state of the custom module.
enum ProjectSecurityHealthAnalyticsSettingCustomModuleEnablementState implements pulumi.PulumiEnum<String> {
  enablementStateUnspecified("ENABLEMENT_STATE_UNSPECIFIED"),
  enabled("ENABLED"),
  disabled("DISABLED"),
  inherited("INHERITED");

  const ProjectSecurityHealthAnalyticsSettingCustomModuleEnablementState(this.wireValue);
  @override
  final String wireValue;

  static ProjectSecurityHealthAnalyticsSettingCustomModuleEnablementState fromValue(String value) {
    for (final item in ProjectSecurityHealthAnalyticsSettingCustomModuleEnablementState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ProjectSecurityHealthAnalyticsSettingCustomModuleEnablementState value: $value');
  }
}
