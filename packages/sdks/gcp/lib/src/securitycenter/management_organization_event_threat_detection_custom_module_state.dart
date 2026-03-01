// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ManagementOrganizationEventThreatDetectionCustomModule resources.
class ManagementOrganizationEventThreatDetectionCustomModuleState {
  /// Config for the module. For the resident module, its config value is defined at this level.
  /// For the inherited module, its config value is inherited from the ancestor module.
  final pulumi.Input<String>? config;
  /// The human readable name to be displayed for the module.
  final pulumi.Input<String>? displayName;
  /// The state of enablement for the module at the given level of the hierarchy.
  /// Possible values are: `ENABLED`, `DISABLED`.
  final pulumi.Input<String>? enablementState;
  /// The editor that last updated the custom module
  final pulumi.Input<String>? lastEditor;
  /// Location ID of the parent organization. Only global is supported at the moment.
  final pulumi.Input<String>? location;
  /// The resource name of the Event Threat Detection custom module.
  /// Its format is "organizations/{organization}/locations/{location}/eventThreatDetectionCustomModules/{eventThreatDetectionCustomModule}".
  final pulumi.Input<String>? name;
  /// Numerical ID of the parent organization.
  final pulumi.Input<String>? organization;
  /// Immutable. Type for the module. e.g. CONFIGURABLE_BAD_IP.
  final pulumi.Input<String>? type;
  /// The time at which the custom module was last updated.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and
  /// up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final pulumi.Input<String>? updateTime;

  /// Creates a new [ManagementOrganizationEventThreatDetectionCustomModuleState].
  /// [config] Config for the module. For the resident module, its config value is defined at this level.
  /// [displayName] The human readable name to be displayed for the module.
  /// [enablementState] The state of enablement for the module at the given level of the hierarchy.
  /// [lastEditor] The editor that last updated the custom module
  /// [location] Location ID of the parent organization. Only global is supported at the moment.
  /// [name] The resource name of the Event Threat Detection custom module.
  /// [organization] Numerical ID of the parent organization.
  /// [type] Immutable. Type for the module. e.g. CONFIGURABLE_BAD_IP.
  /// [updateTime] The time at which the custom module was last updated.
  ManagementOrganizationEventThreatDetectionCustomModuleState({
    pulumi.Output<String>? config,
    pulumi.Output<String>? displayName,
    pulumi.Output<String>? enablementState,
    pulumi.Output<String>? lastEditor,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? organization,
    pulumi.Output<String>? type,
    pulumi.Output<String>? updateTime,
  }) :
      config = pulumi.Input.asOptionalInput<String>(config),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      enablementState = pulumi.Input.asOptionalInput<String>(enablementState),
      lastEditor = pulumi.Input.asOptionalInput<String>(lastEditor),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      organization = pulumi.Input.asOptionalInput<String>(organization),
      type = pulumi.Input.asOptionalInput<String>(type),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': ?config,
      'displayName': ?displayName,
      'enablementState': ?enablementState,
      'lastEditor': ?lastEditor,
      'location': ?location,
      'name': ?name,
      'organization': ?organization,
      'type': ?type,
      'updateTime': ?updateTime,
    };
  }

  factory ManagementOrganizationEventThreatDetectionCustomModuleState.fromMap(Map<String, dynamic> map) {
    return ManagementOrganizationEventThreatDetectionCustomModuleState(
      config: map['config'] == null ? null : pulumi.Output.create<String>(map['config'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      enablementState: map['enablementState'] == null ? null : pulumi.Output.create<String>(map['enablementState'] as String),
      lastEditor: map['lastEditor'] == null ? null : pulumi.Output.create<String>(map['lastEditor'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      organization: map['organization'] == null ? null : pulumi.Output.create<String>(map['organization'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

