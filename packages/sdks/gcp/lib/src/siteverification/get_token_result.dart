// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getToken.
class GetTokenResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? identifier;
  /// The generated token for use in subsequent verification steps.
  final String? token;
  final String? type;
  final String? verificationMethod;

  /// Creates a new [GetTokenResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identifier] Optional.
  /// [token] The generated token for use in subsequent verification steps.
  /// [type] Optional.
  /// [verificationMethod] Optional.
  const GetTokenResult({
    this.id,
    this.identifier,
    this.token,
    this.type,
    this.verificationMethod,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'identifier': ?identifier,
      'token': ?token,
      'type': ?type,
      'verificationMethod': ?verificationMethod,
    };
  }

  factory GetTokenResult.fromMap(Map<String, dynamic> map) {
    return GetTokenResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identifier: (() { final guardedValue = map['identifier']; if (guardedValue == null) return null; return guardedValue as String; })(),
      token: (() { final guardedValue = map['token']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      verificationMethod: (() { final guardedValue = map['verificationMethod']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
