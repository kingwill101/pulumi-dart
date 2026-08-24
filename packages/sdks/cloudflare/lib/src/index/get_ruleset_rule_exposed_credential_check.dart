// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRulesetRuleExposedCredentialCheck {
  /// An expression that selects the password used in the credentials check.
  final pulumi.Input<String> passwordExpression;
  /// An expression that selects the user ID used in the credentials check.
  final pulumi.Input<String> usernameExpression;

  /// Creates a new [GetRulesetRuleExposedCredentialCheck].
  /// [passwordExpression] An expression that selects the password used in the credentials check.
  /// [usernameExpression] An expression that selects the user ID used in the credentials check.
  const GetRulesetRuleExposedCredentialCheck({
    required this.passwordExpression,
    required this.usernameExpression,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'passwordExpression': passwordExpression,
      'usernameExpression': usernameExpression,
    };
  }

  factory GetRulesetRuleExposedCredentialCheck.fromMap(Map<String, dynamic> map) {
    return GetRulesetRuleExposedCredentialCheck(
      passwordExpression: pulumi.Input.fromValue(map['passwordExpression'] as String),
      usernameExpression: pulumi.Input.fromValue(map['usernameExpression'] as String),
    );
  }
}
