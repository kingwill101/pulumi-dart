// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_auth_config_ssh_public_key_ssh_client_cert.dart';
import 'connection_auth_config_ssh_public_key_ssh_client_cert_pass.dart';

class ConnectionAuthConfigSshPublicKey {
  /// Format of SSH Client cert.
  final pulumi.Input<String>? certType;
  /// SSH Client Cert. It should contain both public and private key.
  /// Structure is documented below.
  final pulumi.Input<ConnectionAuthConfigSshPublicKeySshClientCert>? sshClientCert;
  /// Password (passphrase) for ssh client certificate if it has one.
  /// Structure is documented below.
  final pulumi.Input<ConnectionAuthConfigSshPublicKeySshClientCertPass>? sshClientCertPass;
  /// The user account used to authenticate.
  final pulumi.Input<String> username;

  /// Creates a new [ConnectionAuthConfigSshPublicKey].
  /// [certType] Format of SSH Client cert.
  /// [sshClientCert] SSH Client Cert. It should contain both public and private key.
  /// [sshClientCertPass] Password (passphrase) for ssh client certificate if it has one.
  /// [username] The user account used to authenticate.
  ConnectionAuthConfigSshPublicKey({
    this.certType,
    this.sshClientCert,
    this.sshClientCertPass,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certType': ?certType,
      'sshClientCert': ?pulumi.Input.mapOptionalInputValue<ConnectionAuthConfigSshPublicKeySshClientCert, Map<String, dynamic>>(sshClientCert, (value) => value.toMap()),
      'sshClientCertPass': ?pulumi.Input.mapOptionalInputValue<ConnectionAuthConfigSshPublicKeySshClientCertPass, Map<String, dynamic>>(sshClientCertPass, (value) => value.toMap()),
      'username': username,
    };
  }

  factory ConnectionAuthConfigSshPublicKey.fromMap(Map<String, dynamic> map) {
    return ConnectionAuthConfigSshPublicKey(
      certType: map['certType'] == null ? null : (map['certType'] as String).input(),
      sshClientCert: map['sshClientCert'] == null ? null : (ConnectionAuthConfigSshPublicKeySshClientCert.fromMap((map['sshClientCert'] as Map).cast<String, dynamic>())).input(),
      sshClientCertPass: map['sshClientCertPass'] == null ? null : (ConnectionAuthConfigSshPublicKeySshClientCertPass.fromMap((map['sshClientCertPass'] as Map).cast<String, dynamic>())).input(),
      username: (map['username'] as String).input(),
    );
  }
}

