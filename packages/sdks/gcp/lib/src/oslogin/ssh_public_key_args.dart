// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_oslogin_ssh_public_key_ssh_public_key_args_doc}
/// The set of arguments for SshPublicKey.
/// {@endtemplate}
/// {@macro pulumi_oslogin_ssh_public_key_ssh_public_key_args_doc}
class SshPublicKeyArgs {
  /// An expiration time in microseconds since epoch.
  final pulumi.Input<String>? expirationTimeUsec;
  /// Public key text in SSH format, defined by RFC4253 section 6.6.
  final pulumi.Input<String> key;
  /// The project ID of the Google Cloud Platform project.
  final pulumi.Input<String>? project;
  /// The user email.
  final pulumi.Input<String> user;

  /// Creates a new [SshPublicKeyArgs].
  /// [expirationTimeUsec] An expiration time in microseconds since epoch.
  /// [key] Public key text in SSH format, defined by RFC4253 section 6.6.
  /// [project] The project ID of the Google Cloud Platform project.
  /// [user] The user email.
  SshPublicKeyArgs({
    this.expirationTimeUsec,
    required this.key,
    this.project,
    required this.user,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expirationTimeUsec': ?expirationTimeUsec,
      'key': key,
      'project': ?project,
      'user': user,
    };
  }

  factory SshPublicKeyArgs.fromMap(Map<String, dynamic> map) {
    return SshPublicKeyArgs(
      expirationTimeUsec: map['expirationTimeUsec'] == null ? null : (map['expirationTimeUsec'] as String).input(),
      key: (map['key'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      user: (map['user'] as String).input(),
    );
  }
}

