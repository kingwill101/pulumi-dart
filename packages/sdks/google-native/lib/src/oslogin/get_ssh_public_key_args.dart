// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_oslogin_v1_get_ssh_public_key_args_doc}
/// Arguments for getSshPublicKey.
/// {@endtemplate}
/// {@macro pulumi_oslogin_v1_get_ssh_public_key_args_doc}
class GetSshPublicKeyArgs {
  final pulumi.Input<String> sshPublicKeyId;
  final pulumi.Input<String> userId;

  /// Creates a new [GetSshPublicKeyArgs].
  /// [sshPublicKeyId] Required.
  /// [userId] Required.
  GetSshPublicKeyArgs({required this.sshPublicKeyId, required this.userId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sshPublicKeyId': sshPublicKeyId,
      'userId': userId,
    };
  }

  factory GetSshPublicKeyArgs.fromMap(Map<String, dynamic> map) {
    return GetSshPublicKeyArgs(
      sshPublicKeyId: pulumi.Input.fromValue(map['sshPublicKeyId'] as String),
      userId: pulumi.Input.fromValue(map['userId'] as String),
    );
  }
}
