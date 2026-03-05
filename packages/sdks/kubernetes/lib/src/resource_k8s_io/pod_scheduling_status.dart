// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_claim_scheduling_status.dart';

/// PodSchedulingStatus describes where resources for the Pod can be allocated.
class PodSchedulingStatus {
  /// ResourceClaims describes resource availability for each pod.spec.resourceClaim entry where the corresponding ResourceClaim uses "WaitForFirstConsumer" allocation mode.
  final pulumi.Input<List<ResourceClaimSchedulingStatus>>? resourceClaims;

  /// Creates a new [PodSchedulingStatus].
  /// [resourceClaims] ResourceClaims describes resource availability for each pod.spec.resourceClaim entry where the corresponding ResourceClaim uses "WaitForFirstConsumer" allocation mode.
  PodSchedulingStatus({
    this.resourceClaims,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceClaims': ?pulumi.Input.mapOptionalInputValue<List<ResourceClaimSchedulingStatus>, List<Map<String, dynamic>>>(resourceClaims, (value) => pulumi.Input.encodeList<ResourceClaimSchedulingStatus, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory PodSchedulingStatus.fromMap(Map<String, dynamic> map) {
    return PodSchedulingStatus(
      resourceClaims: (() { final guardedValue = map['resourceClaims']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ResourceClaimSchedulingStatus>(guardedValue, (value) => ResourceClaimSchedulingStatus.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

