// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterNodeConfigKubeletConfigEvictionSoftGracePeriod {
  /// Defines grace period for the imagefs.available soft eviction threshold
  final pulumi.Input<String> imagefsAvailable;

  /// Defines grace period for the imagefs.inodesFree soft eviction threshold.
  final pulumi.Input<String> imagefsInodesFree;

  /// Defines grace period for the memory.available soft eviction threshold.
  final pulumi.Input<String> memoryAvailable;

  /// Defines grace period for the nodefs.available soft eviction threshold.
  final pulumi.Input<String> nodefsAvailable;

  /// Defines grace period for the nodefs.inodesFree soft eviction threshold.
  final pulumi.Input<String> nodefsInodesFree;

  /// Defines grace period for the pid.available soft eviction threshold.
  final pulumi.Input<String> pidAvailable;

  /// Creates a new [GetClusterNodeConfigKubeletConfigEvictionSoftGracePeriod].
  /// [imagefsAvailable] Defines grace period for the imagefs.available soft eviction threshold
  /// [imagefsInodesFree] Defines grace period for the imagefs.inodesFree soft eviction threshold.
  /// [memoryAvailable] Defines grace period for the memory.available soft eviction threshold.
  /// [nodefsAvailable] Defines grace period for the nodefs.available soft eviction threshold.
  /// [nodefsInodesFree] Defines grace period for the nodefs.inodesFree soft eviction threshold.
  /// [pidAvailable] Defines grace period for the pid.available soft eviction threshold.
  GetClusterNodeConfigKubeletConfigEvictionSoftGracePeriod({
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

  factory GetClusterNodeConfigKubeletConfigEvictionSoftGracePeriod.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetClusterNodeConfigKubeletConfigEvictionSoftGracePeriod(
      imagefsAvailable: pulumi.Input.fromValue(
        map['imagefsAvailable'] as String,
      ),
      imagefsInodesFree: pulumi.Input.fromValue(
        map['imagefsInodesFree'] as String,
      ),
      memoryAvailable: pulumi.Input.fromValue(map['memoryAvailable'] as String),
      nodefsAvailable: pulumi.Input.fromValue(map['nodefsAvailable'] as String),
      nodefsInodesFree: pulumi.Input.fromValue(
        map['nodefsInodesFree'] as String,
      ),
      pidAvailable: pulumi.Input.fromValue(map['pidAvailable'] as String),
    );
  }
}
