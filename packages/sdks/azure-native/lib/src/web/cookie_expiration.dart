// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cookie_expiration_convention.dart';

/// The configuration settings of the session cookie's expiration.
class CookieExpiration {
  /// The convention used when determining the session cookie's expiration.
  final pulumi.Input<CookieExpirationConvention>? convention;
  /// The time after the request is made when the session cookie should expire.
  final pulumi.Input<String>? timeToExpiration;

  /// Creates a new [CookieExpiration].
  /// [convention] The convention used when determining the session cookie's expiration.
  /// [timeToExpiration] The time after the request is made when the session cookie should expire.
  CookieExpiration({
    this.convention,
    this.timeToExpiration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'convention': ?pulumi.Input.mapOptionalInputValue<CookieExpirationConvention, String>(convention, (value) => value.value),
      'timeToExpiration': ?timeToExpiration,
    };
  }

  factory CookieExpiration.fromMap(Map<String, dynamic> map) {
    return CookieExpiration(
      convention: map['convention'] == null ? null : (CookieExpirationConvention.fromValue(map['convention'] as String)).input(),
      timeToExpiration: map['timeToExpiration'] == null ? null : (map['timeToExpiration'] as String).input(),
    );
  }
}

