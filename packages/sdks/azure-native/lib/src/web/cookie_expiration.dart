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
      'convention': ?pulumi.Input.mapOptionalInputValue<CookieExpirationConvention, String>(convention, (value) => value.wireValue),
      'timeToExpiration': ?timeToExpiration,
    };
  }

  factory CookieExpiration.fromMap(Map<String, dynamic> map) {
    return CookieExpiration(
      convention: (() { final guardedValue = map['convention']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CookieExpirationConvention.fromValue(guardedValue as String)); })(),
      timeToExpiration: (() { final guardedValue = map['timeToExpiration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

