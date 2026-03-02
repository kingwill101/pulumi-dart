// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ModifyVolumeStatus represents the status object of ControllerModifyVolume operation
class ModifyVolumeStatus {
  /// status is the status of the ControllerModifyVolume operation. It can be in any of following states:
  /// - Pending
  /// Pending indicates that the PersistentVolumeClaim cannot be modified due to unmet requirements, such as
  /// the specified VolumeAttributesClass not existing.
  /// - InProgress
  /// InProgress indicates that the volume is being modified.
  /// - Infeasible
  /// Infeasible indicates that the request has been rejected as invalid by the CSI driver. To
  /// resolve the error, a valid VolumeAttributesClass needs to be specified.
  /// Note: New statuses can be added in the future. Consumers should check for unknown statuses and fail appropriately.
  final pulumi.Input<String> status;
  /// targetVolumeAttributesClassName is the name of the VolumeAttributesClass the PVC currently being reconciled
  final pulumi.Input<String>? targetVolumeAttributesClassName;

  /// Creates a new [ModifyVolumeStatus].
  /// [status] status is the status of the ControllerModifyVolume operation. It can be in any of following states:
  /// [targetVolumeAttributesClassName] targetVolumeAttributesClassName is the name of the VolumeAttributesClass the PVC currently being reconciled
  ModifyVolumeStatus({
    required this.status,
    this.targetVolumeAttributesClassName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'status': status,
      'targetVolumeAttributesClassName': ?targetVolumeAttributesClassName,
    };
  }

  factory ModifyVolumeStatus.fromMap(Map<String, dynamic> map) {
    return ModifyVolumeStatus(
      status: (map['status'] as String).input(),
      targetVolumeAttributesClassName: map['targetVolumeAttributesClassName'] == null ? null : (map['targetVolumeAttributesClassName'] as String).input(),
    );
  }
}

