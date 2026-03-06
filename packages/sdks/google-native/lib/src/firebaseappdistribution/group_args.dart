// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_firebaseappdistribution_v1_group_args_doc}
/// The set of arguments for Group.
/// {@endtemplate}
/// {@macro pulumi_firebaseappdistribution_v1_group_args_doc}
class GroupArgs {
  /// The display name of the group.
  final pulumi.Input<String> displayName;
  /// Optional. The "alias" to use for the group, which will become the final component of the group's resource name. This value must be unique per project. The field is named `groupId` to comply with AIP guidance for user-specified IDs. This value should be 4-63 characters, and valid characters are `/a-z-/`. If not set, it will be generated based on the display name.
  final pulumi.Input<String>? groupId;
  /// The name of the group resource. Format: `projects/{project_number}/groups/{group_alias}`
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// Creates a new [GroupArgs].
  /// [displayName] The display name of the group.
  /// [groupId] Optional. The "alias" to use for the group, which will become the final component of the group's resource name. This value must be unique per project. The field is named `groupId` to comply with AIP guidance for user-specified IDs. This value should be 4-63 characters, and valid characters are `/a-z-/`. If not set, it will be generated based on the display name.
  /// [name] The name of the group resource. Format: `projects/{project_number}/groups/{group_alias}`
  /// [project] Optional.
  const GroupArgs({
    required this.displayName,
    this.groupId,
    this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': displayName,
      'groupId': ?groupId,
      'name': ?name,
      'project': ?project,
    };
  }

  factory GroupArgs.fromMap(Map<String, dynamic> map) {
    return GroupArgs(
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      groupId: (() { final guardedValue = map['groupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

