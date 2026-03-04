// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering UserPassword resources.
class UserPasswordState {
  /// The encrypted password, base64 encoded.
  final pulumi.Input<String>? encryptedPassword;

  /// The source host of the user. Defaults to `localhost`.
  final pulumi.Input<String>? host;

  /// The fingerprint of the PGP key used to encrypt the password
  final pulumi.Input<String>? keyFingerprint;

  /// Either a base-64 encoded PGP public key, or a keybase username in the form `keybase:some_person_that_exists`.
  final pulumi.Input<String>? pgpKey;

  /// The IAM user to associate with this access key.
  final pulumi.Input<String>? user;

  /// Creates a new [UserPasswordState].
  /// [encryptedPassword] The encrypted password, base64 encoded.
  /// [host] The source host of the user. Defaults to `localhost`.
  /// [keyFingerprint] The fingerprint of the PGP key used to encrypt the password
  /// [pgpKey] Either a base-64 encoded PGP public key, or a keybase username in the form `keybase:some_person_that_exists`.
  /// [user] The IAM user to associate with this access key.
  UserPasswordState({
    this.encryptedPassword,
    this.host,
    this.keyFingerprint,
    this.pgpKey,
    this.user,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryptedPassword': ?encryptedPassword,
      'host': ?host,
      'keyFingerprint': ?keyFingerprint,
      'pgpKey': ?pgpKey,
      'user': ?user,
    };
  }

  factory UserPasswordState.fromMap(Map<String, dynamic> map) {
    return UserPasswordState(
      encryptedPassword: (() {
        final guardedValue = map['encryptedPassword'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      host: (() {
        final guardedValue = map['host'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      keyFingerprint: (() {
        final guardedValue = map['keyFingerprint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      pgpKey: (() {
        final guardedValue = map['pgpKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      user: (() {
        final guardedValue = map['user'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
