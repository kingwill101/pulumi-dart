// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_claim_scheduling_status_resource_k8s_io_v1alpha3.dart';

/// PodSchedulingContextStatus describes where resources for the Pod can be allocated.
class PodSchedulingContextStatusResourceK8sIoV1alpha3 {
  /// ResourceClaims describes resource availability for each pod.spec.resourceClaim entry where the corresponding ResourceClaim uses "WaitForFirstConsumer" allocation mode.
  final pulumi.Input<List<ResourceClaimSchedulingStatusResourceK8sIoV1alpha3>>? resourceClaims;

  /// Creates a new [PodSchedulingContextStatusResourceK8sIoV1alpha3].
  /// [resourceClaims] ResourceClaims describes resource availability for each pod.spec.resourceClaim entry where the corresponding ResourceClaim uses "WaitForFirstConsumer" allocation mode.
  PodSchedulingContextStatusResourceK8sIoV1alpha3({
    this.resourceClaims,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceClaims': ?pulumi.Input.mapOptionalInputValue<List<ResourceClaimSchedulingStatusResourceK8sIoV1alpha3>, List<Map<String, dynamic>>>(resourceClaims, (value) => pulumi.Input.encodeList<ResourceClaimSchedulingStatusResourceK8sIoV1alpha3, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory PodSchedulingContextStatusResourceK8sIoV1alpha3.fromMap(Map<String, dynamic> map) {
    return PodSchedulingContextStatusResourceK8sIoV1alpha3(
      resourceClaims: map['resourceClaims'] == null ? null : (pulumi.Input.decodeList<ResourceClaimSchedulingStatusResourceK8sIoV1alpha3>(map['resourceClaims']!, (value) => ResourceClaimSchedulingStatusResourceK8sIoV1alpha3.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

