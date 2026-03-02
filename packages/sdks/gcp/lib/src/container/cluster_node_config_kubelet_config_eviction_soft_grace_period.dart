// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterNodeConfigKubeletConfigEvictionSoftGracePeriod {
  /// Defines grace period for the imagefs.available soft eviction threshold. The value must be a positive duration string no more than `"5m"`.
  final pulumi.Input<String>? imagefsAvailable;
  /// Defines grace period for the imagefs.inodesFree soft eviction threshold. The value must be a positive duration string no more than `"5m"`.
  final pulumi.Input<String>? imagefsInodesFree;
  /// Defines grace period for the memory.available soft eviction threshold. The value must be a positive duration string no more than `"5m"`, such as `"30s"`, `"1m30s"`, `"2.5m"`. Valid time units are "ns", "us" (or "µs"), "ms", "s", "m", "h".
  final pulumi.Input<String>? memoryAvailable;
  /// Defines grace period for the nodefs.available soft eviction threshold. The value must be a positive duration string no more than `"5m"`.
  final pulumi.Input<String>? nodefsAvailable;
  /// Defines grace period for the nodefs.inodesFree soft eviction threshold. The value must be a positive duration string no more than `"5m"`.
  final pulumi.Input<String>? nodefsInodesFree;
  /// Defines grace period for the pid.available soft eviction threshold. The value must be a positive duration string no more than `"5m"`.
  final pulumi.Input<String>? pidAvailable;

  /// Creates a new [ClusterNodeConfigKubeletConfigEvictionSoftGracePeriod].
  /// [imagefsAvailable] Defines grace period for the imagefs.available soft eviction threshold. The value must be a positive duration string no more than `"5m"`.
  /// [imagefsInodesFree] Defines grace period for the imagefs.inodesFree soft eviction threshold. The value must be a positive duration string no more than `"5m"`.
  /// [memoryAvailable] Defines grace period for the memory.available soft eviction threshold. The value must be a positive duration string no more than `"5m"`, such as `"30s"`, `"1m30s"`, `"2.5m"`. Valid time units are "ns", "us" (or "µs"), "ms", "s", "m", "h".
  /// [nodefsAvailable] Defines grace period for the nodefs.available soft eviction threshold. The value must be a positive duration string no more than `"5m"`.
  /// [nodefsInodesFree] Defines grace period for the nodefs.inodesFree soft eviction threshold. The value must be a positive duration string no more than `"5m"`.
  /// [pidAvailable] Defines grace period for the pid.available soft eviction threshold. The value must be a positive duration string no more than `"5m"`.
  ClusterNodeConfigKubeletConfigEvictionSoftGracePeriod({
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

  factory ClusterNodeConfigKubeletConfigEvictionSoftGracePeriod.fromMap(Map<String, dynamic> map) {
    return ClusterNodeConfigKubeletConfigEvictionSoftGracePeriod(
      imagefsAvailable: map['imagefsAvailable'] == null ? null : (map['imagefsAvailable']! as String).input(),
      imagefsInodesFree: map['imagefsInodesFree'] == null ? null : (map['imagefsInodesFree']! as String).input(),
      memoryAvailable: map['memoryAvailable'] == null ? null : (map['memoryAvailable']! as String).input(),
      nodefsAvailable: map['nodefsAvailable'] == null ? null : (map['nodefsAvailable']! as String).input(),
      nodefsInodesFree: map['nodefsInodesFree'] == null ? null : (map['nodefsInodesFree']! as String).input(),
      pidAvailable: map['pidAvailable'] == null ? null : (map['pidAvailable']! as String).input(),
    );
  }
}

