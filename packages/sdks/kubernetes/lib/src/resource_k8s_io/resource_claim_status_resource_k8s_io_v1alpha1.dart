// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'allocation_result_resource_k8s_io_v1alpha1.dart';
import 'resource_claim_consumer_reference_resource_k8s_io_v1alpha1.dart';

/// ResourceClaimStatus tracks whether the resource has been allocated and what the resulting attributes are.
class ResourceClaimStatusResourceK8sIoV1alpha1 {
  /// Allocation is set by the resource driver once a resource has been allocated successfully. If this is not specified, the resource is not yet allocated.
  final AllocationResultResourceK8sIoV1alpha1? allocation;
  /// DeallocationRequested indicates that a ResourceClaim is to be deallocated.
  ///
  /// The driver then must deallocate this claim and reset the field together with clearing the Allocation field.
  ///
  /// While DeallocationRequested is set, no new consumers may be added to ReservedFor.
  final bool? deallocationRequested;
  /// DriverName is a copy of the driver name from the ResourceClass at the time when allocation started.
  final String? driverName;
  /// ReservedFor indicates which entities are currently allowed to use the claim. A Pod which references a ResourceClaim which is not reserved for that Pod will not be started.
  ///
  /// There can be at most 32 such reservations. This may get increased in the future, but not reduced.
  final List<ResourceClaimConsumerReferenceResourceK8sIoV1alpha1>? reservedFor;

  /// Creates a new [ResourceClaimStatusResourceK8sIoV1alpha1].
  /// [allocation] Allocation is set by the resource driver once a resource has been allocated successfully. If this is not specified, the resource is not yet allocated.
  /// [deallocationRequested] DeallocationRequested indicates that a ResourceClaim is to be deallocated.
  /// [driverName] DriverName is a copy of the driver name from the ResourceClass at the time when allocation started.
  /// [reservedFor] ReservedFor indicates which entities are currently allowed to use the claim. A Pod which references a ResourceClaim which is not reserved for that Pod will not be started.
  ResourceClaimStatusResourceK8sIoV1alpha1({
    this.allocation,
    this.deallocationRequested,
    this.driverName,
    this.reservedFor,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocation': ?allocation == null ? null : allocation!.toMap(),
      'deallocationRequested': ?deallocationRequested,
      'driverName': ?driverName,
      'reservedFor': ?reservedFor == null ? null : pulumi.Input.encodeList<ResourceClaimConsumerReferenceResourceK8sIoV1alpha1, Map<String, dynamic>>(reservedFor!, (value) => value.toMap()),
    };
  }

  factory ResourceClaimStatusResourceK8sIoV1alpha1.fromMap(Map<String, dynamic> map) {
    return ResourceClaimStatusResourceK8sIoV1alpha1(
      allocation: map['allocation'] == null ? null : AllocationResultResourceK8sIoV1alpha1.fromMap((map['allocation'] as Map).cast<String, dynamic>()),
      deallocationRequested: map['deallocationRequested'] == null ? null : map['deallocationRequested'] as bool,
      driverName: map['driverName'] == null ? null : map['driverName'] as String,
      reservedFor: map['reservedFor'] == null ? null : pulumi.Input.decodeList<ResourceClaimConsumerReferenceResourceK8sIoV1alpha1>(map['reservedFor'], (value) => ResourceClaimConsumerReferenceResourceK8sIoV1alpha1.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

