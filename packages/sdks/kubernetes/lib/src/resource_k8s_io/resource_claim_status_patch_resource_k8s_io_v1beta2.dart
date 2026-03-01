// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'allocated_device_status_patch_resource_k8s_io_v1beta2.dart';
import 'allocation_result_patch_resource_k8s_io_v1beta2.dart';
import 'resource_claim_consumer_reference_patch_resource_k8s_io_v1beta2.dart';

/// ResourceClaimStatus tracks whether the resource has been allocated and what the result of that was.
class ResourceClaimStatusPatchResourceK8sIoV1beta2 {
  /// Allocation is set once the claim has been allocated successfully.
  final AllocationResultPatchResourceK8sIoV1beta2? allocation;
  /// Devices contains the status of each device allocated for this claim, as reported by the driver. This can include driver-specific information. Entries are owned by their respective drivers.
  final List<AllocatedDeviceStatusPatchResourceK8sIoV1beta2>? devices;
  /// ReservedFor indicates which entities are currently allowed to use the claim. A Pod which references a ResourceClaim which is not reserved for that Pod will not be started. A claim that is in use or might be in use because it has been reserved must not get deallocated.
  ///
  /// In a cluster with multiple scheduler instances, two pods might get scheduled concurrently by different schedulers. When they reference the same ResourceClaim which already has reached its maximum number of consumers, only one pod can be scheduled.
  ///
  /// Both schedulers try to add their pod to the claim.status.reservedFor field, but only the update that reaches the API server first gets stored. The other one fails with an error and the scheduler which issued it knows that it must put the pod back into the queue, waiting for the ResourceClaim to become usable again.
  ///
  /// There can be at most 256 such reservations. This may get increased in the future, but not reduced.
  final List<ResourceClaimConsumerReferencePatchResourceK8sIoV1beta2>? reservedFor;

  /// Creates a new [ResourceClaimStatusPatchResourceK8sIoV1beta2].
  /// [allocation] Allocation is set once the claim has been allocated successfully.
  /// [devices] Devices contains the status of each device allocated for this claim, as reported by the driver. This can include driver-specific information. Entries are owned by their respective drivers.
  /// [reservedFor] ReservedFor indicates which entities are currently allowed to use the claim. A Pod which references a ResourceClaim which is not reserved for that Pod will not be started. A claim that is in use or might be in use because it has been reserved must not get deallocated.
  ResourceClaimStatusPatchResourceK8sIoV1beta2({
    this.allocation,
    this.devices,
    this.reservedFor,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocation': ?allocation == null ? null : allocation!.toMap(),
      'devices': ?devices == null ? null : pulumi.Input.encodeList<AllocatedDeviceStatusPatchResourceK8sIoV1beta2, Map<String, dynamic>>(devices!, (value) => value.toMap()),
      'reservedFor': ?reservedFor == null ? null : pulumi.Input.encodeList<ResourceClaimConsumerReferencePatchResourceK8sIoV1beta2, Map<String, dynamic>>(reservedFor!, (value) => value.toMap()),
    };
  }

  factory ResourceClaimStatusPatchResourceK8sIoV1beta2.fromMap(Map<String, dynamic> map) {
    return ResourceClaimStatusPatchResourceK8sIoV1beta2(
      allocation: map['allocation'] == null ? null : AllocationResultPatchResourceK8sIoV1beta2.fromMap((map['allocation'] as Map).cast<String, dynamic>()),
      devices: map['devices'] == null ? null : pulumi.Input.decodeList<AllocatedDeviceStatusPatchResourceK8sIoV1beta2>(map['devices'], (value) => AllocatedDeviceStatusPatchResourceK8sIoV1beta2.fromMap((value as Map).cast<String, dynamic>())),
      reservedFor: map['reservedFor'] == null ? null : pulumi.Input.decodeList<ResourceClaimConsumerReferencePatchResourceK8sIoV1beta2>(map['reservedFor'], (value) => ResourceClaimConsumerReferencePatchResourceK8sIoV1beta2.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

