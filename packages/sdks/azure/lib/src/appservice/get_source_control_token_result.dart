// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getSourceControlToken.
class GetSourceControlTokenResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The GitHub Token value.
  final String? token;
  final String? tokenSecret;
  final String? type;

  /// Creates a new [GetSourceControlTokenResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [token] The GitHub Token value.
  /// [tokenSecret] Optional.
  /// [type] Optional.
  const GetSourceControlTokenResult({
    this.id,
    this.token,
    this.tokenSecret,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'token': ?token,
      'tokenSecret': ?tokenSecret,
      'type': ?type,
    };
  }

  factory GetSourceControlTokenResult.fromMap(Map<String, dynamic> map) {
    return GetSourceControlTokenResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      token: (() { final guardedValue = map['token']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tokenSecret: (() { final guardedValue = map['tokenSecret']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
