// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'secret.dart';

/// Parameters to support Ssh public key Authentication.
class SshPublicKey {
  /// Format of SSH Client cert.
  final pulumi.Input<String>? certType;

  /// SSH Client Cert. It should contain both public and private key.
  final pulumi.Input<Secret>? sshClientCert;

  /// Password (passphrase) for ssh client certificate if it has one.
  final pulumi.Input<Secret>? sshClientCertPass;

  /// The user account used to authenticate.
  final pulumi.Input<String>? username;

  /// Creates a new [SshPublicKey].
  /// [certType] Format of SSH Client cert.
  /// [sshClientCert] SSH Client Cert. It should contain both public and private key.
  /// [sshClientCertPass] Password (passphrase) for ssh client certificate if it has one.
  /// [username] The user account used to authenticate.
  SshPublicKey({
    this.certType,
    this.sshClientCert,
    this.sshClientCertPass,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certType': ?certType,
      'sshClientCert':
          ?pulumi.Input.mapOptionalInputValue<Secret, Map<String, dynamic>>(
            sshClientCert,
            (value) => value.toMap(),
          ),
      'sshClientCertPass':
          ?pulumi.Input.mapOptionalInputValue<Secret, Map<String, dynamic>>(
            sshClientCertPass,
            (value) => value.toMap(),
          ),
      'username': ?username,
    };
  }

  factory SshPublicKey.fromMap(Map<String, dynamic> map) {
    return SshPublicKey(
      certType: (() {
        final guardedValue = map['certType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sshClientCert: (() {
        final guardedValue = map['sshClientCert'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          Secret.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      sshClientCertPass: (() {
        final guardedValue = map['sshClientCertPass'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          Secret.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      username: (() {
        final guardedValue = map['username'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
