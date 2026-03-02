// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_claim_scheduling_status_resource_k8s_io_v1alpha2.dart';

/// PodSchedulingContextStatus describes where resources for the Pod can be allocated.
class PodSchedulingContextStatus {
  /// ResourceClaims describes resource availability for each pod.spec.resourceClaim entry where the corresponding ResourceClaim uses "WaitForFirstConsumer" allocation mode.
  final pulumi.Input<List<ResourceClaimSchedulingStatusResourceK8sIoV1alpha2>>? resourceClaims;

  /// Creates a new [PodSchedulingContextStatus].
  /// [resourceClaims] ResourceClaims describes resource availability for each pod.spec.resourceClaim entry where the corresponding ResourceClaim uses "WaitForFirstConsumer" allocation mode.
  PodSchedulingContextStatus({
    this.resourceClaims,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceClaims': ?pulumi.Input.mapOptionalInputValue<List<ResourceClaimSchedulingStatusResourceK8sIoV1alpha2>, List<Map<String, dynamic>>>(resourceClaims, (value) => pulumi.Input.encodeList<ResourceClaimSchedulingStatusResourceK8sIoV1alpha2, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory PodSchedulingContextStatus.fromMap(Map<String, dynamic> map) {
    return PodSchedulingContextStatus(
      resourceClaims: map['resourceClaims'] == null ? null : (pulumi.Input.decodeList<ResourceClaimSchedulingStatusResourceK8sIoV1alpha2>(map['resourceClaims']!, (value) => ResourceClaimSchedulingStatusResourceK8sIoV1alpha2.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

