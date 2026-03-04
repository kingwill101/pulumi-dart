// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The configuration settings of the session cookie's expiration.
class CookieExpirationResponse {
  /// The convention used when determining the session cookie's expiration.
  final pulumi.Input<String>? convention;

  /// The time after the request is made when the session cookie should expire.
  final pulumi.Input<String>? timeToExpiration;

  /// Creates a new [CookieExpirationResponse].
  /// [convention] The convention used when determining the session cookie's expiration.
  /// [timeToExpiration] The time after the request is made when the session cookie should expire.
  CookieExpirationResponse({this.convention, this.timeToExpiration});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'convention': ?convention,
      'timeToExpiration': ?timeToExpiration,
    };
  }

  factory CookieExpirationResponse.fromMap(Map<String, dynamic> map) {
    return CookieExpirationResponse(
      convention: (() {
        final guardedValue = map['convention'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      timeToExpiration: (() {
        final guardedValue = map['timeToExpiration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
