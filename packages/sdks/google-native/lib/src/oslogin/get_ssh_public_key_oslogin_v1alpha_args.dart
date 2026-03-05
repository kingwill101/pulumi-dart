// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_oslogin_v1alpha_get_ssh_public_key_oslogin_v1alpha_args_doc}
/// Arguments for getSshPublicKey.
/// {@endtemplate}
/// {@macro pulumi_oslogin_v1alpha_get_ssh_public_key_oslogin_v1alpha_args_doc}
class GetSshPublicKeyOsloginV1alphaArgs {
  final pulumi.Input<String> sshPublicKeyId;
  final pulumi.Input<String> userId;

  /// Creates a new [GetSshPublicKeyOsloginV1alphaArgs].
  /// [sshPublicKeyId] Required.
  /// [userId] Required.
  GetSshPublicKeyOsloginV1alphaArgs({
    required this.sshPublicKeyId,
    required this.userId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sshPublicKeyId': sshPublicKeyId,
      'userId': userId,
    };
  }

  factory GetSshPublicKeyOsloginV1alphaArgs.fromMap(Map<String, dynamic> map) {
    return GetSshPublicKeyOsloginV1alphaArgs(
      sshPublicKeyId: pulumi.Input.fromValue(map['sshPublicKeyId'] as String),
      userId: pulumi.Input.fromValue(map['userId'] as String),
    );
  }
}

