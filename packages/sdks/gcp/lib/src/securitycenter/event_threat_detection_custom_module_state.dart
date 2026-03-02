// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering EventThreatDetectionCustomModule resources.
class EventThreatDetectionCustomModuleState {
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
  /// The resource name of the Event Threat Detection custom module.
  /// Its format is "organizations/{organization}/eventThreatDetectionSettings/customModules/{module}".
  final pulumi.Input<String>? name;
  /// Numerical ID of the parent organization.
  final pulumi.Input<String>? organization;
  /// Immutable. Type for the module. e.g. CONFIGURABLE_BAD_IP.
  final pulumi.Input<String>? type;
  /// The time at which the custom module was last updated.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and
  /// up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final pulumi.Input<String>? updateTime;

  /// Creates a new [EventThreatDetectionCustomModuleState].
  /// [config] Config for the module. For the resident module, its config value is defined at this level.
  /// [displayName] The human readable name to be displayed for the module.
  /// [enablementState] The state of enablement for the module at the given level of the hierarchy.
  /// [lastEditor] The editor that last updated the custom module
  /// [name] The resource name of the Event Threat Detection custom module.
  /// [organization] Numerical ID of the parent organization.
  /// [type] Immutable. Type for the module. e.g. CONFIGURABLE_BAD_IP.
  /// [updateTime] The time at which the custom module was last updated.
  EventThreatDetectionCustomModuleState({
    this.config,
    this.displayName,
    this.enablementState,
    this.lastEditor,
    this.name,
    this.organization,
    this.type,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': ?config,
      'displayName': ?displayName,
      'enablementState': ?enablementState,
      'lastEditor': ?lastEditor,
      'name': ?name,
      'organization': ?organization,
      'type': ?type,
      'updateTime': ?updateTime,
    };
  }

  factory EventThreatDetectionCustomModuleState.fromMap(Map<String, dynamic> map) {
    return EventThreatDetectionCustomModuleState(
      config: map['config'] == null ? null : (map['config'] as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      enablementState: map['enablementState'] == null ? null : (map['enablementState'] as String).input(),
      lastEditor: map['lastEditor'] == null ? null : (map['lastEditor'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      organization: map['organization'] == null ? null : (map['organization'] as String).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime'] as String).input(),
    );
  }
}

