// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'management_project_security_health_analytics_custom_module_custom_config.dart';

/// {@template pulumi_securitycenter_management_project_security_health_analytics_custom_module_management_project_security_health_analytics_custom_module_args_doc}
/// The set of arguments for ManagementProjectSecurityHealthAnalyticsCustomModule.
/// {@endtemplate}
/// {@macro pulumi_securitycenter_management_project_security_health_analytics_custom_module_management_project_security_health_analytics_custom_module_args_doc}
class ManagementProjectSecurityHealthAnalyticsCustomModuleArgs {
  /// The user specified custom configuration for the module.
  /// Structure is documented below.
  final pulumi.Input<ManagementProjectSecurityHealthAnalyticsCustomModuleCustomConfig>? customConfig;
  /// The display name of the Security Health Analytics custom module. This
  /// display name becomes the finding category for all findings that are
  /// returned by this custom module. The display name must be between 1 and
  /// 128 characters, start with a lowercase letter, and contain alphanumeric
  /// characters or underscores only.
  final pulumi.Input<String>? displayName;
  /// The enablement state of the custom module.
  /// Possible values are: `ENABLED`, `DISABLED`.
  final pulumi.Input<String>? enablementState;
  /// Location ID of the parent organization. If not provided, 'global' will be used as the default location.
  final pulumi.Input<String>? location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [ManagementProjectSecurityHealthAnalyticsCustomModuleArgs].
  /// [customConfig] The user specified custom configuration for the module.
  /// [displayName] The display name of the Security Health Analytics custom module. This
  /// [enablementState] The enablement state of the custom module.
  /// [location] Location ID of the parent organization. If not provided, 'global' will be used as the default location.
  /// [project] The ID of the project in which the resource belongs.
  ManagementProjectSecurityHealthAnalyticsCustomModuleArgs({
    this.customConfig,
    this.displayName,
    this.enablementState,
    this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customConfig': ?pulumi.Input.mapOptionalInputValue<ManagementProjectSecurityHealthAnalyticsCustomModuleCustomConfig, Map<String, dynamic>>(customConfig, (value) => value.toMap()),
      'displayName': ?displayName,
      'enablementState': ?enablementState,
      'location': ?location,
      'project': ?project,
    };
  }

  factory ManagementProjectSecurityHealthAnalyticsCustomModuleArgs.fromMap(Map<String, dynamic> map) {
    return ManagementProjectSecurityHealthAnalyticsCustomModuleArgs(
      customConfig: map['customConfig'] == null ? null : (ManagementProjectSecurityHealthAnalyticsCustomModuleCustomConfig.fromMap((map['customConfig']! as Map).cast<String, dynamic>())).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      enablementState: map['enablementState'] == null ? null : (map['enablementState']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

