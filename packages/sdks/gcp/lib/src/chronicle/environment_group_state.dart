// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering EnvironmentGroup resources.
class EnvironmentGroupState {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// The EnvironmentGroup description.
  /// This value is optional. This value should be up to
  /// 250 characters, and valid characters are /a-z-/.
  final pulumi.Input<String?>? description;
  /// The group name.
  final pulumi.Input<String?>? displayName;
  /// Id of the environment group record.
  final pulumi.Input<String?>? environmentGroupId;
  /// The environment IDs for the group.
  final pulumi.Input<List<String>?>? environmentsIds;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String?>? instance;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String?>? location;
  /// Identifier. The resource name of the environment group.
  /// Format:
  /// projects/{project}/locations/{location}/instances/{instance}/environmentGroups/{environment_group}
  final pulumi.Input<String?>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;

  /// Creates a new [EnvironmentGroupState].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] The EnvironmentGroup description.
  /// [displayName] The group name.
  /// [environmentGroupId] Id of the environment group record.
  /// [environmentsIds] The environment IDs for the group.
  /// [instance] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [name] Identifier. The resource name of the environment group.
  /// [project] The ID of the project in which the resource belongs.
  const EnvironmentGroupState({
    this.deletionPolicy,
    this.description,
    this.displayName,
    this.environmentGroupId,
    this.environmentsIds,
    this.instance,
    this.location,
    this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'displayName': ?displayName,
      'environmentGroupId': ?environmentGroupId,
      'environmentsIds': ?environmentsIds,
      'instance': ?instance,
      'location': ?location,
      'name': ?name,
      'project': ?project,
    };
  }

  factory EnvironmentGroupState.fromMap(Map<String, dynamic> map) {
    return EnvironmentGroupState(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      environmentGroupId: (() { final guardedValue = map['environmentGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      environmentsIds: (() { final guardedValue = map['environmentsIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      instance: (() { final guardedValue = map['instance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
