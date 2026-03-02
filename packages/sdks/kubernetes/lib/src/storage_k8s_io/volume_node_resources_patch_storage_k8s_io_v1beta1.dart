// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// VolumeNodeResources is a set of resource limits for scheduling of volumes.
class VolumeNodeResourcesPatchStorageK8sIoV1beta1 {
  /// Maximum number of unique volumes managed by the CSI driver that can be used on a node. A volume that is both attached and mounted on a node is considered to be used once, not twice. The same rule applies for a unique volume that is shared among multiple pods on the same node. If this field is nil, then the supported number of volumes on this node is unbounded.
  final pulumi.Input<int>? count;

  /// Creates a new [VolumeNodeResourcesPatchStorageK8sIoV1beta1].
  /// [count] Maximum number of unique volumes managed by the CSI driver that can be used on a node. A volume that is both attached and mounted on a node is considered to be used once, not twice. The same rule applies for a unique volume that is shared among multiple pods on the same node. If this field is nil, then the supported number of volumes on this node is unbounded.
  VolumeNodeResourcesPatchStorageK8sIoV1beta1({
    this.count,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': ?count,
    };
  }

  factory VolumeNodeResourcesPatchStorageK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return VolumeNodeResourcesPatchStorageK8sIoV1beta1(
      count: map['count'] == null ? null : (map['count']! as int).input(),
    );
  }
}

