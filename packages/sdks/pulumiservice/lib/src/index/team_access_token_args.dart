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
    pulumi.Output<String>? description,
    required pulumi.Output<String> name,
    required pulumi.Output<String> organizationName,
    required pulumi.Output<String> teamName,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asInput<String>(name),
      organizationName = pulumi.Input.asInput<String>(organizationName),
      teamName = pulumi.Input.asInput<String>(teamName);

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
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      name: pulumi.Output.create<String>(map['name'] as String),
      organizationName: pulumi.Output.create<String>(map['organizationName'] as String),
      teamName: pulumi.Output.create<String>(map['teamName'] as String),
    );
  }
}

