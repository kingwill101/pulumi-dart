// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_oslogin_v1alpha_ssh_public_key_oslogin_v1alpha_args_doc}
/// The set of arguments for SshPublicKey.
/// {@endtemplate}
/// {@macro pulumi_oslogin_v1alpha_ssh_public_key_oslogin_v1alpha_args_doc}
class SshPublicKeyOsloginV1alphaArgs {
  /// An expiration time in microseconds since epoch.
  final pulumi.Input<String>? expirationTimeUsec;
  /// Public key text in SSH format, defined by RFC4253 section 6.6.
  final pulumi.Input<String>? key;
  final pulumi.Input<String> userId;

  /// Creates a new [SshPublicKeyOsloginV1alphaArgs].
  /// [expirationTimeUsec] An expiration time in microseconds since epoch.
  /// [key] Public key text in SSH format, defined by RFC4253 section 6.6.
  /// [userId] Required.
  SshPublicKeyOsloginV1alphaArgs({
    pulumi.Output<String>? expirationTimeUsec,
    pulumi.Output<String>? key,
    required pulumi.Output<String> userId,
  }) :
      expirationTimeUsec = pulumi.Input.asOptionalInput<String>(expirationTimeUsec),
      key = pulumi.Input.asOptionalInput<String>(key),
      userId = pulumi.Input.asInput<String>(userId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expirationTimeUsec': ?expirationTimeUsec,
      'key': ?key,
      'userId': userId,
    };
  }

  factory SshPublicKeyOsloginV1alphaArgs.fromMap(Map<String, dynamic> map) {
    return SshPublicKeyOsloginV1alphaArgs(
      expirationTimeUsec: map['expirationTimeUsec'] == null ? null : pulumi.Output.create<String>(map['expirationTimeUsec'] as String),
      key: map['key'] == null ? null : pulumi.Output.create<String>(map['key'] as String),
      userId: pulumi.Output.create<String>(map['userId'] as String),
    );
  }
}

