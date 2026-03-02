// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'folder_security_health_analytics_setting_custom_module_enablement_state.dart';
import 'google_cloud_securitycenter_v1_custom_config.dart';

/// {@template pulumi_securitycenter_v1_folder_security_health_analytics_setting_custom_module_args_doc}
/// The set of arguments for FolderSecurityHealthAnalyticsSettingCustomModule.
/// {@endtemplate}
/// {@macro pulumi_securitycenter_v1_folder_security_health_analytics_setting_custom_module_args_doc}
class FolderSecurityHealthAnalyticsSettingCustomModuleArgs {
  /// The user specified custom configuration for the module.
  final pulumi.Input<GoogleCloudSecuritycenterV1CustomConfig>? customConfig;
  /// The display name of the Security Health Analytics custom module. This display name becomes the finding category for all findings that are returned by this custom module. The display name must be between 1 and 128 characters, start with a lowercase letter, and contain alphanumeric characters or underscores only.
  final pulumi.Input<String>? displayName;
  /// The enablement state of the custom module.
  final pulumi.Input<FolderSecurityHealthAnalyticsSettingCustomModuleEnablementState>? enablementState;
  final pulumi.Input<String> folderId;
  /// Immutable. The resource name of the custom module. Its format is "organizations/{organization}/securityHealthAnalyticsSettings/customModules/{customModule}", or "folders/{folder}/securityHealthAnalyticsSettings/customModules/{customModule}", or "projects/{project}/securityHealthAnalyticsSettings/customModules/{customModule}" The id {customModule} is server-generated and is not user settable. It will be a numeric id containing 1-20 digits.
  final pulumi.Input<String>? name;

  /// Creates a new [FolderSecurityHealthAnalyticsSettingCustomModuleArgs].
  /// [customConfig] The user specified custom configuration for the module.
  /// [displayName] The display name of the Security Health Analytics custom module. This display name becomes the finding category for all findings that are returned by this custom module. The display name must be between 1 and 128 characters, start with a lowercase letter, and contain alphanumeric characters or underscores only.
  /// [enablementState] The enablement state of the custom module.
  /// [folderId] Required.
  /// [name] Immutable. The resource name of the custom module. Its format is "organizations/{organization}/securityHealthAnalyticsSettings/customModules/{customModule}", or "folders/{folder}/securityHealthAnalyticsSettings/customModules/{customModule}", or "projects/{project}/securityHealthAnalyticsSettings/customModules/{customModule}" The id {customModule} is server-generated and is not user settable. It will be a numeric id containing 1-20 digits.
  FolderSecurityHealthAnalyticsSettingCustomModuleArgs({
    this.customConfig,
    this.displayName,
    this.enablementState,
    required this.folderId,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customConfig': ?pulumi.Input.mapOptionalInputValue<GoogleCloudSecuritycenterV1CustomConfig, Map<String, dynamic>>(customConfig, (value) => value.toMap()),
      'displayName': ?displayName,
      'enablementState': ?pulumi.Input.mapOptionalInputValue<FolderSecurityHealthAnalyticsSettingCustomModuleEnablementState, String>(enablementState, (value) => value.value),
      'folderId': folderId,
      'name': ?name,
    };
  }

  factory FolderSecurityHealthAnalyticsSettingCustomModuleArgs.fromMap(Map<String, dynamic> map) {
    return FolderSecurityHealthAnalyticsSettingCustomModuleArgs(
      customConfig: map['customConfig'] == null ? null : (GoogleCloudSecuritycenterV1CustomConfig.fromMap((map['customConfig'] as Map).cast<String, dynamic>())).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      enablementState: map['enablementState'] == null ? null : (FolderSecurityHealthAnalyticsSettingCustomModuleEnablementState.fromValue(map['enablementState'] as String)).input(),
      folderId: (map['folderId'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
    );
  }
}

