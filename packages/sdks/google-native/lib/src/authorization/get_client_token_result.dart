// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getClientToken.
class GetClientTokenResult {
  /// The OAuth2 access token used by the client to authenticate against the Google Cloud API.
  final String accessToken;
  /// Expiry is the optional expiration time of the access token. If zero, TokenSource implementations will reuse the same token forever and RefreshToken or equivalent mechanisms for that TokenSource will not be used.
  final String? expiry;
  /// RefreshToken is a token that's used by the application (as opposed to the user) to refresh the access token if it expires.
  final String? refreshToken;
  /// The type of auth token. Possible types are "Bearer", "MAC", "Basic".
  final String tokenType;

  /// Creates a new [GetClientTokenResult].
  /// [accessToken] The OAuth2 access token used by the client to authenticate against the Google Cloud API.
  /// [expiry] Expiry is the optional expiration time of the access token. If zero, TokenSource implementations will reuse the same token forever and RefreshToken or equivalent mechanisms for that TokenSource will not be used.
  /// [refreshToken] RefreshToken is a token that's used by the application (as opposed to the user) to refresh the access token if it expires.
  /// [tokenType] The type of auth token. Possible types are "Bearer", "MAC", "Basic".
  const GetClientTokenResult({
    required this.accessToken,
    this.expiry,
    this.refreshToken,
    required this.tokenType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessToken': accessToken,
      'expiry': ?expiry,
      'refreshToken': ?refreshToken,
      'tokenType': tokenType,
    };
  }

  factory GetClientTokenResult.fromMap(Map<String, dynamic> map) {
    return GetClientTokenResult(
      accessToken: map['accessToken'] as String,
      expiry: (() { final guardedValue = map['expiry']; if (guardedValue == null) return null; return guardedValue as String; })(),
      refreshToken: (() { final guardedValue = map['refreshToken']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tokenType: map['tokenType'] as String,
    );
  }
}
