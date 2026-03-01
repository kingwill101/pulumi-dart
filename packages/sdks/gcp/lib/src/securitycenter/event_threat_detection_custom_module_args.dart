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
  /// The human readable name to be displayed for the module.
  final pulumi.Input<String>? displayName;
  /// The state of enablement for the module at the given level of the hierarchy.
  /// Possible values are: `ENABLED`, `DISABLED`.
  final pulumi.Input<String> enablementState;
  /// Numerical ID of the parent organization.
  final pulumi.Input<String> organization;
  /// Immutable. Type for the module. e.g. CONFIGURABLE_BAD_IP.
  final pulumi.Input<String> type;

  /// Creates a new [EventThreatDetectionCustomModuleArgs].
  /// [config] Config for the module. For the resident module, its config value is defined at this level.
  /// [displayName] The human readable name to be displayed for the module.
  /// [enablementState] The state of enablement for the module at the given level of the hierarchy.
  /// [organization] Numerical ID of the parent organization.
  /// [type] Immutable. Type for the module. e.g. CONFIGURABLE_BAD_IP.
  EventThreatDetectionCustomModuleArgs({
    required pulumi.Output<String> config,
    pulumi.Output<String>? displayName,
    required pulumi.Output<String> enablementState,
    required pulumi.Output<String> organization,
    required pulumi.Output<String> type,
  }) :
      config = pulumi.Input.asInput<String>(config),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      enablementState = pulumi.Input.asInput<String>(enablementState),
      organization = pulumi.Input.asInput<String>(organization),
      type = pulumi.Input.asInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': config,
      'displayName': ?displayName,
      'enablementState': enablementState,
      'organization': organization,
      'type': type,
    };
  }

  factory EventThreatDetectionCustomModuleArgs.fromMap(Map<String, dynamic> map) {
    return EventThreatDetectionCustomModuleArgs(
      config: pulumi.Output.create<String>(map['config'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      enablementState: pulumi.Output.create<String>(map['enablementState'] as String),
      organization: pulumi.Output.create<String>(map['organization'] as String),
      type: pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

