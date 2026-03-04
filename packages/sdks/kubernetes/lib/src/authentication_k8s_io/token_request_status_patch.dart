// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// TokenRequestStatus is the result of a token request.
class TokenRequestStatusPatch {
  /// ExpirationTimestamp is the time of expiration of the returned token.
  final pulumi.Input<String>? expirationTimestamp;

  /// Token is the opaque bearer token.
  final pulumi.Input<String>? token;

  /// Creates a new [TokenRequestStatusPatch].
  /// [expirationTimestamp] ExpirationTimestamp is the time of expiration of the returned token.
  /// [token] Token is the opaque bearer token.
  TokenRequestStatusPatch({this.expirationTimestamp, this.token});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expirationTimestamp': ?expirationTimestamp,
      'token': ?token,
    };
  }

  factory TokenRequestStatusPatch.fromMap(Map<String, dynamic> map) {
    return TokenRequestStatusPatch(
      expirationTimestamp: (() {
        final guardedValue = map['expirationTimestamp'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      token: (() {
        final guardedValue = map['token'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
