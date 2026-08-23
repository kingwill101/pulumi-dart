// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_api_tokens_team_token_args_doc}
/// The set of arguments for TeamToken.
/// {@endtemplate}
/// {@macro pulumi_api_tokens_team_token_args_doc}
class TeamTokenArgs {
  /// The description
  final pulumi.Input<String> description;
  /// The expiration time
  final pulumi.Input<int> expires;
  /// The name
  final pulumi.Input<String> name;
  /// The organization name
  final pulumi.Input<String> orgName;
  /// Audit log reason for creating this token
  final pulumi.Input<String>? reason;
  /// The team name
  final pulumi.Input<String> teamName;

  /// Creates a new [TeamTokenArgs].
  /// [description] The description
  /// [expires] The expiration time
  /// [name] The name
  /// [orgName] The organization name
  /// [reason] Audit log reason for creating this token
  /// [teamName] The team name
  const TeamTokenArgs({
    required this.description,
    required this.expires,
    required this.name,
    required this.orgName,
    this.reason,
    required this.teamName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'expires': expires,
      'name': name,
      'orgName': orgName,
      'reason': ?reason,
      'teamName': teamName,
    };
  }

  factory TeamTokenArgs.fromMap(Map<String, dynamic> map) {
    return TeamTokenArgs(
      description: pulumi.Input.fromValue(map['description'] as String),
      expires: pulumi.Input.fromValue(map['expires'] as int),
      name: pulumi.Input.fromValue(map['name'] as String),
      orgName: pulumi.Input.fromValue(map['orgName'] as String),
      reason: (() { final guardedValue = map['reason']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      teamName: pulumi.Input.fromValue(map['teamName'] as String),
    );
  }
}
