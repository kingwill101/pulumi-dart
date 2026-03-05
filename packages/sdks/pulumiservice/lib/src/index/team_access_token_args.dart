// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_team_access_token_args_doc}
/// The set of arguments for TeamAccessToken.
/// {@endtemplate}
/// {@macro pulumi_index_team_access_token_args_doc}
class TeamAccessTokenArgs {
  /// Optional. Team description.
  final pulumi.Input<String>? description;
  /// The name for the token. This must be unique amongst all machine tokens within your organization.
  final pulumi.Input<String> name;
  /// The organization's name.
  final pulumi.Input<String> organizationName;
  /// The team name.
  final pulumi.Input<String> teamName;

  /// Creates a new [TeamAccessTokenArgs].
  /// [description] Optional. Team description.
  /// [name] The name for the token. This must be unique amongst all machine tokens within your organization.
  /// [organizationName] The organization's name.
  /// [teamName] The team name.
  TeamAccessTokenArgs({
    this.description,
    required this.name,
    required this.organizationName,
    required this.teamName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'name': name,
      'organizationName': organizationName,
      'teamName': teamName,
    };
  }

  factory TeamAccessTokenArgs.fromMap(Map<String, dynamic> map) {
    return TeamAccessTokenArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      organizationName: pulumi.Input.fromValue(map['organizationName'] as String),
      teamName: pulumi.Input.fromValue(map['teamName'] as String),
    );
  }
}

