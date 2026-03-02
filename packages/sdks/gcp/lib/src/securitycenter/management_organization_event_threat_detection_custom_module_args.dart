// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securitycenter_management_organization_event_threat_detection_custom_module_management_organization_event_threat_detection_custom_module_args_doc}
/// The set of arguments for ManagementOrganizationEventThreatDetectionCustomModule.
/// {@endtemplate}
/// {@macro pulumi_securitycenter_management_organization_event_threat_detection_custom_module_management_organization_event_threat_detection_custom_module_args_doc}
class ManagementOrganizationEventThreatDetectionCustomModuleArgs {
  /// Config for the module. For the resident module, its config value is defined at this level.
  /// For the inherited module, its config value is inherited from the ancestor module.
  final pulumi.Input<String>? config;
  /// The human readable name to be displayed for the module.
  final pulumi.Input<String>? displayName;
  /// The state of enablement for the module at the given level of the hierarchy.
  /// Possible values are: `ENABLED`, `DISABLED`.
  final pulumi.Input<String>? enablementState;
  /// Location ID of the parent organization. Only global is supported at the moment.
  final pulumi.Input<String>? location;
  /// Numerical ID of the parent organization.
  final pulumi.Input<String> organization;
  /// Immutable. Type for the module. e.g. CONFIGURABLE_BAD_IP.
  final pulumi.Input<String>? type;

  /// Creates a new [ManagementOrganizationEventThreatDetectionCustomModuleArgs].
  /// [config] Config for the module. For the resident module, its config value is defined at this level.
  /// [displayName] The human readable name to be displayed for the module.
  /// [enablementState] The state of enablement for the module at the given level of the hierarchy.
  /// [location] Location ID of the parent organization. Only global is supported at the moment.
  /// [organization] Numerical ID of the parent organization.
  /// [type] Immutable. Type for the module. e.g. CONFIGURABLE_BAD_IP.
  ManagementOrganizationEventThreatDetectionCustomModuleArgs({
    this.config,
    this.displayName,
    this.enablementState,
    this.location,
    required this.organization,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': ?config,
      'displayName': ?displayName,
      'enablementState': ?enablementState,
      'location': ?location,
      'organization': organization,
      'type': ?type,
    };
  }

  factory ManagementOrganizationEventThreatDetectionCustomModuleArgs.fromMap(Map<String, dynamic> map) {
    return ManagementOrganizationEventThreatDetectionCustomModuleArgs(
      config: map['config'] == null ? null : (map['config'] as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      enablementState: map['enablementState'] == null ? null : (map['enablementState'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      organization: (map['organization'] as String).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
    );
  }
}

