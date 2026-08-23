// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securitycenter_v1_get_organization_event_threat_detection_setting_custom_module_args_doc}
/// Arguments for getOrganizationEventThreatDetectionSettingCustomModule.
/// {@endtemplate}
/// {@macro pulumi_securitycenter_v1_get_organization_event_threat_detection_setting_custom_module_args_doc}
class GetOrganizationEventThreatDetectionSettingCustomModuleArgs {
  final pulumi.Input<String> customModuleId;
  final pulumi.Input<String> organizationId;

  /// Creates a new [GetOrganizationEventThreatDetectionSettingCustomModuleArgs].
  /// [customModuleId] Required.
  /// [organizationId] Required.
  const GetOrganizationEventThreatDetectionSettingCustomModuleArgs({
    required this.customModuleId,
    required this.organizationId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customModuleId': customModuleId,
      'organizationId': organizationId,
    };
  }

  factory GetOrganizationEventThreatDetectionSettingCustomModuleArgs.fromMap(Map<String, dynamic> map) {
    return GetOrganizationEventThreatDetectionSettingCustomModuleArgs(
      customModuleId: pulumi.Input.fromValue(map['customModuleId'] as String),
      organizationId: pulumi.Input.fromValue(map['organizationId'] as String),
    );
  }
}
