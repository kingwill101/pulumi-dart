// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// TokenRequestStatus is the result of a token request.
class TokenRequestStatus {
  /// expirationTimestamp is the time of expiration of the returned token.
  final pulumi.Input<String> expirationTimestamp;
  /// token is the opaque bearer token.
  final pulumi.Input<String> token;

  /// Creates a new [TokenRequestStatus].
  /// [expirationTimestamp] expirationTimestamp is the time of expiration of the returned token.
  /// [token] token is the opaque bearer token.
  const TokenRequestStatus({
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
      expirationTimestamp: pulumi.Input.fromValue(map['expirationTimestamp'] as String),
      token: pulumi.Input.fromValue(map['token'] as String),
    );
  }
}
