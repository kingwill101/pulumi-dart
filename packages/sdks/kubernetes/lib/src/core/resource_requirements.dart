// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_claim.dart';

/// ResourceRequirements describes the compute resource requirements.
class ResourceRequirements {
  /// Claims lists the names of resources, defined in spec.resourceClaims, that are used by this container.
  ///
  /// This field depends on the DynamicResourceAllocation feature gate.
  ///
  /// This field is immutable. It can only be set for containers.
  final pulumi.Input<List<ResourceClaim>>? claims;
  /// Limits describes the maximum amount of compute resources allowed. More info: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/
  final pulumi.Input<Map<String, String>>? limits;
  /// Requests describes the minimum amount of compute resources required. If Requests is omitted for a container, it defaults to Limits if that is explicitly specified, otherwise to an implementation-defined value. Requests cannot exceed Limits. More info: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/
  final pulumi.Input<Map<String, String>>? requests;

  /// Creates a new [ResourceRequirements].
  /// [claims] Claims lists the names of resources, defined in spec.resourceClaims, that are used by this container.
  /// [limits] Limits describes the maximum amount of compute resources allowed. More info: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/
  /// [requests] Requests describes the minimum amount of compute resources required. If Requests is omitted for a container, it defaults to Limits if that is explicitly specified, otherwise to an implementation-defined value. Requests cannot exceed Limits. More info: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/
  const ResourceRequirements({
    this.claims,
    this.limits,
    this.requests,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'claims': ?pulumi.Input.mapOptionalInputValue<List<ResourceClaim>, List<Map<String, dynamic>>>(claims, (value) => pulumi.Input.encodeList<ResourceClaim, Map<String, dynamic>>(value, (value) => value.toMap())),
      'limits': ?limits,
      'requests': ?requests,
    };
  }

  factory ResourceRequirements.fromMap(Map<String, dynamic> map) {
    return ResourceRequirements(
      claims: (() { final guardedValue = map['claims']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ResourceClaim>(guardedValue, (value) => ResourceClaim.fromMap((value as Map).cast<String, dynamic>()))); })(),
      limits: (() { final guardedValue = map['limits']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      requests: (() { final guardedValue = map['requests']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
