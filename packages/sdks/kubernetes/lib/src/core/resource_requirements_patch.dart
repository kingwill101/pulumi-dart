// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_claim_patch.dart';

/// ResourceRequirements describes the compute resource requirements.
class ResourceRequirementsPatch {
  /// Claims lists the names of resources, defined in spec.resourceClaims, that are used by this container.
  ///
  /// This field depends on the DynamicResourceAllocation feature gate.
  ///
  /// This field is immutable. It can only be set for containers.
  final pulumi.Input<List<ResourceClaimPatch>>? claims;
  /// Limits describes the maximum amount of compute resources allowed. More info: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/
  final pulumi.Input<Map<String, String>>? limits;
  /// Requests describes the minimum amount of compute resources required. If Requests is omitted for a container, it defaults to Limits if that is explicitly specified, otherwise to an implementation-defined value. Requests cannot exceed Limits. More info: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/
  final pulumi.Input<Map<String, String>>? requests;

  /// Creates a new [ResourceRequirementsPatch].
  /// [claims] Claims lists the names of resources, defined in spec.resourceClaims, that are used by this container.
  /// [limits] Limits describes the maximum amount of compute resources allowed. More info: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/
  /// [requests] Requests describes the minimum amount of compute resources required. If Requests is omitted for a container, it defaults to Limits if that is explicitly specified, otherwise to an implementation-defined value. Requests cannot exceed Limits. More info: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/
  ResourceRequirementsPatch({
    this.claims,
    this.limits,
    this.requests,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'claims': ?pulumi.Input.mapOptionalInputValue<List<ResourceClaimPatch>, List<Map<String, dynamic>>>(claims, (value) => pulumi.Input.encodeList<ResourceClaimPatch, Map<String, dynamic>>(value, (value) => value.toMap())),
      'limits': ?limits,
      'requests': ?requests,
    };
  }

  factory ResourceRequirementsPatch.fromMap(Map<String, dynamic> map) {
    return ResourceRequirementsPatch(
      claims: map['claims'] == null ? null : (pulumi.Input.decodeList<ResourceClaimPatch>(map['claims']!, (value) => ResourceClaimPatch.fromMap((value as Map).cast<String, dynamic>()))).input(),
      limits: map['limits'] == null ? null : ((map['limits']! as Map).cast<String, String>()).input(),
      requests: map['requests'] == null ? null : ((map['requests']! as Map).cast<String, String>()).input(),
    );
  }
}

