// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NodePoolNodeConfigKubeletConfigEvictionMinimumReclaim {
  /// Defines percentage of minimum reclaim for imagefs.available.
  final pulumi.Input<String>? imagefsAvailable;
  /// Defines percentage of minimum reclaim for imagefs.inodesFree.
  final pulumi.Input<String>? imagefsInodesFree;
  /// Defines percentage of minimum reclaim for memory.available.
  final pulumi.Input<String>? memoryAvailable;
  /// Defines percentage of minimum reclaim for nodefs.available.
  final pulumi.Input<String>? nodefsAvailable;
  /// Defines percentage of minimum reclaim for nodefs.inodesFree.
  final pulumi.Input<String>? nodefsInodesFree;
  /// Defines percentage of minimum reclaim for pid.available.
  final pulumi.Input<String>? pidAvailable;

  /// Creates a new [NodePoolNodeConfigKubeletConfigEvictionMinimumReclaim].
  /// [imagefsAvailable] Defines percentage of minimum reclaim for imagefs.available.
  /// [imagefsInodesFree] Defines percentage of minimum reclaim for imagefs.inodesFree.
  /// [memoryAvailable] Defines percentage of minimum reclaim for memory.available.
  /// [nodefsAvailable] Defines percentage of minimum reclaim for nodefs.available.
  /// [nodefsInodesFree] Defines percentage of minimum reclaim for nodefs.inodesFree.
  /// [pidAvailable] Defines percentage of minimum reclaim for pid.available.
  NodePoolNodeConfigKubeletConfigEvictionMinimumReclaim({
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

  factory NodePoolNodeConfigKubeletConfigEvictionMinimumReclaim.fromMap(Map<String, dynamic> map) {
    return NodePoolNodeConfigKubeletConfigEvictionMinimumReclaim(
      imagefsAvailable: (() { final guardedValue = map['imagefsAvailable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      imagefsInodesFree: (() { final guardedValue = map['imagefsInodesFree']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      memoryAvailable: (() { final guardedValue = map['memoryAvailable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodefsAvailable: (() { final guardedValue = map['nodefsAvailable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodefsInodesFree: (() { final guardedValue = map['nodefsInodesFree']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pidAvailable: (() { final guardedValue = map['pidAvailable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

