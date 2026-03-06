// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterNodeConfigKubeletConfigEvictionMinimumReclaim {
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

  /// Creates a new [ClusterNodeConfigKubeletConfigEvictionMinimumReclaim].
  /// [imagefsAvailable] Defines percentage of minimum reclaim for imagefs.available. The value must be a percentage no more than `"10%"`, such as `"5%"`.
  /// [imagefsInodesFree] Defines percentage of minimum reclaim for imagefs.inodesFree. The value must be a percentage no more than `"10%"`, such as `"5%"`.
  /// [memoryAvailable] Defines percentage of minimum reclaim for memory.available. The value must be a percentage no more than `"10%"`, such as `"5%"`.
  /// [nodefsAvailable] Defines percentage of minimum reclaim for nodefs.available. The value must be a percentage no more than `"10%"`, such as `"5%"`.
  /// [nodefsInodesFree] Defines percentage of minimum reclaim for nodefs.inodesFree. The value must be a percentage no more than `"10%"`, such as `"5%"`.
  /// [pidAvailable] Defines percentage of minimum reclaim for pid.available. The value must be a percentage no more than `"10%"`, such as `"5%"`.
  const ClusterNodeConfigKubeletConfigEvictionMinimumReclaim({
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

  factory ClusterNodeConfigKubeletConfigEvictionMinimumReclaim.fromMap(Map<String, dynamic> map) {
    return ClusterNodeConfigKubeletConfigEvictionMinimumReclaim(
      imagefsAvailable: (() { final guardedValue = map['imagefsAvailable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      imagefsInodesFree: (() { final guardedValue = map['imagefsInodesFree']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      memoryAvailable: (() { final guardedValue = map['memoryAvailable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodefsAvailable: (() { final guardedValue = map['nodefsAvailable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodefsInodesFree: (() { final guardedValue = map['nodefsInodesFree']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pidAvailable: (() { final guardedValue = map['pidAvailable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

