// ignore_for_file: unused_element, unnecessary_cast

import 'secret_response.dart';

/// Parameters to support Ssh public key Authentication.
class SshPublicKeyResponse {
  /// Format of SSH Client cert.
  final String certType;
  /// SSH Client Cert. It should contain both public and private key.
  final SecretResponse sshClientCert;
  /// Password (passphrase) for ssh client certificate if it has one.
  final SecretResponse sshClientCertPass;
  /// The user account used to authenticate.
  final String username;

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
      'sshClientCert': sshClientCert.toMap(),
      'sshClientCertPass': sshClientCertPass.toMap(),
      'username': username,
    };
  }

  factory SshPublicKeyResponse.fromMap(Map<String, dynamic> map) {
    return SshPublicKeyResponse(
      certType: map['certType'] as String,
      sshClientCert: SecretResponse.fromMap((map['sshClientCert'] as Map).cast<String, dynamic>()),
      sshClientCertPass: SecretResponse.fromMap((map['sshClientCertPass'] as Map).cast<String, dynamic>()),
      username: map['username'] as String,
    );
  }
}

