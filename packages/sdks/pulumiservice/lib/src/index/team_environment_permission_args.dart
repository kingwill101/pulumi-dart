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
  TeamEnvironmentPermissionArgs({
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
      'permission': pulumi.Input.mapInputValue<EnvironmentPermission, String>(permission, (value) => value.value),
      'project': ?project,
      'team': team,
    };
  }

  factory TeamEnvironmentPermissionArgs.fromMap(Map<String, dynamic> map) {
    return TeamEnvironmentPermissionArgs(
      environment: (map['environment'] as String).input(),
      maxOpenDuration: map['maxOpenDuration'] == null ? null : (map['maxOpenDuration']! as String).input(),
      organization: (map['organization'] as String).input(),
      permission: (EnvironmentPermission.fromValue(map['permission'] as String)).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      team: (map['team'] as String).input(),
    );
  }
}

