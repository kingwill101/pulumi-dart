// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Group resources.
class GroupState {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// A user-assigned name for this group, used only for display
  /// purposes.
  final pulumi.Input<String?>? displayName;
  /// The filter used to determine which monitored resources
  /// belong to this group.
  final pulumi.Input<String?>? filter;
  /// If true, the members of this group are considered to be a
  /// cluster. The system can perform additional analysis on
  /// groups that are clusters.
  final pulumi.Input<bool?>? isCluster;
  /// A unique identifier for this group. The format is
  /// "projects/{project_id_or_number}/groups/{group_id}".
  final pulumi.Input<String?>? name;
  /// The name of the group's parent, if it has one. The format is
  /// "projects/{project_id_or_number}/groups/{group_id}". For
  /// groups with no parent, parentName is the empty string, "".
  final pulumi.Input<String?>? parentName;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;

  /// Creates a new [GroupState].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [displayName] A user-assigned name for this group, used only for display
  /// [filter] The filter used to determine which monitored resources
  /// [isCluster] If true, the members of this group are considered to be a
  /// [name] A unique identifier for this group. The format is
  /// [parentName] The name of the group's parent, if it has one. The format is
  /// [project] The ID of the project in which the resource belongs.
  const GroupState({
    this.deletionPolicy,
    this.displayName,
    this.filter,
    this.isCluster,
    this.name,
    this.parentName,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'displayName': ?displayName,
      'filter': ?filter,
      'isCluster': ?isCluster,
      'name': ?name,
      'parentName': ?parentName,
      'project': ?project,
    };
  }

  factory GroupState.fromMap(Map<String, dynamic> map) {
    return GroupState(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isCluster: (() { final guardedValue = map['isCluster']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parentName: (() { final guardedValue = map['parentName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
