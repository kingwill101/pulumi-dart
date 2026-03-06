// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_permission.dart';

/// {@template pulumi_index_team_environment_permission_args_doc}
/// The set of arguments for TeamEnvironmentPermission.
/// {@endtemplate}
/// {@macro pulumi_index_team_environment_permission_args_doc}
class TeamEnvironmentPermissionArgs {
  /// Environment name.
  final pulumi.Input<String> environment;
  /// The maximum duration for which members of this team may open the environment.
  final pulumi.Input<String>? maxOpenDuration;
  /// Organization name.
  final pulumi.Input<String> organization;
  /// Which permission level to grant to the specified team.
  final pulumi.Input<EnvironmentPermission> permission;
  /// Project name.
  final pulumi.Input<String>? project;
  /// Team name.
  final pulumi.Input<String> team;

  /// Creates a new [TeamEnvironmentPermissionArgs].
  /// [environment] Environment name.
  /// [maxOpenDuration] The maximum duration for which members of this team may open the environment.
  /// [organization] Organization name.
  /// [permission] Which permission level to grant to the specified team.
  /// [project] Project name.
  /// [team] Team name.
  const TeamEnvironmentPermissionArgs({
    required this.environment,
    this.maxOpenDuration,
    required this.organization,
    required this.permission,
    this.project,
    required this.team,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environment': environment,
      'maxOpenDuration': ?maxOpenDuration,
      'organization': organization,
      'permission': pulumi.Input.mapInputValue<EnvironmentPermission, String>(permission, (value) => value.wireValue),
      'project': ?project,
      'team': team,
    };
  }

  factory TeamEnvironmentPermissionArgs.fromMap(Map<String, dynamic> map) {
    return TeamEnvironmentPermissionArgs(
      environment: pulumi.Input.fromValue(map['environment'] as String),
      maxOpenDuration: (() { final guardedValue = map['maxOpenDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      organization: pulumi.Input.fromValue(map['organization'] as String),
      permission: pulumi.Input.fromValue(EnvironmentPermission.fromValue(map['permission']! as String)),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      team: pulumi.Input.fromValue(map['team'] as String),
    );
  }
}

