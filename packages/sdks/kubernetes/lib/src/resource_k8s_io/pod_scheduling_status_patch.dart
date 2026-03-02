// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_claim_scheduling_status_patch.dart';

/// PodSchedulingStatus describes where resources for the Pod can be allocated.
class PodSchedulingStatusPatch {
  /// ResourceClaims describes resource availability for each pod.spec.resourceClaim entry where the corresponding ResourceClaim uses "WaitForFirstConsumer" allocation mode.
  final pulumi.Input<List<ResourceClaimSchedulingStatusPatch>>? resourceClaims;

  /// Creates a new [PodSchedulingStatusPatch].
  /// [resourceClaims] ResourceClaims describes resource availability for each pod.spec.resourceClaim entry where the corresponding ResourceClaim uses "WaitForFirstConsumer" allocation mode.
  PodSchedulingStatusPatch({
    this.resourceClaims,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceClaims': ?pulumi.Input.mapOptionalInputValue<List<ResourceClaimSchedulingStatusPatch>, List<Map<String, dynamic>>>(resourceClaims, (value) => pulumi.Input.encodeList<ResourceClaimSchedulingStatusPatch, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory PodSchedulingStatusPatch.fromMap(Map<String, dynamic> map) {
    return PodSchedulingStatusPatch(
      resourceClaims: map['resourceClaims'] == null ? null : (pulumi.Input.decodeList<ResourceClaimSchedulingStatusPatch>(map['resourceClaims'], (value) => ResourceClaimSchedulingStatusPatch.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

