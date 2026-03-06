// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VolumeReplicationHybridPeeringDetail {
  /// (Output)
  /// Optional. Copy-paste-able commands to be used on user's ONTAP to accept peering requests.
  final pulumi.Input<String>? command;
  /// (Output)
  /// Optional. Expiration time for the peering command to be executed on user's ONTAP.
  /// Uses RFC 3339, where generated output will always be Z-normalized and uses 0, 3, 6 or 9 fractional digits. Offsets other than "Z" are also accepted.
  final pulumi.Input<String>? commandExpiryTime;
  /// (Output)
  /// Optional. Temporary passphrase generated to accept cluster peering command.
  final pulumi.Input<String>? passphrase;
  /// (Output)
  /// Optional. Name of the user's local source cluster to be peered with the destination cluster.
  final pulumi.Input<String>? peerClusterName;
  /// (Output)
  /// Optional. Name of the user's local source vserver svm to be peered with the destination vserver svm.
  final pulumi.Input<String>? peerSvmName;
  /// (Output)
  /// Optional. Name of the user's local source volume to be peered with the destination volume.
  final pulumi.Input<String>? peerVolumeName;
  /// (Output)
  /// Optional. IP address of the subnet.
  final pulumi.Input<String>? subnetIp;

  /// Creates a new [VolumeReplicationHybridPeeringDetail].
  /// [command] (Output)
  /// [commandExpiryTime] (Output)
  /// [passphrase] (Output)
  /// [peerClusterName] (Output)
  /// [peerSvmName] (Output)
  /// [peerVolumeName] (Output)
  /// [subnetIp] (Output)
  const VolumeReplicationHybridPeeringDetail({
    this.command,
    this.commandExpiryTime,
    this.passphrase,
    this.peerClusterName,
    this.peerSvmName,
    this.peerVolumeName,
    this.subnetIp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'command': ?command,
      'commandExpiryTime': ?commandExpiryTime,
      'passphrase': ?passphrase,
      'peerClusterName': ?peerClusterName,
      'peerSvmName': ?peerSvmName,
      'peerVolumeName': ?peerVolumeName,
      'subnetIp': ?subnetIp,
    };
  }

  factory VolumeReplicationHybridPeeringDetail.fromMap(Map<String, dynamic> map) {
    return VolumeReplicationHybridPeeringDetail(
      command: (() { final guardedValue = map['command']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      commandExpiryTime: (() { final guardedValue = map['commandExpiryTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      passphrase: (() { final guardedValue = map['passphrase']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      peerClusterName: (() { final guardedValue = map['peerClusterName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      peerSvmName: (() { final guardedValue = map['peerSvmName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      peerVolumeName: (() { final guardedValue = map['peerVolumeName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetIp: (() { final guardedValue = map['subnetIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

