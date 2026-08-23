// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'modify_volume_status.dart';
import 'persistent_volume_claim_condition.dart';

/// PersistentVolumeClaimStatus is the current status of a persistent volume claim.
class PersistentVolumeClaimStatus {
  /// accessModes contains the actual access modes the volume backing the PVC has. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes-1
  final pulumi.Input<List<String>>? accessModes;
  /// allocatedResourceStatuses stores status of resource being resized for the given PVC. Key names follow standard Kubernetes label syntax. Valid values are either:
  /// * Un-prefixed keys:
  /// - storage - the capacity of the volume.
  /// * Custom resources must use implementation-defined prefixed names such as "example.com/my-custom-resource"
  /// Apart from above values - keys that are unprefixed or have kubernetes.io prefix are considered reserved and hence may not be used.
  ///
  /// ClaimResourceStatus can be in any of following states:
  /// - ControllerResizeInProgress:
  /// State set when resize controller starts resizing the volume in control-plane.
  /// - ControllerResizeFailed:
  /// State set when resize has failed in resize controller with a terminal error.
  /// - NodeResizePending:
  /// State set when resize controller has finished resizing the volume but further resizing of
  /// volume is needed on the node.
  /// - NodeResizeInProgress:
  /// State set when kubelet starts resizing the volume.
  /// - NodeResizeFailed:
  /// State set when resizing has failed in kubelet with a terminal error. Transient errors don't set
  /// NodeResizeFailed.
  /// For example: if expanding a PVC for more capacity - this field can be one of the following states:
  /// - pvc.status.allocatedResourceStatus['storage'] = "ControllerResizeInProgress"
  /// - pvc.status.allocatedResourceStatus['storage'] = "ControllerResizeFailed"
  /// - pvc.status.allocatedResourceStatus['storage'] = "NodeResizePending"
  /// - pvc.status.allocatedResourceStatus['storage'] = "NodeResizeInProgress"
  /// - pvc.status.allocatedResourceStatus['storage'] = "NodeResizeFailed"
  /// When this field is not set, it means that no resize operation is in progress for the given PVC.
  ///
  /// A controller that receives PVC update with previously unknown resourceName or ClaimResourceStatus should ignore the update for the purpose it was designed. For example - a controller that only is responsible for resizing capacity of the volume, should ignore PVC updates that change other valid resources associated with PVC.
  final pulumi.Input<Map<String, String>>? allocatedResourceStatuses;
  /// allocatedResources tracks the resources allocated to a PVC including its capacity. Key names follow standard Kubernetes label syntax. Valid values are either:
  /// * Un-prefixed keys:
  /// - storage - the capacity of the volume.
  /// * Custom resources must use implementation-defined prefixed names such as "example.com/my-custom-resource"
  /// Apart from above values - keys that are unprefixed or have kubernetes.io prefix are considered reserved and hence may not be used.
  ///
  /// Capacity reported here may be larger than the actual capacity when a volume expansion operation is requested. For storage quota, the larger value from allocatedResources and PVC.spec.resources is used. If allocatedResources is not set, PVC.spec.resources alone is used for quota calculation. If a volume expansion capacity request is lowered, allocatedResources is only lowered if there are no expansion operations in progress and if the actual volume capacity is equal or lower than the requested capacity.
  ///
  /// A controller that receives PVC update with previously unknown resourceName should ignore the update for the purpose it was designed. For example - a controller that only is responsible for resizing capacity of the volume, should ignore PVC updates that change other valid resources associated with PVC.
  final pulumi.Input<Map<String, String>>? allocatedResources;
  /// capacity represents the actual resources of the underlying volume.
  final pulumi.Input<Map<String, String>>? capacity;
  /// conditions is the current Condition of persistent volume claim. If underlying persistent volume is being resized then the Condition will be set to 'Resizing'.
  final pulumi.Input<List<PersistentVolumeClaimCondition>>? conditions;
  /// currentVolumeAttributesClassName is the current name of the VolumeAttributesClass the PVC is using. When unset, there is no VolumeAttributeClass applied to this PersistentVolumeClaim
  final pulumi.Input<String>? currentVolumeAttributesClassName;
  /// ModifyVolumeStatus represents the status object of ControllerModifyVolume operation. When this is unset, there is no ModifyVolume operation being attempted.
  final pulumi.Input<ModifyVolumeStatus>? modifyVolumeStatus;
  /// phase represents the current phase of PersistentVolumeClaim.
  final pulumi.Input<String>? phase;
  /// resizeStatus stores status of resize operation. ResizeStatus is not set by default but when expansion is complete resizeStatus is set to empty string by resize controller or kubelet. This is an alpha field and requires enabling RecoverVolumeExpansionFailure feature.
  final pulumi.Input<String>? resizeStatus;

  /// Creates a new [PersistentVolumeClaimStatus].
  /// [accessModes] accessModes contains the actual access modes the volume backing the PVC has. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes-1
  /// [allocatedResourceStatuses] allocatedResourceStatuses stores status of resource being resized for the given PVC. Key names follow standard Kubernetes label syntax. Valid values are either:
  /// [allocatedResources] allocatedResources tracks the resources allocated to a PVC including its capacity. Key names follow standard Kubernetes label syntax. Valid values are either:
  /// [capacity] capacity represents the actual resources of the underlying volume.
  /// [conditions] conditions is the current Condition of persistent volume claim. If underlying persistent volume is being resized then the Condition will be set to 'Resizing'.
  /// [currentVolumeAttributesClassName] currentVolumeAttributesClassName is the current name of the VolumeAttributesClass the PVC is using. When unset, there is no VolumeAttributeClass applied to this PersistentVolumeClaim
  /// [modifyVolumeStatus] ModifyVolumeStatus represents the status object of ControllerModifyVolume operation. When this is unset, there is no ModifyVolume operation being attempted.
  /// [phase] phase represents the current phase of PersistentVolumeClaim.
  /// [resizeStatus] resizeStatus stores status of resize operation. ResizeStatus is not set by default but when expansion is complete resizeStatus is set to empty string by resize controller or kubelet. This is an alpha field and requires enabling RecoverVolumeExpansionFailure feature.
  const PersistentVolumeClaimStatus({
    this.accessModes,
    this.allocatedResourceStatuses,
    this.allocatedResources,
    this.capacity,
    this.conditions,
    this.currentVolumeAttributesClassName,
    this.modifyVolumeStatus,
    this.phase,
    this.resizeStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessModes': ?accessModes,
      'allocatedResourceStatuses': ?allocatedResourceStatuses,
      'allocatedResources': ?allocatedResources,
      'capacity': ?capacity,
      'conditions': ?pulumi.Input.mapOptionalInputValue<List<PersistentVolumeClaimCondition>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<PersistentVolumeClaimCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'currentVolumeAttributesClassName': ?currentVolumeAttributesClassName,
      'modifyVolumeStatus': ?pulumi.Input.mapOptionalInputValue<ModifyVolumeStatus, Map<String, dynamic>>(modifyVolumeStatus, (value) => value.toMap()),
      'phase': ?phase,
      'resizeStatus': ?resizeStatus,
    };
  }

  factory PersistentVolumeClaimStatus.fromMap(Map<String, dynamic> map) {
    return PersistentVolumeClaimStatus(
      accessModes: (() { final guardedValue = map['accessModes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      allocatedResourceStatuses: (() { final guardedValue = map['allocatedResourceStatuses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      allocatedResources: (() { final guardedValue = map['allocatedResources']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      capacity: (() { final guardedValue = map['capacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      conditions: (() { final guardedValue = map['conditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PersistentVolumeClaimCondition>(guardedValue, (value) => PersistentVolumeClaimCondition.fromMap((value as Map).cast<String, dynamic>()))); })(),
      currentVolumeAttributesClassName: (() { final guardedValue = map['currentVolumeAttributesClassName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      modifyVolumeStatus: (() { final guardedValue = map['modifyVolumeStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ModifyVolumeStatus.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      phase: (() { final guardedValue = map['phase']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resizeStatus: (() { final guardedValue = map['resizeStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
