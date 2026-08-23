// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getSourceControlToken.
class GetSourceControlTokenResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The GitHub Token value.
  final String token;
  final String tokenSecret;
  final String type;

  /// Creates a new [GetSourceControlTokenResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [token] The GitHub Token value.
  /// [tokenSecret] Required.
  /// [type] Required.
  const GetSourceControlTokenResult({
    required this.id,
    required this.token,
    required this.tokenSecret,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'token': token,
      'tokenSecret': tokenSecret,
      'type': type,
    };
  }

  factory GetSourceControlTokenResult.fromMap(Map<String, dynamic> map) {
    return GetSourceControlTokenResult(
      id: map['id'] as String,
      token: map['token'] as String,
      tokenSecret: map['tokenSecret'] as String,
      type: map['type'] as String,
    );
  }
}
