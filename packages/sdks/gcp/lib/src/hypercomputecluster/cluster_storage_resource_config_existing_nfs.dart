// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterStorageResourceConfigExistingNfs {
  /// Options to mount the NFS share, as expected by fsMntops field in fstab(5),
  /// for example: "rw,vers=4.1,nconnect=2,noatime".
  final pulumi.Input<String?>? mountOptions;
  /// Remote mount path of the NFS share.
  final pulumi.Input<String> remoteMount;
  /// Server IP address of the NFS share.
  final pulumi.Input<String> serverIpAddress;

  /// Creates a new [ClusterStorageResourceConfigExistingNfs].
  /// [mountOptions] Options to mount the NFS share, as expected by fsMntops field in fstab(5),
  /// [remoteMount] Remote mount path of the NFS share.
  /// [serverIpAddress] Server IP address of the NFS share.
  const ClusterStorageResourceConfigExistingNfs({
    this.mountOptions,
    required this.remoteMount,
    required this.serverIpAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mountOptions': ?mountOptions,
      'remoteMount': remoteMount,
      'serverIpAddress': serverIpAddress,
    };
  }

  factory ClusterStorageResourceConfigExistingNfs.fromMap(Map<String, dynamic> map) {
    return ClusterStorageResourceConfigExistingNfs(
      mountOptions: (() { final guardedValue = map['mountOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      remoteMount: pulumi.Input.fromValue(map['remoteMount'] as String),
      serverIpAddress: pulumi.Input.fromValue(map['serverIpAddress'] as String),
    );
  }
}
