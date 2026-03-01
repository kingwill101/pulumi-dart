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
    pulumi.Output<String>? expirationTimeUsec,
    pulumi.Output<String>? fingerprint,
    pulumi.Output<String>? key,
    pulumi.Output<String>? project,
    pulumi.Output<String>? user,
  }) :
      expirationTimeUsec = pulumi.Input.asOptionalInput<String>(expirationTimeUsec),
      fingerprint = pulumi.Input.asOptionalInput<String>(fingerprint),
      key = pulumi.Input.asOptionalInput<String>(key),
      project = pulumi.Input.asOptionalInput<String>(project),
      user = pulumi.Input.asOptionalInput<String>(user);

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
      expirationTimeUsec: map['expirationTimeUsec'] == null ? null : pulumi.Output.create<String>(map['expirationTimeUsec'] as String),
      fingerprint: map['fingerprint'] == null ? null : pulumi.Output.create<String>(map['fingerprint'] as String),
      key: map['key'] == null ? null : pulumi.Output.create<String>(map['key'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      user: map['user'] == null ? null : pulumi.Output.create<String>(map['user'] as String),
    );
  }
}

