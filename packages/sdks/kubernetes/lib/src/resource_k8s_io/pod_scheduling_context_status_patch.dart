// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_claim_scheduling_status_patch_resource_k8s_io_v1alpha2.dart';

/// PodSchedulingContextStatus describes where resources for the Pod can be allocated.
class PodSchedulingContextStatusPatch {
  /// ResourceClaims describes resource availability for each pod.spec.resourceClaim entry where the corresponding ResourceClaim uses "WaitForFirstConsumer" allocation mode.
  final pulumi.Input<List<ResourceClaimSchedulingStatusPatchResourceK8sIoV1alpha2>>? resourceClaims;

  /// Creates a new [PodSchedulingContextStatusPatch].
  /// [resourceClaims] ResourceClaims describes resource availability for each pod.spec.resourceClaim entry where the corresponding ResourceClaim uses "WaitForFirstConsumer" allocation mode.
  PodSchedulingContextStatusPatch({
    this.resourceClaims,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceClaims': ?pulumi.Input.mapOptionalInputValue<List<ResourceClaimSchedulingStatusPatchResourceK8sIoV1alpha2>, List<Map<String, dynamic>>>(resourceClaims, (value) => pulumi.Input.encodeList<ResourceClaimSchedulingStatusPatchResourceK8sIoV1alpha2, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory PodSchedulingContextStatusPatch.fromMap(Map<String, dynamic> map) {
    return PodSchedulingContextStatusPatch(
      resourceClaims: map['resourceClaims'] == null ? null : (pulumi.Input.decodeList<ResourceClaimSchedulingStatusPatchResourceK8sIoV1alpha2>(map['resourceClaims'], (value) => ResourceClaimSchedulingStatusPatchResourceK8sIoV1alpha2.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

