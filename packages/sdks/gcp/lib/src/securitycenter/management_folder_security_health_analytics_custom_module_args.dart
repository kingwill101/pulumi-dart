// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'management_folder_security_health_analytics_custom_module_custom_config.dart';

/// {@template pulumi_securitycenter_management_folder_security_health_analytics_custom_module_management_folder_security_health_analytics_custom_module_args_doc}
/// The set of arguments for ManagementFolderSecurityHealthAnalyticsCustomModule.
/// {@endtemplate}
/// {@macro pulumi_securitycenter_management_folder_security_health_analytics_custom_module_management_folder_security_health_analytics_custom_module_args_doc}
class ManagementFolderSecurityHealthAnalyticsCustomModuleArgs {
  /// The user specified custom configuration for the module.
  /// Structure is documented below.
  final pulumi.Input<ManagementFolderSecurityHealthAnalyticsCustomModuleCustomConfig>? customConfig;
  /// The display name of the Security Health Analytics custom module. This
  /// display name becomes the finding category for all findings that are
  /// returned by this custom module. The display name must be between 1 and
  /// 128 characters, start with a lowercase letter, and contain alphanumeric
  /// characters or underscores only.
  final pulumi.Input<String>? displayName;
  /// The enablement state of the custom module.
  /// Possible values are: `ENABLED`, `DISABLED`.
  final pulumi.Input<String>? enablementState;
  /// Numerical ID of the parent folder.
  final pulumi.Input<String> folder;
  /// Location ID of the parent organization. If not provided, 'global' will be used as the default location.
  final pulumi.Input<String>? location;

  /// Creates a new [ManagementFolderSecurityHealthAnalyticsCustomModuleArgs].
  /// [customConfig] The user specified custom configuration for the module.
  /// [displayName] The display name of the Security Health Analytics custom module. This
  /// [enablementState] The enablement state of the custom module.
  /// [folder] Numerical ID of the parent folder.
  /// [location] Location ID of the parent organization. If not provided, 'global' will be used as the default location.
  ManagementFolderSecurityHealthAnalyticsCustomModuleArgs({
    this.customConfig,
    this.displayName,
    this.enablementState,
    required this.folder,
    this.location,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customConfig': ?pulumi.Input.mapOptionalInputValue<ManagementFolderSecurityHealthAnalyticsCustomModuleCustomConfig, Map<String, dynamic>>(customConfig, (value) => value.toMap()),
      'displayName': ?displayName,
      'enablementState': ?enablementState,
      'folder': folder,
      'location': ?location,
    };
  }

  factory ManagementFolderSecurityHealthAnalyticsCustomModuleArgs.fromMap(Map<String, dynamic> map) {
    return ManagementFolderSecurityHealthAnalyticsCustomModuleArgs(
      customConfig: map['customConfig'] == null ? null : (ManagementFolderSecurityHealthAnalyticsCustomModuleCustomConfig.fromMap((map['customConfig']! as Map).cast<String, dynamic>())).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      enablementState: map['enablementState'] == null ? null : (map['enablementState']! as String).input(),
      folder: (map['folder'] as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
    );
  }
}

