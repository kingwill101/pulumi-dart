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
  const ConnectionAuthConfigSshPublicKey({
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
      certType: (() { final guardedValue = map['certType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sshClientCert: (() { final guardedValue = map['sshClientCert']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectionAuthConfigSshPublicKeySshClientCert.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sshClientCertPass: (() { final guardedValue = map['sshClientCertPass']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectionAuthConfigSshPublicKeySshClientCertPass.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      username: pulumi.Input.fromValue(map['username'] as String),
    );
  }
}
