// ignore_for_file: unused_element, unnecessary_cast


/// TokenRequestStatus is the result of a token request.
class TokenRequestStatusPatch {
  /// ExpirationTimestamp is the time of expiration of the returned token.
  final String? expirationTimestamp;
  /// Token is the opaque bearer token.
  final String? token;

  /// Creates a new [TokenRequestStatusPatch].
  /// [expirationTimestamp] ExpirationTimestamp is the time of expiration of the returned token.
  /// [token] Token is the opaque bearer token.
  TokenRequestStatusPatch({
    this.expirationTimestamp,
    this.token,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expirationTimestamp': ?expirationTimestamp,
      'token': ?token,
    };
  }

  factory TokenRequestStatusPatch.fromMap(Map<String, dynamic> map) {
    return TokenRequestStatusPatch(
      expirationTimestamp: map['expirationTimestamp'] == null ? null : map['expirationTimestamp'] as String,
      token: map['token'] == null ? null : map['token'] as String,
    );
  }
}

