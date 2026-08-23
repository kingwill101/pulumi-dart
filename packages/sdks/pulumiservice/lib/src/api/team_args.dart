// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_api_teams_team_args_doc}
/// The set of arguments for Team.
/// {@endtemplate}
/// {@macro pulumi_api_teams_team_args_doc}
class TeamArgs {
  /// The description
  final pulumi.Input<String> description;
  /// The display name
  final pulumi.Input<String> displayName;
  /// The name
  final pulumi.Input<String> name;
  /// The organization name
  final pulumi.Input<String> orgName;

  /// Creates a new [TeamArgs].
  /// [description] The description
  /// [displayName] The display name
  /// [name] The name
  /// [orgName] The organization name
  const TeamArgs({
    required this.description,
    required this.displayName,
    required this.name,
    required this.orgName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'displayName': displayName,
      'name': name,
      'orgName': orgName,
    };
  }

  factory TeamArgs.fromMap(Map<String, dynamic> map) {
    return TeamArgs(
      description: pulumi.Input.fromValue(map['description'] as String),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      orgName: pulumi.Input.fromValue(map['orgName'] as String),
    );
  }
}
