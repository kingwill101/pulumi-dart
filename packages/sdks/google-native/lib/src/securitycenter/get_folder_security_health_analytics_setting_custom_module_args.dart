// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securitycenter_v1_get_folder_security_health_analytics_setting_custom_module_args_doc}
/// Arguments for getFolderSecurityHealthAnalyticsSettingCustomModule.
/// {@endtemplate}
/// {@macro pulumi_securitycenter_v1_get_folder_security_health_analytics_setting_custom_module_args_doc}
class GetFolderSecurityHealthAnalyticsSettingCustomModuleArgs {
  final pulumi.Input<String> customModuleId;
  final pulumi.Input<String> folderId;

  /// Creates a new [GetFolderSecurityHealthAnalyticsSettingCustomModuleArgs].
  /// [customModuleId] Required.
  /// [folderId] Required.
  GetFolderSecurityHealthAnalyticsSettingCustomModuleArgs({
    required this.customModuleId,
    required this.folderId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customModuleId': customModuleId,
      'folderId': folderId,
    };
  }

  factory GetFolderSecurityHealthAnalyticsSettingCustomModuleArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetFolderSecurityHealthAnalyticsSettingCustomModuleArgs(
      customModuleId: pulumi.Input.fromValue(map['customModuleId'] as String),
      folderId: pulumi.Input.fromValue(map['folderId'] as String),
    );
  }
}
