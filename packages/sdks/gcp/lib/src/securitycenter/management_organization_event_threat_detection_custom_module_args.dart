// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securitycenter_management_organization_event_threat_detection_custom_module_management_organization_event_threat_detection_custom_module_args_doc}
/// The set of arguments for ManagementOrganizationEventThreatDetectionCustomModule.
/// {@endtemplate}
/// {@macro pulumi_securitycenter_management_organization_event_threat_detection_custom_module_management_organization_event_threat_detection_custom_module_args_doc}
class ManagementOrganizationEventThreatDetectionCustomModuleArgs {
  /// Config for the module. For the resident module, its config value is defined at this level.
  /// For the inherited module, its config value is inherited from the ancestor module.
  final pulumi.Input<String?>? config;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// The human readable name to be displayed for the module.
  final pulumi.Input<String?>? displayName;
  /// The state of enablement for the module at the given level of the hierarchy.
  /// Possible values are: `ENABLED`, `DISABLED`.
  final pulumi.Input<String?>? enablementState;
  /// Location ID of the parent organization. Only global is supported at the moment.
  final pulumi.Input<String?>? location;
  /// Numerical ID of the parent organization.
  final pulumi.Input<String> organization;
  /// Immutable. Type for the module. e.g. CONFIGURABLE_BAD_IP.
  final pulumi.Input<String?>? type;

  /// Creates a new [ManagementOrganizationEventThreatDetectionCustomModuleArgs].
  /// [config] Config for the module. For the resident module, its config value is defined at this level.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [displayName] The human readable name to be displayed for the module.
  /// [enablementState] The state of enablement for the module at the given level of the hierarchy.
  /// [location] Location ID of the parent organization. Only global is supported at the moment.
  /// [organization] Numerical ID of the parent organization.
  /// [type] Immutable. Type for the module. e.g. CONFIGURABLE_BAD_IP.
  const ManagementOrganizationEventThreatDetectionCustomModuleArgs({
    this.config,
    this.deletionPolicy,
    this.displayName,
    this.enablementState,
    this.location,
    required this.organization,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': ?config,
      'deletionPolicy': ?deletionPolicy,
      'displayName': ?displayName,
      'enablementState': ?enablementState,
      'location': ?location,
      'organization': organization,
      'type': ?type,
    };
  }

  factory ManagementOrganizationEventThreatDetectionCustomModuleArgs.fromMap(Map<String, dynamic> map) {
    return ManagementOrganizationEventThreatDetectionCustomModuleArgs(
      config: (() { final guardedValue = map['config']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enablementState: (() { final guardedValue = map['enablementState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      organization: pulumi.Input.fromValue(map['organization'] as String),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
