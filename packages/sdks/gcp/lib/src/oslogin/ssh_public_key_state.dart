// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SshPublicKey resources.
class SshPublicKeyState {
  /// An expiration time in microseconds since epoch.
  final pulumi.Input<String>? expirationTimeUsec;
  /// The SHA-256 fingerprint of the SSH public key.
  final pulumi.Input<String>? fingerprint;
  /// Public key text in SSH format, defined by RFC4253 section 6.6.
  final pulumi.Input<String>? key;
  /// The project ID of the Google Cloud Platform project.
  final pulumi.Input<String>? project;
  /// The user email.
  final pulumi.Input<String>? user;

  /// Creates a new [SshPublicKeyState].
  /// [expirationTimeUsec] An expiration time in microseconds since epoch.
  /// [fingerprint] The SHA-256 fingerprint of the SSH public key.
  /// [key] Public key text in SSH format, defined by RFC4253 section 6.6.
  /// [project] The project ID of the Google Cloud Platform project.
  /// [user] The user email.
  SshPublicKeyState({
    this.expirationTimeUsec,
    this.fingerprint,
    this.key,
    this.project,
    this.user,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expirationTimeUsec': ?expirationTimeUsec,
      'fingerprint': ?fingerprint,
      'key': ?key,
      'project': ?project,
      'user': ?user,
    };
  }

  factory SshPublicKeyState.fromMap(Map<String, dynamic> map) {
    return SshPublicKeyState(
      expirationTimeUsec: map['expirationTimeUsec'] == null ? null : (map['expirationTimeUsec']! as String).input(),
      fingerprint: map['fingerprint'] == null ? null : (map['fingerprint']! as String).input(),
      key: map['key'] == null ? null : (map['key']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      user: map['user'] == null ? null : (map['user']! as String).input(),
    );
  }
}

