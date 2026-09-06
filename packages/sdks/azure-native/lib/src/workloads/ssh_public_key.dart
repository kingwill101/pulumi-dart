// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Contains information about SSH certificate public key and the path on the Linux VM where the public key is placed.
class SshPublicKey {
  /// SSH public key certificate used to authenticate with the VM through ssh. The key needs to be at least 2048-bit and in ssh-rsa format. &lt;br&gt;&lt;br&gt; For creating ssh keys, see [Create SSH keys on Linux and Mac for Linux VMs in Azure](https://learn.microsoft.com/azure/virtual-machines/linux/create-ssh-keys-detailed).
  final pulumi.Input<String?>? keyData;

  /// Creates a new [SshPublicKey].
  /// [keyData] SSH public key certificate used to authenticate with the VM through ssh. The key needs to be at least 2048-bit and in ssh-rsa format. &lt;br&gt;&lt;br&gt; For creating ssh keys, see [Create SSH keys on Linux and Mac for Linux VMs in Azure](https://learn.microsoft.com/azure/virtual-machines/linux/create-ssh-keys-detailed).
  const SshPublicKey({
    this.keyData,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyData': ?keyData,
    };
  }

  factory SshPublicKey.fromMap(Map<String, dynamic> map) {
    return SshPublicKey(
      keyData: (() { final guardedValue = map['keyData']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
