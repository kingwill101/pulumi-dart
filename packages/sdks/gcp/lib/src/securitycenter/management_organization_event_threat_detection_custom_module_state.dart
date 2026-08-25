// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ManagementOrganizationEventThreatDetectionCustomModule resources.
class ManagementOrganizationEventThreatDetectionCustomModuleState {
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
  /// The editor that last updated the custom module
  final pulumi.Input<String?>? lastEditor;
  /// Location ID of the parent organization. Only global is supported at the moment.
  final pulumi.Input<String?>? location;
  /// The resource name of the Event Threat Detection custom module.
  /// Its format is "organizations/{organization}/locations/{location}/eventThreatDetectionCustomModules/{eventThreatDetectionCustomModule}".
  final pulumi.Input<String?>? name;
  /// Numerical ID of the parent organization.
  final pulumi.Input<String?>? organization;
  /// Immutable. Type for the module. e.g. CONFIGURABLE_BAD_IP.
  final pulumi.Input<String?>? type;
  /// The time at which the custom module was last updated.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and
  /// up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final pulumi.Input<String?>? updateTime;

  /// Creates a new [ManagementOrganizationEventThreatDetectionCustomModuleState].
  /// [config] Config for the module. For the resident module, its config value is defined at this level.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [displayName] The human readable name to be displayed for the module.
  /// [enablementState] The state of enablement for the module at the given level of the hierarchy.
  /// [lastEditor] The editor that last updated the custom module
  /// [location] Location ID of the parent organization. Only global is supported at the moment.
  /// [name] The resource name of the Event Threat Detection custom module.
  /// [organization] Numerical ID of the parent organization.
  /// [type] Immutable. Type for the module. e.g. CONFIGURABLE_BAD_IP.
  /// [updateTime] The time at which the custom module was last updated.
  const ManagementOrganizationEventThreatDetectionCustomModuleState({
    this.config,
    this.deletionPolicy,
    this.displayName,
    this.enablementState,
    this.lastEditor,
    this.location,
    this.name,
    this.organization,
    this.type,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': ?config,
      'deletionPolicy': ?deletionPolicy,
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
      config: (() { final guardedValue = map['config']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enablementState: (() { final guardedValue = map['enablementState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastEditor: (() { final guardedValue = map['lastEditor']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      organization: (() { final guardedValue = map['organization']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
