// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_claim_scheduling_status_patch_resource_k8s_io_v1alpha3.dart';

/// PodSchedulingContextStatus describes where resources for the Pod can be allocated.
class PodSchedulingContextStatusPatchResourceK8sIoV1alpha3 {
  /// ResourceClaims describes resource availability for each pod.spec.resourceClaim entry where the corresponding ResourceClaim uses "WaitForFirstConsumer" allocation mode.
  final pulumi.Input<List<ResourceClaimSchedulingStatusPatchResourceK8sIoV1alpha3>?>? resourceClaims;

  /// Creates a new [PodSchedulingContextStatusPatchResourceK8sIoV1alpha3].
  /// [resourceClaims] ResourceClaims describes resource availability for each pod.spec.resourceClaim entry where the corresponding ResourceClaim uses "WaitForFirstConsumer" allocation mode.
  const PodSchedulingContextStatusPatchResourceK8sIoV1alpha3({
    this.resourceClaims,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceClaims': ?pulumi.Input.mapOptionalInputValue<List<ResourceClaimSchedulingStatusPatchResourceK8sIoV1alpha3>, List<Map<String, dynamic>>>(resourceClaims, (value) => pulumi.Input.encodeList<ResourceClaimSchedulingStatusPatchResourceK8sIoV1alpha3, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory PodSchedulingContextStatusPatchResourceK8sIoV1alpha3.fromMap(Map<String, dynamic> map) {
    return PodSchedulingContextStatusPatchResourceK8sIoV1alpha3(
      resourceClaims: (() { final guardedValue = map['resourceClaims']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ResourceClaimSchedulingStatusPatchResourceK8sIoV1alpha3>(guardedValue, (value) => ResourceClaimSchedulingStatusPatchResourceK8sIoV1alpha3.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
