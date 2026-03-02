// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta_patch.dart';
import 'resource_claim_spec_patch_resource_k8s_io_v1alpha3.dart';
import 'resource_claim_status_patch_resource_k8s_io_v1alpha3.dart';

/// ResourceClaim describes a request for access to resources in the cluster, for use by workloads. For example, if a workload needs an accelerator device with specific properties, this is how that request is expressed. The status stanza tracks whether this claim has been satisfied and what specific resources have been allocated.
///
/// This is an alpha type and requires enabling the DynamicResourceAllocation feature gate.
class ResourceClaimPatchResourceK8sIoV1alpha3 {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final pulumi.Input<String>? apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<String>? kind;
  /// Standard object metadata
  final pulumi.Input<ObjectMetaPatch>? metadata;
  /// Spec describes what is being requested and how to configure it. The spec is immutable.
  final pulumi.Input<ResourceClaimSpecPatchResourceK8sIoV1alpha3>? spec;
  /// Status describes whether the claim is ready to use and what has been allocated.
  final pulumi.Input<ResourceClaimStatusPatchResourceK8sIoV1alpha3>? status;

  /// Creates a new [ResourceClaimPatchResourceK8sIoV1alpha3].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] Standard object metadata
  /// [spec] Spec describes what is being requested and how to configure it. The spec is immutable.
  /// [status] Status describes whether the claim is ready to use and what has been allocated.
  ResourceClaimPatchResourceK8sIoV1alpha3({
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
      'metadata': ?pulumi.Input.mapOptionalInputValue<ObjectMetaPatch, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'spec': ?pulumi.Input.mapOptionalInputValue<ResourceClaimSpecPatchResourceK8sIoV1alpha3, Map<String, dynamic>>(spec, (value) => value.toMap()),
      'status': ?pulumi.Input.mapOptionalInputValue<ResourceClaimStatusPatchResourceK8sIoV1alpha3, Map<String, dynamic>>(status, (value) => value.toMap()),
    };
  }

  factory ResourceClaimPatchResourceK8sIoV1alpha3.fromMap(Map<String, dynamic> map) {
    return ResourceClaimPatchResourceK8sIoV1alpha3(
      apiVersion: map['apiVersion'] == null ? null : (map['apiVersion']! as String).input(),
      kind: map['kind'] == null ? null : (map['kind']! as String).input(),
      metadata: map['metadata'] == null ? null : (ObjectMetaPatch.fromMap((map['metadata']! as Map).cast<String, dynamic>())).input(),
      spec: map['spec'] == null ? null : (ResourceClaimSpecPatchResourceK8sIoV1alpha3.fromMap((map['spec']! as Map).cast<String, dynamic>())).input(),
      status: map['status'] == null ? null : (ResourceClaimStatusPatchResourceK8sIoV1alpha3.fromMap((map['status']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

