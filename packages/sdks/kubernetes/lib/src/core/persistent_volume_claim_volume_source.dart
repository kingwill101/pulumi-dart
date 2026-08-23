// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// PersistentVolumeClaimVolumeSource references the user's PVC in the same namespace. This volume finds the bound PV and mounts that volume for the pod. A PersistentVolumeClaimVolumeSource is, essentially, a wrapper around another type of volume that is owned by someone else (the system).
class PersistentVolumeClaimVolumeSource {
  /// claimName is the name of a PersistentVolumeClaim in the same namespace as the pod using this volume. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistentvolumeclaims
  final pulumi.Input<String> claimName;
  /// readOnly Will force the ReadOnly setting in VolumeMounts. Default false.
  final pulumi.Input<bool>? readOnly;

  /// Creates a new [PersistentVolumeClaimVolumeSource].
  /// [claimName] claimName is the name of a PersistentVolumeClaim in the same namespace as the pod using this volume. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistentvolumeclaims
  /// [readOnly] readOnly Will force the ReadOnly setting in VolumeMounts. Default false.
  const PersistentVolumeClaimVolumeSource({
    required this.claimName,
    this.readOnly,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'claimName': claimName,
      'readOnly': ?readOnly,
    };
  }

  factory PersistentVolumeClaimVolumeSource.fromMap(Map<String, dynamic> map) {
    return PersistentVolumeClaimVolumeSource(
      claimName: pulumi.Input.fromValue(map['claimName'] as String),
      readOnly: (() { final guardedValue = map['readOnly']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
