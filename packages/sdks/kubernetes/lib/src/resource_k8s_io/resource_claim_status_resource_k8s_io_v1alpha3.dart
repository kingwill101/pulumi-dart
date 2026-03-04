// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'allocation_result_resource_k8s_io_v1alpha3.dart';
import 'resource_claim_consumer_reference_resource_k8s_io_v1alpha3.dart';

/// ResourceClaimStatus tracks whether the resource has been allocated and what the result of that was.
class ResourceClaimStatusResourceK8sIoV1alpha3 {
  /// Allocation is set once the claim has been allocated successfully.
  final pulumi.Input<AllocationResultResourceK8sIoV1alpha3>? allocation;

  /// Indicates that a claim is to be deallocated. While this is set, no new consumers may be added to ReservedFor.
  ///
  /// This is only used if the claim needs to be deallocated by a DRA driver. That driver then must deallocate this claim and reset the field together with clearing the Allocation field.
  ///
  /// This is an alpha field and requires enabling the DRAControlPlaneController feature gate.
  final pulumi.Input<bool>? deallocationRequested;

  /// ReservedFor indicates which entities are currently allowed to use the claim. A Pod which references a ResourceClaim which is not reserved for that Pod will not be started. A claim that is in use or might be in use because it has been reserved must not get deallocated.
  ///
  /// In a cluster with multiple scheduler instances, two pods might get scheduled concurrently by different schedulers. When they reference the same ResourceClaim which already has reached its maximum number of consumers, only one pod can be scheduled.
  ///
  /// Both schedulers try to add their pod to the claim.status.reservedFor field, but only the update that reaches the API server first gets stored. The other one fails with an error and the scheduler which issued it knows that it must put the pod back into the queue, waiting for the ResourceClaim to become usable again.
  ///
  /// There can be at most 32 such reservations. This may get increased in the future, but not reduced.
  final pulumi.Input<List<ResourceClaimConsumerReferenceResourceK8sIoV1alpha3>>?
  reservedFor;

  /// Creates a new [ResourceClaimStatusResourceK8sIoV1alpha3].
  /// [allocation] Allocation is set once the claim has been allocated successfully.
  /// [deallocationRequested] Indicates that a claim is to be deallocated. While this is set, no new consumers may be added to ReservedFor.
  /// [reservedFor] ReservedFor indicates which entities are currently allowed to use the claim. A Pod which references a ResourceClaim which is not reserved for that Pod will not be started. A claim that is in use or might be in use because it has been reserved must not get deallocated.
  ResourceClaimStatusResourceK8sIoV1alpha3({
    this.allocation,
    this.deallocationRequested,
    this.reservedFor,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocation':
          ?pulumi.Input.mapOptionalInputValue<
            AllocationResultResourceK8sIoV1alpha3,
            Map<String, dynamic>
          >(allocation, (value) => value.toMap()),
      'deallocationRequested': ?deallocationRequested,
      'reservedFor':
          ?pulumi.Input.mapOptionalInputValue<
            List<ResourceClaimConsumerReferenceResourceK8sIoV1alpha3>,
            List<Map<String, dynamic>>
          >(
            reservedFor,
            (value) =>
                pulumi.Input.encodeList<
                  ResourceClaimConsumerReferenceResourceK8sIoV1alpha3,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory ResourceClaimStatusResourceK8sIoV1alpha3.fromMap(
    Map<String, dynamic> map,
  ) {
    return ResourceClaimStatusResourceK8sIoV1alpha3(
      allocation: (() {
        final guardedValue = map['allocation'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AllocationResultResourceK8sIoV1alpha3.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      deallocationRequested: (() {
        final guardedValue = map['deallocationRequested'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      reservedFor: (() {
        final guardedValue = map['reservedFor'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            ResourceClaimConsumerReferenceResourceK8sIoV1alpha3
          >(
            guardedValue,
            (value) =>
                ResourceClaimConsumerReferenceResourceK8sIoV1alpha3.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
    );
  }
}
