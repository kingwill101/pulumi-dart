// ignore_for_file: unused_element, unnecessary_cast

import '../meta/object_meta.dart';
import 'resource_claim_spec.dart';
import 'resource_claim_status.dart';

/// ResourceClaim describes a request for access to resources in the cluster, for use by workloads. For example, if a workload needs an accelerator device with specific properties, this is how that request is expressed. The status stanza tracks whether this claim has been satisfied and what specific resources have been allocated.
///
/// This is an alpha type and requires enabling the DynamicResourceAllocation feature gate.
class ResourceClaim {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final String? apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final String? kind;
  /// Standard object metadata
  final ObjectMeta? metadata;
  /// Spec describes what is being requested and how to configure it. The spec is immutable.
  final ResourceClaimSpec spec;
  /// Status describes whether the claim is ready to use and what has been allocated.
  final ResourceClaimStatus? status;

  /// Creates a new [ResourceClaim].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] Standard object metadata
  /// [spec] Spec describes what is being requested and how to configure it. The spec is immutable.
  /// [status] Status describes whether the claim is ready to use and what has been allocated.
  ResourceClaim({
    this.apiVersion,
    this.kind,
    this.metadata,
    required this.spec,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'kind': ?kind,
      'metadata': ?metadata == null ? null : metadata!.toMap(),
      'spec': spec.toMap(),
      'status': ?status == null ? null : status!.toMap(),
    };
  }

  factory ResourceClaim.fromMap(Map<String, dynamic> map) {
    return ResourceClaim(
      apiVersion: map['apiVersion'] == null ? null : map['apiVersion'] as String,
      kind: map['kind'] == null ? null : map['kind'] as String,
      metadata: map['metadata'] == null ? null : ObjectMeta.fromMap((map['metadata'] as Map).cast<String, dynamic>()),
      spec: ResourceClaimSpec.fromMap((map['spec'] as Map).cast<String, dynamic>()),
      status: map['status'] == null ? null : ResourceClaimStatus.fromMap((map['status'] as Map).cast<String, dynamic>()),
    );
  }
}

