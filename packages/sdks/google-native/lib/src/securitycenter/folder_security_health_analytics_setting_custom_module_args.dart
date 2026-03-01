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
    pulumi.Output<GoogleCloudSecuritycenterV1CustomConfig>? customConfig,
    pulumi.Output<String>? displayName,
    pulumi.Output<FolderSecurityHealthAnalyticsSettingCustomModuleEnablementState>? enablementState,
    required pulumi.Output<String> folderId,
    pulumi.Output<String>? name,
  }) :
      customConfig = pulumi.Input.asOptionalInput<GoogleCloudSecuritycenterV1CustomConfig>(customConfig),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      enablementState = pulumi.Input.asOptionalInput<FolderSecurityHealthAnalyticsSettingCustomModuleEnablementState>(enablementState),
      folderId = pulumi.Input.asInput<String>(folderId),
      name = pulumi.Input.asOptionalInput<String>(name);

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
      customConfig: map['customConfig'] == null ? null : pulumi.Output.create<GoogleCloudSecuritycenterV1CustomConfig>(GoogleCloudSecuritycenterV1CustomConfig.fromMap((map['customConfig'] as Map).cast<String, dynamic>())),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      enablementState: map['enablementState'] == null ? null : pulumi.Output.create<FolderSecurityHealthAnalyticsSettingCustomModuleEnablementState>(FolderSecurityHealthAnalyticsSettingCustomModuleEnablementState.fromValue(map['enablementState'] as String)),
      folderId: pulumi.Output.create<String>(map['folderId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
    );
  }
}

