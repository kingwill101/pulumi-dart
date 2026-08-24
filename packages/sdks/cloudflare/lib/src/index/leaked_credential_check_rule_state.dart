// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering LeakedCredentialCheckRule resources.
class LeakedCredentialCheckRuleState {
  /// Defines ehe ruleset expression to use in matching the password in a request.
  final pulumi.Input<String?>? password;
  /// Defines the ruleset expression to use in matching the username in a request.
  final pulumi.Input<String?>? username;
  /// Defines an identifier.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [LeakedCredentialCheckRuleState].
  /// [password] Defines ehe ruleset expression to use in matching the password in a request.
  /// [username] Defines the ruleset expression to use in matching the username in a request.
  /// [zoneId] Defines an identifier.
  const LeakedCredentialCheckRuleState({
    this.password,
    this.username,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'password': ?password,
      'username': ?username,
      'zoneId': ?zoneId,
    };
  }

  factory LeakedCredentialCheckRuleState.fromMap(Map<String, dynamic> map) {
    return LeakedCredentialCheckRuleState(
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      username: (() { final guardedValue = map['username']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
