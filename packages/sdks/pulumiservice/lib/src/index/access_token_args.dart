// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_access_token_args_doc}
/// The set of arguments for AccessToken.
/// {@endtemplate}
/// {@macro pulumi_index_access_token_args_doc}
class AccessTokenArgs {
  /// Description of the access token.
  final pulumi.Input<String> description;
  /// When the token expires, as an RFC 3339 date-time such as `2027-06-30T17:00:00Z`. Omit it for a token that never expires. Pulumi Cloud rejects an expiry that is in the past or more than two years away.
  final pulumi.Input<String?>? expires;

  /// Creates a new [AccessTokenArgs].
  /// [description] Description of the access token.
  /// [expires] When the token expires, as an RFC 3339 date-time such as `2027-06-30T17:00:00Z`. Omit it for a token that never expires. Pulumi Cloud rejects an expiry that is in the past or more than two years away.
  const AccessTokenArgs({
    required this.description,
    this.expires,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'expires': ?expires,
    };
  }

  factory AccessTokenArgs.fromMap(Map<String, dynamic> map) {
    return AccessTokenArgs(
      description: pulumi.Input.fromValue(map['description'] as String),
      expires: (() { final guardedValue = map['expires']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
