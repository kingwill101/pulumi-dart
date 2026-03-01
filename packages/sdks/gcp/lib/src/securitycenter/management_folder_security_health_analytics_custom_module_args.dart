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
    pulumi.Output<ManagementFolderSecurityHealthAnalyticsCustomModuleCustomConfig>? customConfig,
    pulumi.Output<String>? displayName,
    pulumi.Output<String>? enablementState,
    required pulumi.Output<String> folder,
    pulumi.Output<String>? location,
  }) :
      customConfig = pulumi.Input.asOptionalInput<ManagementFolderSecurityHealthAnalyticsCustomModuleCustomConfig>(customConfig),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      enablementState = pulumi.Input.asOptionalInput<String>(enablementState),
      folder = pulumi.Input.asInput<String>(folder),
      location = pulumi.Input.asOptionalInput<String>(location);

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
      customConfig: map['customConfig'] == null ? null : pulumi.Output.create<ManagementFolderSecurityHealthAnalyticsCustomModuleCustomConfig>(ManagementFolderSecurityHealthAnalyticsCustomModuleCustomConfig.fromMap((map['customConfig'] as Map).cast<String, dynamic>())),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      enablementState: map['enablementState'] == null ? null : pulumi.Output.create<String>(map['enablementState'] as String),
      folder: pulumi.Output.create<String>(map['folder'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
    );
  }
}

