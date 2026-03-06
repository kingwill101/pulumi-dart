// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PoolUserAccountLinuxUserConfiguration {
  /// The user ID of the user account. The `uid` and `gid` properties must be specified together or not at all. If not specified the underlying operating system picks the uid.
  final pulumi.Input<int>? gid;
  /// The SSH private key for the user account. The private key must not be password protected. The private key is used to automatically configure asymmetric-key based authentication for SSH between nodes in a Linux pool when the pool's enableInterNodeCommunication property is true (it is ignored if enableInterNodeCommunication is false). It does this by placing the key pair into the user's .ssh directory. If not specified, password-less SSH is not configured between nodes (no modification of the user's .ssh directory is done).
  final pulumi.Input<String>? sshPrivateKey;
  /// The group ID for the user account. The `uid` and `gid` properties must be specified together or not at all. If not specified the underlying operating system picks the gid.
  final pulumi.Input<int>? uid;

  /// Creates a new [PoolUserAccountLinuxUserConfiguration].
  /// [gid] The user ID of the user account. The `uid` and `gid` properties must be specified together or not at all. If not specified the underlying operating system picks the uid.
  /// [sshPrivateKey] The SSH private key for the user account. The private key must not be password protected. The private key is used to automatically configure asymmetric-key based authentication for SSH between nodes in a Linux pool when the pool's enableInterNodeCommunication property is true (it is ignored if enableInterNodeCommunication is false). It does this by placing the key pair into the user's .ssh directory. If not specified, password-less SSH is not configured between nodes (no modification of the user's .ssh directory is done).
  /// [uid] The group ID for the user account. The `uid` and `gid` properties must be specified together or not at all. If not specified the underlying operating system picks the gid.
  const PoolUserAccountLinuxUserConfiguration({
    this.gid,
    this.sshPrivateKey,
    this.uid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gid': ?gid,
      'sshPrivateKey': ?sshPrivateKey,
      'uid': ?uid,
    };
  }

  factory PoolUserAccountLinuxUserConfiguration.fromMap(Map<String, dynamic> map) {
    return PoolUserAccountLinuxUserConfiguration(
      gid: (() { final guardedValue = map['gid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      sshPrivateKey: (() { final guardedValue = map['sshPrivateKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

