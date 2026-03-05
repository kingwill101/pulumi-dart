// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterNodePoolNodeConfigKubeletConfigEvictionSoft {
  /// Defines percentage of soft eviction threshold for imagefs.available.
  final pulumi.Input<String> imagefsAvailable;
  /// Defines percentage of soft eviction threshold for imagefs.inodesFree.
  final pulumi.Input<String> imagefsInodesFree;
  /// Defines quantity of soft eviction threshold for memory.available.
  final pulumi.Input<String> memoryAvailable;
  /// Defines percentage of soft eviction threshold for nodefs.available.
  final pulumi.Input<String> nodefsAvailable;
  /// Defines percentage of soft eviction threshold for nodefs.inodesFree.
  final pulumi.Input<String> nodefsInodesFree;
  /// Defines percentage of soft eviction threshold for pid.available.
  final pulumi.Input<String> pidAvailable;

  /// Creates a new [GetClusterNodePoolNodeConfigKubeletConfigEvictionSoft].
  /// [imagefsAvailable] Defines percentage of soft eviction threshold for imagefs.available.
  /// [imagefsInodesFree] Defines percentage of soft eviction threshold for imagefs.inodesFree.
  /// [memoryAvailable] Defines quantity of soft eviction threshold for memory.available.
  /// [nodefsAvailable] Defines percentage of soft eviction threshold for nodefs.available.
  /// [nodefsInodesFree] Defines percentage of soft eviction threshold for nodefs.inodesFree.
  /// [pidAvailable] Defines percentage of soft eviction threshold for pid.available.
  GetClusterNodePoolNodeConfigKubeletConfigEvictionSoft({
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

  factory GetClusterNodePoolNodeConfigKubeletConfigEvictionSoft.fromMap(Map<String, dynamic> map) {
    return GetClusterNodePoolNodeConfigKubeletConfigEvictionSoft(
      imagefsAvailable: pulumi.Input.fromValue(map['imagefsAvailable'] as String),
      imagefsInodesFree: pulumi.Input.fromValue(map['imagefsInodesFree'] as String),
      memoryAvailable: pulumi.Input.fromValue(map['memoryAvailable'] as String),
      nodefsAvailable: pulumi.Input.fromValue(map['nodefsAvailable'] as String),
      nodefsInodesFree: pulumi.Input.fromValue(map['nodefsInodesFree'] as String),
      pidAvailable: pulumi.Input.fromValue(map['pidAvailable'] as String),
    );
  }
}

