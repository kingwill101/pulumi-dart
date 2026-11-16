// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiModelDevelopmentClusterClusterStatusNodesStatusPhysicalHost {
  /// (Output)
  /// Name of the block.
  final pulumi.Input<String?>? blockId;
  /// (Output)
  /// Name of the physical cluster.
  final pulumi.Input<String?>? clusterName;
  /// (Output)
  /// Name of the host.
  final pulumi.Input<String?>? hostId;
  /// (Output)
  /// Name of the sub-block.
  final pulumi.Input<String?>? subblockId;

  /// Creates a new [AiModelDevelopmentClusterClusterStatusNodesStatusPhysicalHost].
  /// [blockId] (Output)
  /// [clusterName] (Output)
  /// [hostId] (Output)
  /// [subblockId] (Output)
  const AiModelDevelopmentClusterClusterStatusNodesStatusPhysicalHost({
    this.blockId,
    this.clusterName,
    this.hostId,
    this.subblockId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blockId': ?blockId,
      'clusterName': ?clusterName,
      'hostId': ?hostId,
      'subblockId': ?subblockId,
    };
  }

  factory AiModelDevelopmentClusterClusterStatusNodesStatusPhysicalHost.fromMap(Map<String, dynamic> map) {
    return AiModelDevelopmentClusterClusterStatusNodesStatusPhysicalHost(
      blockId: (() { final guardedValue = map['blockId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clusterName: (() { final guardedValue = map['clusterName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostId: (() { final guardedValue = map['hostId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subblockId: (() { final guardedValue = map['subblockId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
