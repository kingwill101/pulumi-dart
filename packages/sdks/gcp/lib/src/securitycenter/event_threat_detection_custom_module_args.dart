// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securitycenter_event_threat_detection_custom_module_event_threat_detection_custom_module_args_doc}
/// The set of arguments for EventThreatDetectionCustomModule.
/// {@endtemplate}
/// {@macro pulumi_securitycenter_event_threat_detection_custom_module_event_threat_detection_custom_module_args_doc}
class EventThreatDetectionCustomModuleArgs {
  /// Config for the module. For the resident module, its config value is defined at this level.
  /// For the inherited module, its config value is inherited from the ancestor module.
  final pulumi.Input<String> config;
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
  final pulumi.Input<String> enablementState;
  /// Numerical ID of the parent organization.
  final pulumi.Input<String> organization;
  /// Immutable. Type for the module. e.g. CONFIGURABLE_BAD_IP.
  final pulumi.Input<String> type;

  /// Creates a new [EventThreatDetectionCustomModuleArgs].
  /// [config] Config for the module. For the resident module, its config value is defined at this level.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [displayName] The human readable name to be displayed for the module.
  /// [enablementState] The state of enablement for the module at the given level of the hierarchy.
  /// [organization] Numerical ID of the parent organization.
  /// [type] Immutable. Type for the module. e.g. CONFIGURABLE_BAD_IP.
  const EventThreatDetectionCustomModuleArgs({
    required this.config,
    this.deletionPolicy,
    this.displayName,
    required this.enablementState,
    required this.organization,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': config,
      'deletionPolicy': ?deletionPolicy,
      'displayName': ?displayName,
      'enablementState': enablementState,
      'organization': organization,
      'type': type,
    };
  }

  factory EventThreatDetectionCustomModuleArgs.fromMap(Map<String, dynamic> map) {
    return EventThreatDetectionCustomModuleArgs(
      config: pulumi.Input.fromValue(map['config'] as String),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enablementState: pulumi.Input.fromValue(map['enablementState'] as String),
      organization: pulumi.Input.fromValue(map['organization'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
