// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_monitoring_v3_group_args_doc}
/// The set of arguments for Group.
/// {@endtemplate}
/// {@macro pulumi_monitoring_v3_group_args_doc}
class GroupArgs {
  /// A user-assigned name for this group, used only for display purposes.
  final pulumi.Input<String>? displayName;
  /// The filter used to determine which monitored resources belong to this group.
  final pulumi.Input<String>? filter;
  /// If true, the members of this group are considered to be a cluster. The system can perform additional analysis on groups that are clusters.
  final pulumi.Input<bool>? isCluster;
  /// The name of the group's parent, if it has one. The format is: projects/[PROJECT_ID_OR_NUMBER]/groups/[GROUP_ID] For groups with no parent, parent_name is the empty string, "".
  final pulumi.Input<String>? parentName;
  final pulumi.Input<String>? project;

  /// Creates a new [GroupArgs].
  /// [displayName] A user-assigned name for this group, used only for display purposes.
  /// [filter] The filter used to determine which monitored resources belong to this group.
  /// [isCluster] If true, the members of this group are considered to be a cluster. The system can perform additional analysis on groups that are clusters.
  /// [parentName] The name of the group's parent, if it has one. The format is: projects/[PROJECT_ID_OR_NUMBER]/groups/[GROUP_ID] For groups with no parent, parent_name is the empty string, "".
  /// [project] Optional.
  GroupArgs({
    this.displayName,
    this.filter,
    this.isCluster,
    this.parentName,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'filter': ?filter,
      'isCluster': ?isCluster,
      'parentName': ?parentName,
      'project': ?project,
    };
  }

  factory GroupArgs.fromMap(Map<String, dynamic> map) {
    return GroupArgs(
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isCluster: (() { final guardedValue = map['isCluster']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      parentName: (() { final guardedValue = map['parentName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

