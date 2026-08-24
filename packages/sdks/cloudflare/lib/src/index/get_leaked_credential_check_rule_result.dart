// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getLeakedCredentialCheckRule.
class GetLeakedCredentialCheckRuleResult {
  /// Defines the unique ID for this custom detection.
  final String? detectionId;
  /// Defines the unique ID for this custom detection.
  final String? id;
  /// Defines ehe ruleset expression to use in matching the password in a request.
  final String? password;
  /// Defines the ruleset expression to use in matching the username in a request.
  final String? username;
  /// Defines an identifier.
  final String? zoneId;

  /// Creates a new [GetLeakedCredentialCheckRuleResult].
  /// [detectionId] Defines the unique ID for this custom detection.
  /// [id] Defines the unique ID for this custom detection.
  /// [password] Defines ehe ruleset expression to use in matching the password in a request.
  /// [username] Defines the ruleset expression to use in matching the username in a request.
  /// [zoneId] Defines an identifier.
  const GetLeakedCredentialCheckRuleResult({
    this.detectionId,
    this.id,
    this.password,
    this.username,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'detectionId': ?detectionId,
      'id': ?id,
      'password': ?password,
      'username': ?username,
      'zoneId': ?zoneId,
    };
  }

  factory GetLeakedCredentialCheckRuleResult.fromMap(Map<String, dynamic> map) {
    return GetLeakedCredentialCheckRuleResult(
      detectionId: (() { final guardedValue = map['detectionId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return guardedValue as String; })(),
      username: (() { final guardedValue = map['username']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
