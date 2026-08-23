// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securitycenter_v1_get_project_security_health_analytics_setting_custom_module_args_doc}
/// Arguments for getProjectSecurityHealthAnalyticsSettingCustomModule.
/// {@endtemplate}
/// {@macro pulumi_securitycenter_v1_get_project_security_health_analytics_setting_custom_module_args_doc}
class GetProjectSecurityHealthAnalyticsSettingCustomModuleArgs {
  final pulumi.Input<String> customModuleId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetProjectSecurityHealthAnalyticsSettingCustomModuleArgs].
  /// [customModuleId] Required.
  /// [project] Optional.
  const GetProjectSecurityHealthAnalyticsSettingCustomModuleArgs({
    required this.customModuleId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customModuleId': customModuleId,
      'project': ?project,
    };
  }

  factory GetProjectSecurityHealthAnalyticsSettingCustomModuleArgs.fromMap(Map<String, dynamic> map) {
    return GetProjectSecurityHealthAnalyticsSettingCustomModuleArgs(
      customModuleId: pulumi.Input.fromValue(map['customModuleId'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
