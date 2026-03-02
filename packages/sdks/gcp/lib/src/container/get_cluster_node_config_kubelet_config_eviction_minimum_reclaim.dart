// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterNodeConfigKubeletConfigEvictionMinimumReclaim {
  /// Defines percentage of minimum reclaim for imagefs.available.
  final pulumi.Input<String> imagefsAvailable;
  /// Defines percentage of minimum reclaim for imagefs.inodesFree.
  final pulumi.Input<String> imagefsInodesFree;
  /// Defines percentage of minimum reclaim for memory.available.
  final pulumi.Input<String> memoryAvailable;
  /// Defines percentage of minimum reclaim for nodefs.available.
  final pulumi.Input<String> nodefsAvailable;
  /// Defines percentage of minimum reclaim for nodefs.inodesFree.
  final pulumi.Input<String> nodefsInodesFree;
  /// Defines percentage of minimum reclaim for pid.available.
  final pulumi.Input<String> pidAvailable;

  /// Creates a new [GetClusterNodeConfigKubeletConfigEvictionMinimumReclaim].
  /// [imagefsAvailable] Defines percentage of minimum reclaim for imagefs.available.
  /// [imagefsInodesFree] Defines percentage of minimum reclaim for imagefs.inodesFree.
  /// [memoryAvailable] Defines percentage of minimum reclaim for memory.available.
  /// [nodefsAvailable] Defines percentage of minimum reclaim for nodefs.available.
  /// [nodefsInodesFree] Defines percentage of minimum reclaim for nodefs.inodesFree.
  /// [pidAvailable] Defines percentage of minimum reclaim for pid.available.
  GetClusterNodeConfigKubeletConfigEvictionMinimumReclaim({
    required this.imagefsAvailable,
    required this.imagefsInodesFree,
    required this.memoryAvailable,
    required this.nodefsAvailable,
    required this.nodefsInodesFree,
    required this.pidAvailable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'imagefsAvailable': imagefsAvailable,
      'imagefsInodesFree': imagefsInodesFree,
      'memoryAvailable': memoryAvailable,
      'nodefsAvailable': nodefsAvailable,
      'nodefsInodesFree': nodefsInodesFree,
      'pidAvailable': pidAvailable,
    };
  }

  factory GetClusterNodeConfigKubeletConfigEvictionMinimumReclaim.fromMap(Map<String, dynamic> map) {
    return GetClusterNodeConfigKubeletConfigEvictionMinimumReclaim(
      imagefsAvailable: (map['imagefsAvailable'] as String).input(),
      imagefsInodesFree: (map['imagefsInodesFree'] as String).input(),
      memoryAvailable: (map['memoryAvailable'] as String).input(),
      nodefsAvailable: (map['nodefsAvailable'] as String).input(),
      nodefsInodesFree: (map['nodefsInodesFree'] as String).input(),
      pidAvailable: (map['pidAvailable'] as String).input(),
    );
  }
}

