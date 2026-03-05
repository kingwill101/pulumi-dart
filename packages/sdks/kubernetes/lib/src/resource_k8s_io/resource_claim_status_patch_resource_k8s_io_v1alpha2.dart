// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'allocation_result_patch_resource_k8s_io_v1alpha2.dart';
import 'resource_claim_consumer_reference_patch_resource_k8s_io_v1alpha2.dart';

/// ResourceClaimStatus tracks whether the resource has been allocated and what the resulting attributes are.
class ResourceClaimStatusPatchResourceK8sIoV1alpha2 {
  /// Allocation is set by the resource driver once a resource or set of resources has been allocated successfully. If this is not specified, the resources have not been allocated yet.
  final pulumi.Input<AllocationResultPatchResourceK8sIoV1alpha2>? allocation;
  /// DeallocationRequested indicates that a ResourceClaim is to be deallocated.
  ///
  /// The driver then must deallocate this claim and reset the field together with clearing the Allocation field.
  ///
  /// While DeallocationRequested is set, no new consumers may be added to ReservedFor.
  final pulumi.Input<bool>? deallocationRequested;
  /// DriverName is a copy of the driver name from the ResourceClass at the time when allocation started.
  final pulumi.Input<String>? driverName;
  /// ReservedFor indicates which entities are currently allowed to use the claim. A Pod which references a ResourceClaim which is not reserved for that Pod will not be started.
  ///
  /// There can be at most 32 such reservations. This may get increased in the future, but not reduced.
  final pulumi.Input<List<ResourceClaimConsumerReferencePatchResourceK8sIoV1alpha2>>? reservedFor;

  /// Creates a new [ResourceClaimStatusPatchResourceK8sIoV1alpha2].
  /// [allocation] Allocation is set by the resource driver once a resource or set of resources has been allocated successfully. If this is not specified, the resources have not been allocated yet.
  /// [deallocationRequested] DeallocationRequested indicates that a ResourceClaim is to be deallocated.
  /// [driverName] DriverName is a copy of the driver name from the ResourceClass at the time when allocation started.
  /// [reservedFor] ReservedFor indicates which entities are currently allowed to use the claim. A Pod which references a ResourceClaim which is not reserved for that Pod will not be started.
  ResourceClaimStatusPatchResourceK8sIoV1alpha2({
    this.allocation,
    this.deallocationRequested,
    this.driverName,
    this.reservedFor,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocation': ?pulumi.Input.mapOptionalInputValue<AllocationResultPatchResourceK8sIoV1alpha2, Map<String, dynamic>>(allocation, (value) => value.toMap()),
      'deallocationRequested': ?deallocationRequested,
      'driverName': ?driverName,
      'reservedFor': ?pulumi.Input.mapOptionalInputValue<List<ResourceClaimConsumerReferencePatchResourceK8sIoV1alpha2>, List<Map<String, dynamic>>>(reservedFor, (value) => pulumi.Input.encodeList<ResourceClaimConsumerReferencePatchResourceK8sIoV1alpha2, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ResourceClaimStatusPatchResourceK8sIoV1alpha2.fromMap(Map<String, dynamic> map) {
    return ResourceClaimStatusPatchResourceK8sIoV1alpha2(
      allocation: (() { final guardedValue = map['allocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AllocationResultPatchResourceK8sIoV1alpha2.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deallocationRequested: (() { final guardedValue = map['deallocationRequested']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      driverName: (() { final guardedValue = map['driverName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      reservedFor: (() { final guardedValue = map['reservedFor']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ResourceClaimConsumerReferencePatchResourceK8sIoV1alpha2>(guardedValue, (value) => ResourceClaimConsumerReferencePatchResourceK8sIoV1alpha2.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

