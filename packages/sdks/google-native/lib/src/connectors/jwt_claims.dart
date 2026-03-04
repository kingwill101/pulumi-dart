// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// JWT claims used for the jwt-bearer authorization grant.
class JwtClaims {
  /// Value for the "aud" claim.
  final pulumi.Input<String>? audience;

  /// Value for the "iss" claim.
  final pulumi.Input<String>? issuer;

  /// Value for the "sub" claim.
  final pulumi.Input<String>? subject;

  /// Creates a new [JwtClaims].
  /// [audience] Value for the "aud" claim.
  /// [issuer] Value for the "iss" claim.
  /// [subject] Value for the "sub" claim.
  JwtClaims({this.audience, this.issuer, this.subject});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audience': ?audience,
      'issuer': ?issuer,
      'subject': ?subject,
    };
  }

  factory JwtClaims.fromMap(Map<String, dynamic> map) {
    return JwtClaims(
      audience: (() {
        final guardedValue = map['audience'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      issuer: (() {
        final guardedValue = map['issuer'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      subject: (() {
        final guardedValue = map['subject'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
