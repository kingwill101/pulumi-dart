// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_team_access_token_args_doc}
/// The set of arguments for TeamAccessToken.
/// {@endtemplate}
/// {@macro pulumi_index_team_access_token_args_doc}
class TeamAccessTokenArgs {
  /// A description of the token.
  final pulumi.Input<String?>? description;
  /// When the token expires, as an RFC 3339 date-time such as `2027-06-30T17:00:00Z`. Omit it for a token that never expires. Pulumi Cloud rejects an expiry that is in the past, more than two years away, or beyond the organization's maximum token lifetime.
  final pulumi.Input<String?>? expires;
  /// The name for the token, up to 40 characters. Organization and team tokens share one set of names per organization, and Pulumi Cloud never frees a deleted token's name, so the name must not have been used by any other token in the organization.
  ///
  /// If omitted, Pulumi generates a name from the resource's logical name plus a random suffix, or follows the stack's [autonaming configuration](https://www.pulumi.com/docs/iac/concepts/resources/names/#autonaming). A replacement gets a new name. Removing `name` from an existing token keeps its current name until the next replacement.
  ///
  /// Every input on this resource triggers a replacement, so when `name` is set explicitly, changing any other input fails with `409 Conflict: token name already exists`. Omit `name`, or change it along with the other input.
  final pulumi.Input<String?>? name;
  /// The organization's name.
  final pulumi.Input<String> organizationName;
  /// The team name.
  final pulumi.Input<String> teamName;

  /// Creates a new [TeamAccessTokenArgs].
  /// [description] A description of the token.
  /// [expires] When the token expires, as an RFC 3339 date-time such as `2027-06-30T17:00:00Z`. Omit it for a token that never expires. Pulumi Cloud rejects an expiry that is in the past, more than two years away, or beyond the organization's maximum token lifetime.
  /// [name] The name for the token, up to 40 characters. Organization and team tokens share one set of names per organization, and Pulumi Cloud never frees a deleted token's name, so the name must not have been used by any other token in the organization.
  /// [organizationName] The organization's name.
  /// [teamName] The team name.
  const TeamAccessTokenArgs({
    this.description,
    this.expires,
    this.name,
    required this.organizationName,
    required this.teamName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'expires': ?expires,
      'name': ?name,
      'organizationName': organizationName,
      'teamName': teamName,
    };
  }

  factory TeamAccessTokenArgs.fromMap(Map<String, dynamic> map) {
    return TeamAccessTokenArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expires: (() { final guardedValue = map['expires']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      organizationName: pulumi.Input.fromValue(map['organizationName'] as String),
      teamName: pulumi.Input.fromValue(map['teamName'] as String),
    );
  }
}
