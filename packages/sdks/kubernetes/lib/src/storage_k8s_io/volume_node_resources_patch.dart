// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// VolumeNodeResources is a set of resource limits for scheduling of volumes.
class VolumeNodeResourcesPatch {
  /// count indicates the maximum number of unique volumes managed by the CSI driver that can be used on a node. A volume that is both attached and mounted on a node is considered to be used once, not twice. The same rule applies for a unique volume that is shared among multiple pods on the same node. If this field is not specified, then the supported number of volumes on this node is unbounded.
  final pulumi.Input<int?>? count;

  /// Creates a new [VolumeNodeResourcesPatch].
  /// [count] count indicates the maximum number of unique volumes managed by the CSI driver that can be used on a node. A volume that is both attached and mounted on a node is considered to be used once, not twice. The same rule applies for a unique volume that is shared among multiple pods on the same node. If this field is not specified, then the supported number of volumes on this node is unbounded.
  const VolumeNodeResourcesPatch({
    this.count,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': ?count,
    };
  }

  factory VolumeNodeResourcesPatch.fromMap(Map<String, dynamic> map) {
    return VolumeNodeResourcesPatch(
      count: (() { final guardedValue = map['count']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
