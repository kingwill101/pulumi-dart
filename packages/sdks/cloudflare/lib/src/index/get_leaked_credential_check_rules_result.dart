// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetLeakedCredentialCheckRulesResult {
  /// Defines the unique ID for this custom detection.
  final pulumi.Input<String> id;
  /// Defines ehe ruleset expression to use in matching the password in a request.
  final pulumi.Input<String> password;
  /// Defines the ruleset expression to use in matching the username in a request.
  final pulumi.Input<String> username;

  /// Creates a new [GetLeakedCredentialCheckRulesResult].
  /// [id] Defines the unique ID for this custom detection.
  /// [password] Defines ehe ruleset expression to use in matching the password in a request.
  /// [username] Defines the ruleset expression to use in matching the username in a request.
  const GetLeakedCredentialCheckRulesResult({
    required this.id,
    required this.password,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'password': password,
      'username': username,
    };
  }

  factory GetLeakedCredentialCheckRulesResult.fromMap(Map<String, dynamic> map) {
    return GetLeakedCredentialCheckRulesResult(
      id: pulumi.Input.fromValue(map['id'] as String),
      password: pulumi.Input.fromValue(map['password'] as String),
      username: pulumi.Input.fromValue(map['username'] as String),
    );
  }
}
