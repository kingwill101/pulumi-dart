// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getAccountAccessToken.
class GetAccountAccessTokenResult {
  /// The `accessToken` representing the new generated identity.
  final String? accessToken;
  final List<String>? delegates;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? lifetime;
  final List<String>? scopes;
  final String? targetServiceAccount;

  /// Creates a new [GetAccountAccessTokenResult].
  /// [accessToken] The `accessToken` representing the new generated identity.
  /// [delegates] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [lifetime] Optional.
  /// [scopes] Optional.
  /// [targetServiceAccount] Optional.
  const GetAccountAccessTokenResult({
    this.accessToken,
    this.delegates,
    this.id,
    this.lifetime,
    this.scopes,
    this.targetServiceAccount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessToken': ?accessToken,
      'delegates': ?delegates,
      'id': ?id,
      'lifetime': ?lifetime,
      'scopes': ?scopes,
      'targetServiceAccount': ?targetServiceAccount,
    };
  }

  factory GetAccountAccessTokenResult.fromMap(Map<String, dynamic> map) {
    return GetAccountAccessTokenResult(
      accessToken: (() { final guardedValue = map['accessToken']; if (guardedValue == null) return null; return guardedValue as String; })(),
      delegates: (() { final guardedValue = map['delegates']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lifetime: (() { final guardedValue = map['lifetime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      scopes: (() { final guardedValue = map['scopes']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      targetServiceAccount: (() { final guardedValue = map['targetServiceAccount']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
