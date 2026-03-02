// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Extended location of the resource.
class RegisteredClusterNodes {
  /// The BIOS ID.
  final pulumi.Input<String>? biosId;
  /// The cluster node name.
  final pulumi.Input<String>? clusterNodeFqdn;
  /// A value indicating whether this represents virtual entity hosting all the shared disks.
  final pulumi.Input<bool>? isSharedDiskVirtualNode;
  /// The machine ID.
  final pulumi.Input<String>? machineId;

  /// Creates a new [RegisteredClusterNodes].
  /// [biosId] The BIOS ID.
  /// [clusterNodeFqdn] The cluster node name.
  /// [isSharedDiskVirtualNode] A value indicating whether this represents virtual entity hosting all the shared disks.
  /// [machineId] The machine ID.
  RegisteredClusterNodes({
    this.biosId,
    this.clusterNodeFqdn,
    this.isSharedDiskVirtualNode,
    this.machineId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'biosId': ?biosId,
      'clusterNodeFqdn': ?clusterNodeFqdn,
      'isSharedDiskVirtualNode': ?isSharedDiskVirtualNode,
      'machineId': ?machineId,
    };
  }

  factory RegisteredClusterNodes.fromMap(Map<String, dynamic> map) {
    return RegisteredClusterNodes(
      biosId: map['biosId'] == null ? null : (map['biosId'] as String).input(),
      clusterNodeFqdn: map['clusterNodeFqdn'] == null ? null : (map['clusterNodeFqdn'] as String).input(),
      isSharedDiskVirtualNode: map['isSharedDiskVirtualNode'] == null ? null : (map['isSharedDiskVirtualNode'] as bool).input(),
      machineId: map['machineId'] == null ? null : (map['machineId'] as String).input(),
    );
  }
}

