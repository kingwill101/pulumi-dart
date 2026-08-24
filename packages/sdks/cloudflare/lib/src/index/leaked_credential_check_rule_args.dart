// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_leaked_credential_check_rule_leaked_credential_check_rule_args_doc}
/// The set of arguments for LeakedCredentialCheckRule.
/// {@endtemplate}
/// {@macro pulumi_index_leaked_credential_check_rule_leaked_credential_check_rule_args_doc}
class LeakedCredentialCheckRuleArgs {
  /// Defines ehe ruleset expression to use in matching the password in a request.
  final pulumi.Input<String?>? password;
  /// Defines the ruleset expression to use in matching the username in a request.
  final pulumi.Input<String?>? username;
  /// Defines an identifier.
  final pulumi.Input<String> zoneId;

  /// Creates a new [LeakedCredentialCheckRuleArgs].
  /// [password] Defines ehe ruleset expression to use in matching the password in a request.
  /// [username] Defines the ruleset expression to use in matching the username in a request.
  /// [zoneId] Defines an identifier.
  const LeakedCredentialCheckRuleArgs({
    this.password,
    this.username,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'password': ?password,
      'username': ?username,
      'zoneId': zoneId,
    };
  }

  factory LeakedCredentialCheckRuleArgs.fromMap(Map<String, dynamic> map) {
    return LeakedCredentialCheckRuleArgs(
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      username: (() { final guardedValue = map['username']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}
