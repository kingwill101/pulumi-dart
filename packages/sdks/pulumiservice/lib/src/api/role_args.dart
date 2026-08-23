// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_api_teams_role_args_doc}
/// The set of arguments for Role.
/// {@endtemplate}
/// {@macro pulumi_api_teams_role_args_doc}
class RoleArgs {
  /// The organization name
  final pulumi.Input<String> orgName;
  /// The role identifier
  final pulumi.Input<String> roleID;
  /// The team name
  final pulumi.Input<String> teamName;

  /// Creates a new [RoleArgs].
  /// [orgName] The organization name
  /// [roleID] The role identifier
  /// [teamName] The team name
  const RoleArgs({
    required this.orgName,
    required this.roleID,
    required this.teamName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'orgName': orgName,
      'roleID': roleID,
      'teamName': teamName,
    };
  }

  factory RoleArgs.fromMap(Map<String, dynamic> map) {
    return RoleArgs(
      orgName: pulumi.Input.fromValue(map['orgName'] as String),
      roleID: pulumi.Input.fromValue(map['roleID'] as String),
      teamName: pulumi.Input.fromValue(map['teamName'] as String),
    );
  }
}
