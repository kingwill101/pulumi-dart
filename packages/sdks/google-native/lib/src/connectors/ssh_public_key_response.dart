// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'secret_response.dart';

/// Parameters to support Ssh public key Authentication.
class SshPublicKeyResponse {
  /// Format of SSH Client cert.
  final pulumi.Input<String> certType;
  /// SSH Client Cert. It should contain both public and private key.
  final pulumi.Input<SecretResponse> sshClientCert;
  /// Password (passphrase) for ssh client certificate if it has one.
  final pulumi.Input<SecretResponse> sshClientCertPass;
  /// The user account used to authenticate.
  final pulumi.Input<String> username;

  /// Creates a new [SshPublicKeyResponse].
  /// [certType] Format of SSH Client cert.
  /// [sshClientCert] SSH Client Cert. It should contain both public and private key.
  /// [sshClientCertPass] Password (passphrase) for ssh client certificate if it has one.
  /// [username] The user account used to authenticate.
  SshPublicKeyResponse({
    required this.certType,
    required this.sshClientCert,
    required this.sshClientCertPass,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certType': certType,
      'sshClientCert': pulumi.Input.mapInputValue<SecretResponse, Map<String, dynamic>>(sshClientCert, (value) => value.toMap()),
      'sshClientCertPass': pulumi.Input.mapInputValue<SecretResponse, Map<String, dynamic>>(sshClientCertPass, (value) => value.toMap()),
      'username': username,
    };
  }

  factory SshPublicKeyResponse.fromMap(Map<String, dynamic> map) {
    return SshPublicKeyResponse(
      certType: (map['certType'] as String).input(),
      sshClientCert: (SecretResponse.fromMap((map['sshClientCert'] as Map).cast<String, dynamic>())).input(),
      sshClientCertPass: (SecretResponse.fromMap((map['sshClientCertPass'] as Map).cast<String, dynamic>())).input(),
      username: (map['username'] as String).input(),
    );
  }
}

