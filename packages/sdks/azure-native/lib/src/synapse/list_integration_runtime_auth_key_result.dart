// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by listIntegrationRuntimeAuthKey.
class ListIntegrationRuntimeAuthKeyResult {
  /// The primary integration runtime authentication key.
  final String? authKey1;
  /// The secondary integration runtime authentication key.
  final String? authKey2;

  /// Creates a new [ListIntegrationRuntimeAuthKeyResult].
  /// [authKey1] The primary integration runtime authentication key.
  /// [authKey2] The secondary integration runtime authentication key.
  ListIntegrationRuntimeAuthKeyResult({
    this.authKey1,
    this.authKey2,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authKey1': ?authKey1,
      'authKey2': ?authKey2,
    };
  }

  factory ListIntegrationRuntimeAuthKeyResult.fromMap(Map<String, dynamic> map) {
    return ListIntegrationRuntimeAuthKeyResult(
      authKey1: map['authKey1'] == null ? null : map['authKey1'] as String,
      authKey2: map['authKey2'] == null ? null : map['authKey2'] as String,
    );
  }
}

