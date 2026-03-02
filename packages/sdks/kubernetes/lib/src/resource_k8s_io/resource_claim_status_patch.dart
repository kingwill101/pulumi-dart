// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'allocated_device_status_patch.dart';
import 'allocation_result_patch.dart';
import 'resource_claim_consumer_reference_patch.dart';

/// ResourceClaimStatus tracks whether the resource has been allocated and what the result of that was.
class ResourceClaimStatusPatch {
  /// Allocation is set once the claim has been allocated successfully.
  final pulumi.Input<AllocationResultPatch>? allocation;
  /// Devices contains the status of each device allocated for this claim, as reported by the driver. This can include driver-specific information. Entries are owned by their respective drivers.
  final pulumi.Input<List<AllocatedDeviceStatusPatch>>? devices;
  /// ReservedFor indicates which entities are currently allowed to use the claim. A Pod which references a ResourceClaim which is not reserved for that Pod will not be started. A claim that is in use or might be in use because it has been reserved must not get deallocated.
  ///
  /// In a cluster with multiple scheduler instances, two pods might get scheduled concurrently by different schedulers. When they reference the same ResourceClaim which already has reached its maximum number of consumers, only one pod can be scheduled.
  ///
  /// Both schedulers try to add their pod to the claim.status.reservedFor field, but only the update that reaches the API server first gets stored. The other one fails with an error and the scheduler which issued it knows that it must put the pod back into the queue, waiting for the ResourceClaim to become usable again.
  ///
  /// There can be at most 256 such reservations. This may get increased in the future, but not reduced.
  final pulumi.Input<List<ResourceClaimConsumerReferencePatch>>? reservedFor;

  /// Creates a new [ResourceClaimStatusPatch].
  /// [allocation] Allocation is set once the claim has been allocated successfully.
  /// [devices] Devices contains the status of each device allocated for this claim, as reported by the driver. This can include driver-specific information. Entries are owned by their respective drivers.
  /// [reservedFor] ReservedFor indicates which entities are currently allowed to use the claim. A Pod which references a ResourceClaim which is not reserved for that Pod will not be started. A claim that is in use or might be in use because it has been reserved must not get deallocated.
  ResourceClaimStatusPatch({
    this.allocation,
    this.devices,
    this.reservedFor,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocation': ?pulumi.Input.mapOptionalInputValue<AllocationResultPatch, Map<String, dynamic>>(allocation, (value) => value.toMap()),
      'devices': ?pulumi.Input.mapOptionalInputValue<List<AllocatedDeviceStatusPatch>, List<Map<String, dynamic>>>(devices, (value) => pulumi.Input.encodeList<AllocatedDeviceStatusPatch, Map<String, dynamic>>(value, (value) => value.toMap())),
      'reservedFor': ?pulumi.Input.mapOptionalInputValue<List<ResourceClaimConsumerReferencePatch>, List<Map<String, dynamic>>>(reservedFor, (value) => pulumi.Input.encodeList<ResourceClaimConsumerReferencePatch, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ResourceClaimStatusPatch.fromMap(Map<String, dynamic> map) {
    return ResourceClaimStatusPatch(
      allocation: map['allocation'] == null ? null : (AllocationResultPatch.fromMap((map['allocation']! as Map).cast<String, dynamic>())).input(),
      devices: map['devices'] == null ? null : (pulumi.Input.decodeList<AllocatedDeviceStatusPatch>(map['devices']!, (value) => AllocatedDeviceStatusPatch.fromMap((value as Map).cast<String, dynamic>()))).input(),
      reservedFor: map['reservedFor'] == null ? null : (pulumi.Input.decodeList<ResourceClaimConsumerReferencePatch>(map['reservedFor']!, (value) => ResourceClaimConsumerReferencePatch.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

