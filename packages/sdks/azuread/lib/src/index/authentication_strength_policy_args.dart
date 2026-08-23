// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_authentication_strength_policy_authentication_strength_policy_args_doc}
/// The set of arguments for AuthenticationStrengthPolicy.
/// {@endtemplate}
/// {@macro pulumi_index_authentication_strength_policy_authentication_strength_policy_args_doc}
class AuthenticationStrengthPolicyArgs {
  /// List of allowed authentication methods for this authentication strength policy.
  final pulumi.Input<List<String>> allowedCombinations;
  /// The description for this authentication strength policy.
  final pulumi.Input<String>? description;
  /// The friendly name for this authentication strength policy.
  final pulumi.Input<String> displayName;

  /// Creates a new [AuthenticationStrengthPolicyArgs].
  /// [allowedCombinations] List of allowed authentication methods for this authentication strength policy.
  /// [description] The description for this authentication strength policy.
  /// [displayName] The friendly name for this authentication strength policy.
  const AuthenticationStrengthPolicyArgs({
    required this.allowedCombinations,
    this.description,
    required this.displayName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedCombinations': allowedCombinations,
      'description': ?description,
      'displayName': displayName,
    };
  }

  factory AuthenticationStrengthPolicyArgs.fromMap(Map<String, dynamic> map) {
    return AuthenticationStrengthPolicyArgs(
      allowedCombinations: pulumi.Input.fromValue((map['allowedCombinations'] as List).cast<String>()),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
    );
  }
}
