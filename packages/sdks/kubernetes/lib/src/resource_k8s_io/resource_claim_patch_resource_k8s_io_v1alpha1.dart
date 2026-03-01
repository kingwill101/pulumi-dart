// ignore_for_file: unused_element, unnecessary_cast

import '../meta/object_meta_patch.dart';
import 'resource_claim_spec_patch_resource_k8s_io_v1alpha1.dart';
import 'resource_claim_status_patch_resource_k8s_io_v1alpha1.dart';

/// ResourceClaim describes which resources are needed by a resource consumer. Its status tracks whether the resource has been allocated and what the resulting attributes are.
///
/// This is an alpha type and requires enabling the DynamicResourceAllocation feature gate.
class ResourceClaimPatchResourceK8sIoV1alpha1 {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final String? apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final String? kind;
  /// Standard object metadata
  final ObjectMetaPatch? metadata;
  /// Spec describes the desired attributes of a resource that then needs to be allocated. It can only be set once when creating the ResourceClaim.
  final ResourceClaimSpecPatchResourceK8sIoV1alpha1? spec;
  /// Status describes whether the resource is available and with which attributes.
  final ResourceClaimStatusPatchResourceK8sIoV1alpha1? status;

  /// Creates a new [ResourceClaimPatchResourceK8sIoV1alpha1].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] Standard object metadata
  /// [spec] Spec describes the desired attributes of a resource that then needs to be allocated. It can only be set once when creating the ResourceClaim.
  /// [status] Status describes whether the resource is available and with which attributes.
  ResourceClaimPatchResourceK8sIoV1alpha1({
    this.apiVersion,
    this.kind,
    this.metadata,
    this.spec,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'kind': ?kind,
      'metadata': ?metadata == null ? null : metadata!.toMap(),
      'spec': ?spec == null ? null : spec!.toMap(),
      'status': ?status == null ? null : status!.toMap(),
    };
  }

  factory ResourceClaimPatchResourceK8sIoV1alpha1.fromMap(Map<String, dynamic> map) {
    return ResourceClaimPatchResourceK8sIoV1alpha1(
      apiVersion: map['apiVersion'] == null ? null : map['apiVersion'] as String,
      kind: map['kind'] == null ? null : map['kind'] as String,
      metadata: map['metadata'] == null ? null : ObjectMetaPatch.fromMap((map['metadata'] as Map).cast<String, dynamic>()),
      spec: map['spec'] == null ? null : ResourceClaimSpecPatchResourceK8sIoV1alpha1.fromMap((map['spec'] as Map).cast<String, dynamic>()),
      status: map['status'] == null ? null : ResourceClaimStatusPatchResourceK8sIoV1alpha1.fromMap((map['status'] as Map).cast<String, dynamic>()),
    );
  }
}

