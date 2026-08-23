// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_api_tokens_personal_token_args_doc}
/// The set of arguments for PersonalToken.
/// {@endtemplate}
/// {@macro pulumi_api_tokens_personal_token_args_doc}
class PersonalTokenArgs {
  /// The description
  final pulumi.Input<String> description;
  /// The expiration time
  final pulumi.Input<int> expires;
  /// Tracks the context that triggered token creation (e.g., redirect URL or referral source)
  final pulumi.Input<String>? reason;

  /// Creates a new [PersonalTokenArgs].
  /// [description] The description
  /// [expires] The expiration time
  /// [reason] Tracks the context that triggered token creation (e.g., redirect URL or referral source)
  const PersonalTokenArgs({
    required this.description,
    required this.expires,
    this.reason,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'expires': expires,
      'reason': ?reason,
    };
  }

  factory PersonalTokenArgs.fromMap(Map<String, dynamic> map) {
    return PersonalTokenArgs(
      description: pulumi.Input.fromValue(map['description'] as String),
      expires: pulumi.Input.fromValue(map['expires'] as int),
      reason: (() { final guardedValue = map['reason']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
