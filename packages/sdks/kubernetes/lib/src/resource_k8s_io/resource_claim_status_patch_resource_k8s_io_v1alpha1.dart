// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'allocation_result_patch_resource_k8s_io_v1alpha1.dart';
import 'resource_claim_consumer_reference_patch_resource_k8s_io_v1alpha1.dart';

/// ResourceClaimStatus tracks whether the resource has been allocated and what the resulting attributes are.
class ResourceClaimStatusPatchResourceK8sIoV1alpha1 {
  /// Allocation is set by the resource driver once a resource has been allocated successfully. If this is not specified, the resource is not yet allocated.
  final pulumi.Input<AllocationResultPatchResourceK8sIoV1alpha1>? allocation;
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
  final pulumi.Input<List<ResourceClaimConsumerReferencePatchResourceK8sIoV1alpha1>>? reservedFor;

  /// Creates a new [ResourceClaimStatusPatchResourceK8sIoV1alpha1].
  /// [allocation] Allocation is set by the resource driver once a resource has been allocated successfully. If this is not specified, the resource is not yet allocated.
  /// [deallocationRequested] DeallocationRequested indicates that a ResourceClaim is to be deallocated.
  /// [driverName] DriverName is a copy of the driver name from the ResourceClass at the time when allocation started.
  /// [reservedFor] ReservedFor indicates which entities are currently allowed to use the claim. A Pod which references a ResourceClaim which is not reserved for that Pod will not be started.
  ResourceClaimStatusPatchResourceK8sIoV1alpha1({
    this.allocation,
    this.deallocationRequested,
    this.driverName,
    this.reservedFor,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocation': ?pulumi.Input.mapOptionalInputValue<AllocationResultPatchResourceK8sIoV1alpha1, Map<String, dynamic>>(allocation, (value) => value.toMap()),
      'deallocationRequested': ?deallocationRequested,
      'driverName': ?driverName,
      'reservedFor': ?pulumi.Input.mapOptionalInputValue<List<ResourceClaimConsumerReferencePatchResourceK8sIoV1alpha1>, List<Map<String, dynamic>>>(reservedFor, (value) => pulumi.Input.encodeList<ResourceClaimConsumerReferencePatchResourceK8sIoV1alpha1, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ResourceClaimStatusPatchResourceK8sIoV1alpha1.fromMap(Map<String, dynamic> map) {
    return ResourceClaimStatusPatchResourceK8sIoV1alpha1(
      allocation: map['allocation'] == null ? null : (AllocationResultPatchResourceK8sIoV1alpha1.fromMap((map['allocation']! as Map).cast<String, dynamic>())).input(),
      deallocationRequested: map['deallocationRequested'] == null ? null : (map['deallocationRequested']! as bool).input(),
      driverName: map['driverName'] == null ? null : (map['driverName']! as String).input(),
      reservedFor: map['reservedFor'] == null ? null : (pulumi.Input.decodeList<ResourceClaimConsumerReferencePatchResourceK8sIoV1alpha1>(map['reservedFor']!, (value) => ResourceClaimConsumerReferencePatchResourceK8sIoV1alpha1.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

