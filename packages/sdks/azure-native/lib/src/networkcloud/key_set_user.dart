// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ssh_public_key.dart';

class KeySetUser {
  /// The user name that will be used for access.
  final pulumi.Input<String> azureUserName;
  /// The free-form description for this user.
  final pulumi.Input<String>? description;
  /// The SSH public key that will be provisioned for user access. The user is expected to have the corresponding SSH private key for logging in.
  final pulumi.Input<SshPublicKey> sshPublicKey;
  /// The user principal name (email format) used to validate this user's group membership.
  final pulumi.Input<String>? userPrincipalName;

  /// Creates a new [KeySetUser].
  /// [azureUserName] The user name that will be used for access.
  /// [description] The free-form description for this user.
  /// [sshPublicKey] The SSH public key that will be provisioned for user access. The user is expected to have the corresponding SSH private key for logging in.
  /// [userPrincipalName] The user principal name (email format) used to validate this user's group membership.
  KeySetUser({
    required this.azureUserName,
    this.description,
    required this.sshPublicKey,
    this.userPrincipalName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureUserName': azureUserName,
      'description': ?description,
      'sshPublicKey': pulumi.Input.mapInputValue<SshPublicKey, Map<String, dynamic>>(sshPublicKey, (value) => value.toMap()),
      'userPrincipalName': ?userPrincipalName,
    };
  }

  factory KeySetUser.fromMap(Map<String, dynamic> map) {
    return KeySetUser(
      azureUserName: (map['azureUserName'] as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      sshPublicKey: (SshPublicKey.fromMap((map['sshPublicKey'] as Map).cast<String, dynamic>())).input(),
      userPrincipalName: map['userPrincipalName'] == null ? null : (map['userPrincipalName']! as String).input(),
    );
  }
}

