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
  final pulumi.Input<ManagementFolderSecurityHealthAnalyticsCustomModuleCustomConfig?>? customConfig;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// The display name of the Security Health Analytics custom module. This
  /// display name becomes the finding category for all findings that are
  /// returned by this custom module. The display name must be between 1 and
  /// 128 characters, start with a lowercase letter, and contain alphanumeric
  /// characters or underscores only.
  final pulumi.Input<String?>? displayName;
  /// The enablement state of the custom module.
  /// Possible values are: `ENABLED`, `DISABLED`.
  final pulumi.Input<String?>? enablementState;
  /// Numerical ID of the parent folder.
  final pulumi.Input<String> folder;
  /// Location ID of the parent organization. If not provided, 'global' will be used as the default location.
  final pulumi.Input<String?>? location;

  /// Creates a new [ManagementFolderSecurityHealthAnalyticsCustomModuleArgs].
  /// [customConfig] The user specified custom configuration for the module.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [displayName] The display name of the Security Health Analytics custom module. This
  /// [enablementState] The enablement state of the custom module.
  /// [folder] Numerical ID of the parent folder.
  /// [location] Location ID of the parent organization. If not provided, 'global' will be used as the default location.
  const ManagementFolderSecurityHealthAnalyticsCustomModuleArgs({
    this.customConfig,
    this.deletionPolicy,
    this.displayName,
    this.enablementState,
    required this.folder,
    this.location,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customConfig': ?pulumi.Input.mapOptionalInputValue<ManagementFolderSecurityHealthAnalyticsCustomModuleCustomConfig, Map<String, dynamic>>(customConfig, (value) => value.toMap()),
      'deletionPolicy': ?deletionPolicy,
      'displayName': ?displayName,
      'enablementState': ?enablementState,
      'folder': folder,
      'location': ?location,
    };
  }

  factory ManagementFolderSecurityHealthAnalyticsCustomModuleArgs.fromMap(Map<String, dynamic> map) {
    return ManagementFolderSecurityHealthAnalyticsCustomModuleArgs(
      customConfig: (() { final guardedValue = map['customConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagementFolderSecurityHealthAnalyticsCustomModuleCustomConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enablementState: (() { final guardedValue = map['enablementState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      folder: pulumi.Input.fromValue(map['folder'] as String),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
