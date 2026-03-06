// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getDebugToken.
class GetDebugTokenFirebaseappcheckV1betaResult {
  /// A human readable display name used to identify this debug token.
  final String displayName;
  /// The relative resource name of the debug token, in the format: ``` projects/{project_number}/apps/{app_id}/debugTokens/{debug_token_id} ```
  final String name;
  /// Input only. Immutable. The secret token itself. Must be provided during creation, and must be a UUID4, case insensitive. This field is immutable once set, and cannot be provided during an UpdateDebugToken request. You can, however, delete this debug token using DeleteDebugToken to revoke it. For security reasons, this field will never be populated in any response.
  final String token;

  /// Creates a new [GetDebugTokenFirebaseappcheckV1betaResult].
  /// [displayName] A human readable display name used to identify this debug token.
  /// [name] The relative resource name of the debug token, in the format: ``` projects/{project_number}/apps/{app_id}/debugTokens/{debug_token_id} ```
  /// [token] Input only. Immutable. The secret token itself. Must be provided during creation, and must be a UUID4, case insensitive. This field is immutable once set, and cannot be provided during an UpdateDebugToken request. You can, however, delete this debug token using DeleteDebugToken to revoke it. For security reasons, this field will never be populated in any response.
  const GetDebugTokenFirebaseappcheckV1betaResult({
    required this.displayName,
    required this.name,
    required this.token,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': displayName,
      'name': name,
      'token': token,
    };
  }

  factory GetDebugTokenFirebaseappcheckV1betaResult.fromMap(Map<String, dynamic> map) {
    return GetDebugTokenFirebaseappcheckV1betaResult(
      displayName: map['displayName'] as String,
      name: map['name'] as String,
      token: map['token'] as String,
    );
  }
}

