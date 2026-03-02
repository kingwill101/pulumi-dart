// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// TokenRequestStatus is the result of a token request.
class TokenRequestStatus {
  /// ExpirationTimestamp is the time of expiration of the returned token.
  final pulumi.Input<String> expirationTimestamp;
  /// Token is the opaque bearer token.
  final pulumi.Input<String> token;

  /// Creates a new [TokenRequestStatus].
  /// [expirationTimestamp] ExpirationTimestamp is the time of expiration of the returned token.
  /// [token] Token is the opaque bearer token.
  TokenRequestStatus({
    required this.expirationTimestamp,
    required this.token,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expirationTimestamp': expirationTimestamp,
      'token': token,
    };
  }

  factory TokenRequestStatus.fromMap(Map<String, dynamic> map) {
    return TokenRequestStatus(
      expirationTimestamp: (map['expirationTimestamp'] as String).input(),
      token: (map['token'] as String).input(),
    );
  }
}

