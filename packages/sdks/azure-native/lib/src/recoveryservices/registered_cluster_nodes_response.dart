// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Extended location of the resource.
class RegisteredClusterNodesResponse {
  /// The BIOS ID.
  final pulumi.Input<String>? biosId;
  /// The cluster node name.
  final pulumi.Input<String>? clusterNodeFqdn;
  /// A value indicating whether this represents virtual entity hosting all the shared disks.
  final pulumi.Input<bool>? isSharedDiskVirtualNode;
  /// The machine ID.
  final pulumi.Input<String>? machineId;

  /// Creates a new [RegisteredClusterNodesResponse].
  /// [biosId] The BIOS ID.
  /// [clusterNodeFqdn] The cluster node name.
  /// [isSharedDiskVirtualNode] A value indicating whether this represents virtual entity hosting all the shared disks.
  /// [machineId] The machine ID.
  RegisteredClusterNodesResponse({
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

  factory RegisteredClusterNodesResponse.fromMap(Map<String, dynamic> map) {
    return RegisteredClusterNodesResponse(
      biosId: (() { final guardedValue = map['biosId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clusterNodeFqdn: (() { final guardedValue = map['clusterNodeFqdn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isSharedDiskVirtualNode: (() { final guardedValue = map['isSharedDiskVirtualNode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      machineId: (() { final guardedValue = map['machineId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

