// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_oslogin_v1beta_ssh_public_key_oslogin_v1beta_args_doc}
/// The set of arguments for SshPublicKey.
/// {@endtemplate}
/// {@macro pulumi_oslogin_v1beta_ssh_public_key_oslogin_v1beta_args_doc}
class SshPublicKeyOsloginV1betaArgs {
  /// An expiration time in microseconds since epoch.
  final pulumi.Input<String>? expirationTimeUsec;
  /// Public key text in SSH format, defined by RFC4253 section 6.6.
  final pulumi.Input<String>? key;
  final pulumi.Input<String> userId;

  /// Creates a new [SshPublicKeyOsloginV1betaArgs].
  /// [expirationTimeUsec] An expiration time in microseconds since epoch.
  /// [key] Public key text in SSH format, defined by RFC4253 section 6.6.
  /// [userId] Required.
  SshPublicKeyOsloginV1betaArgs({
    this.expirationTimeUsec,
    this.key,
    required this.userId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expirationTimeUsec': ?expirationTimeUsec,
      'key': ?key,
      'userId': userId,
    };
  }

  factory SshPublicKeyOsloginV1betaArgs.fromMap(Map<String, dynamic> map) {
    return SshPublicKeyOsloginV1betaArgs(
      expirationTimeUsec: map['expirationTimeUsec'] == null ? null : (map['expirationTimeUsec'] as String).input(),
      key: map['key'] == null ? null : (map['key'] as String).input(),
      userId: (map['userId'] as String).input(),
    );
  }
}

