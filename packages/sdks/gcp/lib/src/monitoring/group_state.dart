// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Group resources.
class GroupState {
  /// A user-assigned name for this group, used only for display
  /// purposes.
  final pulumi.Input<String>? displayName;
  /// The filter used to determine which monitored resources
  /// belong to this group.
  final pulumi.Input<String>? filter;
  /// If true, the members of this group are considered to be a
  /// cluster. The system can perform additional analysis on
  /// groups that are clusters.
  final pulumi.Input<bool>? isCluster;
  /// A unique identifier for this group. The format is
  /// "projects/{project_id_or_number}/groups/{group_id}".
  final pulumi.Input<String>? name;
  /// The name of the group's parent, if it has one. The format is
  /// "projects/{project_id_or_number}/groups/{group_id}". For
  /// groups with no parent, parentName is the empty string, "".
  final pulumi.Input<String>? parentName;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [GroupState].
  /// [displayName] A user-assigned name for this group, used only for display
  /// [filter] The filter used to determine which monitored resources
  /// [isCluster] If true, the members of this group are considered to be a
  /// [name] A unique identifier for this group. The format is
  /// [parentName] The name of the group's parent, if it has one. The format is
  /// [project] The ID of the project in which the resource belongs.
  GroupState({
    this.displayName,
    this.filter,
    this.isCluster,
    this.name,
    this.parentName,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
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
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      filter: map['filter'] == null ? null : (map['filter']! as String).input(),
      isCluster: map['isCluster'] == null ? null : (map['isCluster']! as bool).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      parentName: map['parentName'] == null ? null : (map['parentName']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

