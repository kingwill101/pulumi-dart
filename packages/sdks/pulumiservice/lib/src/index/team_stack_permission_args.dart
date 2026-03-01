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
    required pulumi.Output<String> organization,
    required pulumi.Output<TeamStackPermissionScope> permission,
    required pulumi.Output<String> project,
    required pulumi.Output<String> stack,
    required pulumi.Output<String> team,
  }) :
      organization = pulumi.Input.asInput<String>(organization),
      permission = pulumi.Input.asInput<TeamStackPermissionScope>(permission),
      project = pulumi.Input.asInput<String>(project),
      stack = pulumi.Input.asInput<String>(stack),
      team = pulumi.Input.asInput<String>(team);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'organization': organization,
      'permission': pulumi.Input.mapInputValue<TeamStackPermissionScope, double>(permission, (value) => value.value),
      'project': project,
      'stack': stack,
      'team': team,
    };
  }

  factory TeamStackPermissionArgs.fromMap(Map<String, dynamic> map) {
    return TeamStackPermissionArgs(
      organization: pulumi.Output.create<String>(map['organization'] as String),
      permission: pulumi.Output.create<TeamStackPermissionScope>(TeamStackPermissionScope.fromValue(map['permission'] as double)),
      project: pulumi.Output.create<String>(map['project'] as String),
      stack: pulumi.Output.create<String>(map['stack'] as String),
      team: pulumi.Output.create<String>(map['team'] as String),
    );
  }
}

