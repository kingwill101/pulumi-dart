// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FtpUserUserCredential {
  /// The name of the credential.
  final pulumi.Input<String?>? credentialName;
  /// The type of the credential.
  final pulumi.Input<String?>? credentialType;
  /// The SSH public key body. A file either absolute or relative path should be provided which contains the ssh public key using file() interpolation in Terraform, not recommended to have key as a literal string in config.
  final pulumi.Input<String?>? sshPublicKeyBody;

  /// Creates a new [FtpUserUserCredential].
  /// [credentialName] The name of the credential.
  /// [credentialType] The type of the credential.
  /// [sshPublicKeyBody] The SSH public key body. A file either absolute or relative path should be provided which contains the ssh public key using file() interpolation in Terraform, not recommended to have key as a literal string in config.
  const FtpUserUserCredential({
    this.credentialName,
    this.credentialType,
    this.sshPublicKeyBody,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'credentialName': ?credentialName,
      'credentialType': ?credentialType,
      'sshPublicKeyBody': ?sshPublicKeyBody,
    };
  }

  factory FtpUserUserCredential.fromMap(Map<String, dynamic> map) {
    return FtpUserUserCredential(
      credentialName: (() { final guardedValue = map['credentialName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      credentialType: (() { final guardedValue = map['credentialType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sshPublicKeyBody: (() { final guardedValue = map['sshPublicKeyBody']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
