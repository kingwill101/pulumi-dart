// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ssh_public_key_response.dart';

class KeySetUserResponse {
  /// The user name that will be used for access.
  final pulumi.Input<String> azureUserName;
  /// The free-form description for this user.
  final pulumi.Input<String>? description;
  /// The SSH public key that will be provisioned for user access. The user is expected to have the corresponding SSH private key for logging in.
  final pulumi.Input<SshPublicKeyResponse> sshPublicKey;
  /// The user principal name (email format) used to validate this user's group membership.
  final pulumi.Input<String>? userPrincipalName;

  /// Creates a new [KeySetUserResponse].
  /// [azureUserName] The user name that will be used for access.
  /// [description] The free-form description for this user.
  /// [sshPublicKey] The SSH public key that will be provisioned for user access. The user is expected to have the corresponding SSH private key for logging in.
  /// [userPrincipalName] The user principal name (email format) used to validate this user's group membership.
  const KeySetUserResponse({
    required this.azureUserName,
    this.description,
    required this.sshPublicKey,
    this.userPrincipalName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureUserName': azureUserName,
      'description': ?description,
      'sshPublicKey': pulumi.Input.mapInputValue<SshPublicKeyResponse, Map<String, dynamic>>(sshPublicKey, (value) => value.toMap()),
      'userPrincipalName': ?userPrincipalName,
    };
  }

  factory KeySetUserResponse.fromMap(Map<String, dynamic> map) {
    return KeySetUserResponse(
      azureUserName: pulumi.Input.fromValue(map['azureUserName'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sshPublicKey: pulumi.Input.fromValue(SshPublicKeyResponse.fromMap((map['sshPublicKey']! as Map).cast<String, dynamic>())),
      userPrincipalName: (() { final guardedValue = map['userPrincipalName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

