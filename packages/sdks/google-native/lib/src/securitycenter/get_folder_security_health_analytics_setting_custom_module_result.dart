// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_securitycenter_v1_custom_config_response.dart';

/// Result data returned by getFolderSecurityHealthAnalyticsSettingCustomModule.
class GetFolderSecurityHealthAnalyticsSettingCustomModuleResult {
  /// If empty, indicates that the custom module was created in the organization, folder, or project in which you are viewing the custom module. Otherwise, `ancestor_module` specifies the organization or folder from which the custom module is inherited.
  final String ancestorModule;
  /// The user specified custom configuration for the module.
  final GoogleCloudSecuritycenterV1CustomConfigResponse customConfig;
  /// The display name of the Security Health Analytics custom module. This display name becomes the finding category for all findings that are returned by this custom module. The display name must be between 1 and 128 characters, start with a lowercase letter, and contain alphanumeric characters or underscores only.
  final String displayName;
  /// The enablement state of the custom module.
  final String enablementState;
  /// The editor that last updated the custom module.
  final String lastEditor;
  /// Immutable. The resource name of the custom module. Its format is "organizations/{organization}/securityHealthAnalyticsSettings/customModules/{customModule}", or "folders/{folder}/securityHealthAnalyticsSettings/customModules/{customModule}", or "projects/{project}/securityHealthAnalyticsSettings/customModules/{customModule}" The id {customModule} is server-generated and is not user settable. It will be a numeric id containing 1-20 digits.
  final String name;
  /// The time at which the custom module was last updated.
  final String updateTime;

  /// Creates a new [GetFolderSecurityHealthAnalyticsSettingCustomModuleResult].
  /// [ancestorModule] If empty, indicates that the custom module was created in the organization, folder, or project in which you are viewing the custom module. Otherwise, `ancestor_module` specifies the organization or folder from which the custom module is inherited.
  /// [customConfig] The user specified custom configuration for the module.
  /// [displayName] The display name of the Security Health Analytics custom module. This display name becomes the finding category for all findings that are returned by this custom module. The display name must be between 1 and 128 characters, start with a lowercase letter, and contain alphanumeric characters or underscores only.
  /// [enablementState] The enablement state of the custom module.
  /// [lastEditor] The editor that last updated the custom module.
  /// [name] Immutable. The resource name of the custom module. Its format is "organizations/{organization}/securityHealthAnalyticsSettings/customModules/{customModule}", or "folders/{folder}/securityHealthAnalyticsSettings/customModules/{customModule}", or "projects/{project}/securityHealthAnalyticsSettings/customModules/{customModule}" The id {customModule} is server-generated and is not user settable. It will be a numeric id containing 1-20 digits.
  /// [updateTime] The time at which the custom module was last updated.
  const GetFolderSecurityHealthAnalyticsSettingCustomModuleResult({
    required this.ancestorModule,
    required this.customConfig,
    required this.displayName,
    required this.enablementState,
    required this.lastEditor,
    required this.name,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ancestorModule': ancestorModule,
      'customConfig': customConfig.toMap(),
      'displayName': displayName,
      'enablementState': enablementState,
      'lastEditor': lastEditor,
      'name': name,
      'updateTime': updateTime,
    };
  }

  factory GetFolderSecurityHealthAnalyticsSettingCustomModuleResult.fromMap(Map<String, dynamic> map) {
    return GetFolderSecurityHealthAnalyticsSettingCustomModuleResult(
      ancestorModule: map['ancestorModule'] as String,
      customConfig: GoogleCloudSecuritycenterV1CustomConfigResponse.fromMap((map['customConfig']! as Map).cast<String, dynamic>()),
      displayName: map['displayName'] as String,
      enablementState: map['enablementState'] as String,
      lastEditor: map['lastEditor'] as String,
      name: map['name'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
