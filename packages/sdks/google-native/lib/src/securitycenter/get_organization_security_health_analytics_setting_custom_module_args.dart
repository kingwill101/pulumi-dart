// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securitycenter_v1_get_organization_security_health_analytics_setting_custom_module_args_doc}
/// Arguments for getOrganizationSecurityHealthAnalyticsSettingCustomModule.
/// {@endtemplate}
/// {@macro pulumi_securitycenter_v1_get_organization_security_health_analytics_setting_custom_module_args_doc}
class GetOrganizationSecurityHealthAnalyticsSettingCustomModuleArgs {
  final pulumi.Input<String> customModuleId;
  final pulumi.Input<String> organizationId;

  /// Creates a new [GetOrganizationSecurityHealthAnalyticsSettingCustomModuleArgs].
  /// [customModuleId] Required.
  /// [organizationId] Required.
  GetOrganizationSecurityHealthAnalyticsSettingCustomModuleArgs({
    required this.customModuleId,
    required this.organizationId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customModuleId': customModuleId,
      'organizationId': organizationId,
    };
  }

  factory GetOrganizationSecurityHealthAnalyticsSettingCustomModuleArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetOrganizationSecurityHealthAnalyticsSettingCustomModuleArgs(
      customModuleId: pulumi.Input.fromValue(map['customModuleId'] as String),
      organizationId: pulumi.Input.fromValue(map['organizationId'] as String),
    );
  }
}
