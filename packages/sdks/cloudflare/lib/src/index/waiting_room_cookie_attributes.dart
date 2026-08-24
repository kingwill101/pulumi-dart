// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WaitingRoomCookieAttributes {
  /// Configures the SameSite attribute on the waiting room cookie. Value `auto` will be translated to `lax` or `none` depending if **Always Use HTTPS** is enabled. Note that when using value `none`, the secure attribute cannot be set to `never`.
  /// Available values: "auto", "lax", "none", "strict".
  final pulumi.Input<String?>? samesite;
  /// Configures the Secure attribute on the waiting room cookie. Value `always` indicates that the Secure attribute will be set in the Set-Cookie header, `never` indicates that the Secure attribute will not be set, and `auto` will set the Secure attribute depending if **Always Use HTTPS** is enabled.
  /// Available values: "auto", "always", "never".
  final pulumi.Input<String?>? secure;

  /// Creates a new [WaitingRoomCookieAttributes].
  /// [samesite] Configures the SameSite attribute on the waiting room cookie. Value `auto` will be translated to `lax` or `none` depending if **Always Use HTTPS** is enabled. Note that when using value `none`, the secure attribute cannot be set to `never`.
  /// [secure] Configures the Secure attribute on the waiting room cookie. Value `always` indicates that the Secure attribute will be set in the Set-Cookie header, `never` indicates that the Secure attribute will not be set, and `auto` will set the Secure attribute depending if **Always Use HTTPS** is enabled.
  const WaitingRoomCookieAttributes({
    this.samesite,
    this.secure,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'samesite': ?samesite,
      'secure': ?secure,
    };
  }

  factory WaitingRoomCookieAttributes.fromMap(Map<String, dynamic> map) {
    return WaitingRoomCookieAttributes(
      samesite: (() { final guardedValue = map['samesite']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secure: (() { final guardedValue = map['secure']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
