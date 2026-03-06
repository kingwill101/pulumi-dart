// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// StatefulSetPersistentVolumeClaimRetentionPolicy describes the policy used for PVCs created from the StatefulSet VolumeClaimTemplates.
class StatefulSetPersistentVolumeClaimRetentionPolicy {
  /// WhenDeleted specifies what happens to PVCs created from StatefulSet VolumeClaimTemplates when the StatefulSet is deleted. The default policy of `Retain` causes PVCs to not be affected by StatefulSet deletion. The `Delete` policy causes those PVCs to be deleted.
  final pulumi.Input<String>? whenDeleted;
  /// WhenScaled specifies what happens to PVCs created from StatefulSet VolumeClaimTemplates when the StatefulSet is scaled down. The default policy of `Retain` causes PVCs to not be affected by a scaledown. The `Delete` policy causes the associated PVCs for any excess pods above the replica count to be deleted.
  final pulumi.Input<String>? whenScaled;

  /// Creates a new [StatefulSetPersistentVolumeClaimRetentionPolicy].
  /// [whenDeleted] WhenDeleted specifies what happens to PVCs created from StatefulSet VolumeClaimTemplates when the StatefulSet is deleted. The default policy of `Retain` causes PVCs to not be affected by StatefulSet deletion. The `Delete` policy causes those PVCs to be deleted.
  /// [whenScaled] WhenScaled specifies what happens to PVCs created from StatefulSet VolumeClaimTemplates when the StatefulSet is scaled down. The default policy of `Retain` causes PVCs to not be affected by a scaledown. The `Delete` policy causes the associated PVCs for any excess pods above the replica count to be deleted.
  const StatefulSetPersistentVolumeClaimRetentionPolicy({
    this.whenDeleted,
    this.whenScaled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'whenDeleted': ?whenDeleted,
      'whenScaled': ?whenScaled,
    };
  }

  factory StatefulSetPersistentVolumeClaimRetentionPolicy.fromMap(Map<String, dynamic> map) {
    return StatefulSetPersistentVolumeClaimRetentionPolicy(
      whenDeleted: (() { final guardedValue = map['whenDeleted']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      whenScaled: (() { final guardedValue = map['whenScaled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

