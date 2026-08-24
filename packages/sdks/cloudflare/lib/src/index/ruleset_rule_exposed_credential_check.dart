// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RulesetRuleExposedCredentialCheck {
  /// An expression that selects the password used in the credentials check.
  final pulumi.Input<String> passwordExpression;
  /// An expression that selects the user ID used in the credentials check.
  final pulumi.Input<String> usernameExpression;

  /// Creates a new [RulesetRuleExposedCredentialCheck].
  /// [passwordExpression] An expression that selects the password used in the credentials check.
  /// [usernameExpression] An expression that selects the user ID used in the credentials check.
  const RulesetRuleExposedCredentialCheck({
    required this.passwordExpression,
    required this.usernameExpression,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'passwordExpression': passwordExpression,
      'usernameExpression': usernameExpression,
    };
  }

  factory RulesetRuleExposedCredentialCheck.fromMap(Map<String, dynamic> map) {
    return RulesetRuleExposedCredentialCheck(
      passwordExpression: pulumi.Input.fromValue(map['passwordExpression'] as String),
      usernameExpression: pulumi.Input.fromValue(map['usernameExpression'] as String),
    );
  }
}
