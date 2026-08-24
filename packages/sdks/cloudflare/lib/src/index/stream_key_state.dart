// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering StreamKey resources.
class StreamKeyState {
  /// Identifier.
  final pulumi.Input<String?>? accountId;
  /// The date and time a signing key was created.
  final pulumi.Input<String?>? created;
  /// The signing key in JWK format.
  final pulumi.Input<String?>? jwk;
  /// The unique identifier for the signing key.
  final pulumi.Input<String?>? keyId;
  /// The signing key in PEM format.
  final pulumi.Input<String?>? pem;

  /// Creates a new [StreamKeyState].
  /// [accountId] Identifier.
  /// [created] The date and time a signing key was created.
  /// [jwk] The signing key in JWK format.
  /// [keyId] The unique identifier for the signing key.
  /// [pem] The signing key in PEM format.
  const StreamKeyState({
    this.accountId,
    this.created,
    this.jwk,
    this.keyId,
    this.pem,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'created': ?created,
      'jwk': ?jwk,
      'keyId': ?keyId,
      'pem': ?pem,
    };
  }

  factory StreamKeyState.fromMap(Map<String, dynamic> map) {
    return StreamKeyState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      created: (() { final guardedValue = map['created']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      jwk: (() { final guardedValue = map['jwk']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyId: (() { final guardedValue = map['keyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pem: (() { final guardedValue = map['pem']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
