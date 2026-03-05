// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The SSH Key-pair used to authenticate with the VM. The key needs to be at least 2048-bit and in ssh-rsa format. For creating ssh keys, see [Create SSH keys on Linux and Mac for Linux VMs in Azure](https://learn.microsoft.com/azure/virtual-machines/linux/create-ssh-keys-detailed).
class SshKeyPair {
  /// SSH private key.
  final pulumi.Input<String>? privateKey;
  /// SSH public key
  final pulumi.Input<String>? publicKey;

  /// Creates a new [SshKeyPair].
  /// [privateKey] SSH private key.
  /// [publicKey] SSH public key
  SshKeyPair({
    this.privateKey,
    this.publicKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateKey': ?privateKey,
      'publicKey': ?publicKey,
    };
  }

  factory SshKeyPair.fromMap(Map<String, dynamic> map) {
    return SshKeyPair(
      privateKey: (() { final guardedValue = map['privateKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicKey: (() { final guardedValue = map['publicKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

