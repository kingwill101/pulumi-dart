// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering CapabilityConfig resources.
class CapabilityConfigState {
  /// User-specified identifier of the capability config. Must be 6 to 30 characters,
  /// and contain only lowercase letters, numbers, and hyphens.
  final pulumi.Input<String?>? capabilityConfigId;
  /// The time when the capability config was created.
  final pulumi.Input<String?>? createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// User-defined name for the capability config. Must be between 4 and 30 characters.
  final pulumi.Input<String?>? displayName;
  /// An opaque tag indicating the current version of the capability config, used for concurrency control.
  final pulumi.Input<String?>? etag;
  /// The management project for the capability config. If unspecified, a project will be created automatically.
  /// Must be specified for project-scoped capability config.
  /// Format: `projects/{project_number}`.
  final pulumi.Input<String?>? managementProject;
  /// The identifier for the capability config.
  /// Format: `{parent}/capabilityConfigs/{capability_config_id}`.
  final pulumi.Input<String?>? name;
  /// The parent resource in which to create the capability config.
  /// Format: `folders/{folder_id}`, `organizations/{organization_id}`, or `projects/{project_number}`.
  final pulumi.Input<String?>? parent;
  /// The state of the capability config.
  final pulumi.Input<String?>? state;
  /// The capabilities enabled for the resource and its sub-tree.
  /// Possible values: "AGENT_MANAGEMENT".
  final pulumi.Input<List<String>?>? types;
  /// The time when the capability config was last updated.
  final pulumi.Input<String?>? updateTime;

  /// Creates a new [CapabilityConfigState].
  /// [capabilityConfigId] User-specified identifier of the capability config. Must be 6 to 30 characters,
  /// [createTime] The time when the capability config was created.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [displayName] User-defined name for the capability config. Must be between 4 and 30 characters.
  /// [etag] An opaque tag indicating the current version of the capability config, used for concurrency control.
  /// [managementProject] The management project for the capability config. If unspecified, a project will be created automatically.
  /// [name] The identifier for the capability config.
  /// [parent] The parent resource in which to create the capability config.
  /// [state] The state of the capability config.
  /// [types] The capabilities enabled for the resource and its sub-tree.
  /// [updateTime] The time when the capability config was last updated.
  const CapabilityConfigState({
    this.capabilityConfigId,
    this.createTime,
    this.deletionPolicy,
    this.displayName,
    this.etag,
    this.managementProject,
    this.name,
    this.parent,
    this.state,
    this.types,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capabilityConfigId': ?capabilityConfigId,
      'createTime': ?createTime,
      'deletionPolicy': ?deletionPolicy,
      'displayName': ?displayName,
      'etag': ?etag,
      'managementProject': ?managementProject,
      'name': ?name,
      'parent': ?parent,
      'state': ?state,
      'types': ?types,
      'updateTime': ?updateTime,
    };
  }

  factory CapabilityConfigState.fromMap(Map<String, dynamic> map) {
    return CapabilityConfigState(
      capabilityConfigId: (() { final guardedValue = map['capabilityConfigId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managementProject: (() { final guardedValue = map['managementProject']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parent: (() { final guardedValue = map['parent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      types: (() { final guardedValue = map['types']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
