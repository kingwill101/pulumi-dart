// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'team_stack_permission_scope.dart';

/// {@template pulumi_index_team_stack_permission_args_doc}
/// The set of arguments for TeamStackPermission.
/// {@endtemplate}
/// {@macro pulumi_index_team_stack_permission_args_doc}
class TeamStackPermissionArgs {
  /// The organization or the personal account name of the stack.
  final pulumi.Input<String> organization;
  /// Sets the permission level that this team will be granted to the stack.
  final pulumi.Input<TeamStackPermissionScope> permission;
  /// The project name for this stack.
  final pulumi.Input<String> project;
  /// The name of the stack that the team will be granted permissions to.
  final pulumi.Input<String> stack;
  /// The name of the team to grant this stack permissions to. This is not the display name.
  final pulumi.Input<String> team;

  /// Creates a new [TeamStackPermissionArgs].
  /// [organization] The organization or the personal account name of the stack.
  /// [permission] Sets the permission level that this team will be granted to the stack.
  /// [project] The project name for this stack.
  /// [stack] The name of the stack that the team will be granted permissions to.
  /// [team] The name of the team to grant this stack permissions to. This is not the display name.
  TeamStackPermissionArgs({
    required this.organization,
    required this.permission,
    required this.project,
    required this.stack,
    required this.team,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'organization': organization,
      'permission': pulumi.Input.mapInputValue<TeamStackPermissionScope, double>(permission, (value) => value.wireValue),
      'project': project,
      'stack': stack,
      'team': team,
    };
  }

  factory TeamStackPermissionArgs.fromMap(Map<String, dynamic> map) {
    return TeamStackPermissionArgs(
      organization: pulumi.Input.fromValue(map['organization'] as String),
      permission: pulumi.Input.fromValue(TeamStackPermissionScope.fromValue(map['permission']! as double)),
      project: pulumi.Input.fromValue(map['project'] as String),
      stack: pulumi.Input.fromValue(map['stack'] as String),
      team: pulumi.Input.fromValue(map['team'] as String),
    );
  }
}

