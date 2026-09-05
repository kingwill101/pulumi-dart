// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'allocated_device_status.dart';
import 'allocation_result.dart';
import 'resource_claim_consumer_reference.dart';

/// ResourceClaimStatus tracks whether the resource has been allocated and what the result of that was.
class ResourceClaimStatus {
  /// Allocation is set once the claim has been allocated successfully.
  final pulumi.Input<AllocationResult?>? allocation;
  /// Devices contains the status of each device allocated for this claim, as reported by the driver. This can include driver-specific information. Entries are owned by their respective drivers.
  final pulumi.Input<List<AllocatedDeviceStatus>?>? devices;
  /// ReservedFor indicates which entities are currently allowed to use the claim. A Pod which references a ResourceClaim which is not reserved for that Pod will not be started. A claim that is in use or might be in use because it has been reserved must not get deallocated.
  ///
  /// In a cluster with multiple scheduler instances, two pods might get scheduled concurrently by different schedulers. When they reference the same ResourceClaim which already has reached its maximum number of consumers, only one pod can be scheduled.
  ///
  /// Both schedulers try to add their pod to the claim.status.reservedFor field, but only the update that reaches the API server first gets stored. The other one fails with an error and the scheduler which issued it knows that it must put the pod back into the queue, waiting for the ResourceClaim to become usable again.
  ///
  /// There can be at most 256 such reservations. This may get increased in the future, but not reduced.
  final pulumi.Input<List<ResourceClaimConsumerReference>?>? reservedFor;

  /// Creates a new [ResourceClaimStatus].
  /// [allocation] Allocation is set once the claim has been allocated successfully.
  /// [devices] Devices contains the status of each device allocated for this claim, as reported by the driver. This can include driver-specific information. Entries are owned by their respective drivers.
  /// [reservedFor] ReservedFor indicates which entities are currently allowed to use the claim. A Pod which references a ResourceClaim which is not reserved for that Pod will not be started. A claim that is in use or might be in use because it has been reserved must not get deallocated.
  const ResourceClaimStatus({
    this.allocation,
    this.devices,
    this.reservedFor,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocation': ?pulumi.Input.mapOptionalInputValue<AllocationResult, Map<String, dynamic>>(allocation, (value) => value.toMap()),
      'devices': ?pulumi.Input.mapOptionalInputValue<List<AllocatedDeviceStatus>, List<Map<String, dynamic>>>(devices, (value) => pulumi.Input.encodeList<AllocatedDeviceStatus, Map<String, dynamic>>(value, (value) => value.toMap())),
      'reservedFor': ?pulumi.Input.mapOptionalInputValue<List<ResourceClaimConsumerReference>, List<Map<String, dynamic>>>(reservedFor, (value) => pulumi.Input.encodeList<ResourceClaimConsumerReference, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ResourceClaimStatus.fromMap(Map<String, dynamic> map) {
    return ResourceClaimStatus(
      allocation: (() { final guardedValue = map['allocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AllocationResult.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      devices: (() { final guardedValue = map['devices']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AllocatedDeviceStatus>(guardedValue, (value) => AllocatedDeviceStatus.fromMap((value as Map).cast<String, dynamic>()))); })(),
      reservedFor: (() { final guardedValue = map['reservedFor']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ResourceClaimConsumerReference>(guardedValue, (value) => ResourceClaimConsumerReference.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
