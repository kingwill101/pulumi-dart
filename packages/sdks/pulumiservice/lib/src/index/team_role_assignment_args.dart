// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_team_role_assignment_args_doc}
/// The set of arguments for TeamRoleAssignment.
/// {@endtemplate}
/// {@macro pulumi_index_team_role_assignment_args_doc}
class TeamRoleAssignmentArgs {
  /// The Pulumi Cloud organization name.
  final pulumi.Input<String> organizationName;
  /// The ID of the custom role to assign.
  final pulumi.Input<String> roleId;
  /// The team name.
  final pulumi.Input<String> teamName;

  /// Creates a new [TeamRoleAssignmentArgs].
  /// [organizationName] The Pulumi Cloud organization name.
  /// [roleId] The ID of the custom role to assign.
  /// [teamName] The team name.
  const TeamRoleAssignmentArgs({
    required this.organizationName,
    required this.roleId,
    required this.teamName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'organizationName': organizationName,
      'roleId': roleId,
      'teamName': teamName,
    };
  }

  factory TeamRoleAssignmentArgs.fromMap(Map<String, dynamic> map) {
    return TeamRoleAssignmentArgs(
      organizationName: pulumi.Input.fromValue(map['organizationName'] as String),
      roleId: pulumi.Input.fromValue(map['roleId'] as String),
      teamName: pulumi.Input.fromValue(map['teamName'] as String),
    );
  }
}
