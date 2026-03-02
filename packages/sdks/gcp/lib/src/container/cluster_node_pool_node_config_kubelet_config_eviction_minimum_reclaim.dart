// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterNodePoolNodeConfigKubeletConfigEvictionMinimumReclaim {
  /// Defines percentage of minimum reclaim for imagefs.available. The value must be a percentage no more than `"10%"`, such as `"5%"`.
  final pulumi.Input<String>? imagefsAvailable;
  /// Defines percentage of minimum reclaim for imagefs.inodesFree. The value must be a percentage no more than `"10%"`, such as `"5%"`.
  final pulumi.Input<String>? imagefsInodesFree;
  /// Defines percentage of minimum reclaim for memory.available. The value must be a percentage no more than `"10%"`, such as `"5%"`.
  final pulumi.Input<String>? memoryAvailable;
  /// Defines percentage of minimum reclaim for nodefs.available. The value must be a percentage no more than `"10%"`, such as `"5%"`.
  final pulumi.Input<String>? nodefsAvailable;
  /// Defines percentage of minimum reclaim for nodefs.inodesFree. The value must be a percentage no more than `"10%"`, such as `"5%"`.
  final pulumi.Input<String>? nodefsInodesFree;
  /// Defines percentage of minimum reclaim for pid.available. The value must be a percentage no more than `"10%"`, such as `"5%"`.
  final pulumi.Input<String>? pidAvailable;

  /// Creates a new [ClusterNodePoolNodeConfigKubeletConfigEvictionMinimumReclaim].
  /// [imagefsAvailable] Defines percentage of minimum reclaim for imagefs.available. The value must be a percentage no more than `"10%"`, such as `"5%"`.
  /// [imagefsInodesFree] Defines percentage of minimum reclaim for imagefs.inodesFree. The value must be a percentage no more than `"10%"`, such as `"5%"`.
  /// [memoryAvailable] Defines percentage of minimum reclaim for memory.available. The value must be a percentage no more than `"10%"`, such as `"5%"`.
  /// [nodefsAvailable] Defines percentage of minimum reclaim for nodefs.available. The value must be a percentage no more than `"10%"`, such as `"5%"`.
  /// [nodefsInodesFree] Defines percentage of minimum reclaim for nodefs.inodesFree. The value must be a percentage no more than `"10%"`, such as `"5%"`.
  /// [pidAvailable] Defines percentage of minimum reclaim for pid.available. The value must be a percentage no more than `"10%"`, such as `"5%"`.
  ClusterNodePoolNodeConfigKubeletConfigEvictionMinimumReclaim({
    this.imagefsAvailable,
    this.imagefsInodesFree,
    this.memoryAvailable,
    this.nodefsAvailable,
    this.nodefsInodesFree,
    this.pidAvailable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'imagefsAvailable': ?imagefsAvailable,
      'imagefsInodesFree': ?imagefsInodesFree,
      'memoryAvailable': ?memoryAvailable,
      'nodefsAvailable': ?nodefsAvailable,
      'nodefsInodesFree': ?nodefsInodesFree,
      'pidAvailable': ?pidAvailable,
    };
  }

  factory ClusterNodePoolNodeConfigKubeletConfigEvictionMinimumReclaim.fromMap(Map<String, dynamic> map) {
    return ClusterNodePoolNodeConfigKubeletConfigEvictionMinimumReclaim(
      imagefsAvailable: map['imagefsAvailable'] == null ? null : (map['imagefsAvailable'] as String).input(),
      imagefsInodesFree: map['imagefsInodesFree'] == null ? null : (map['imagefsInodesFree'] as String).input(),
      memoryAvailable: map['memoryAvailable'] == null ? null : (map['memoryAvailable'] as String).input(),
      nodefsAvailable: map['nodefsAvailable'] == null ? null : (map['nodefsAvailable'] as String).input(),
      nodefsInodesFree: map['nodefsInodesFree'] == null ? null : (map['nodefsInodesFree'] as String).input(),
      pidAvailable: map['pidAvailable'] == null ? null : (map['pidAvailable'] as String).input(),
    );
  }
}

