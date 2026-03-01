// ignore_for_file: unused_element, unnecessary_cast

import '../meta/object_meta_patch.dart';
import 'resource_claim_spec_patch_resource_k8s_io_v1alpha1.dart';

/// ResourceClaimTemplateSpec contains the metadata and fields for a ResourceClaim.
class ResourceClaimTemplateSpecPatchResourceK8sIoV1alpha1 {
  /// ObjectMeta may contain labels and annotations that will be copied into the PVC when creating it. No other fields are allowed and will be rejected during validation.
  final ObjectMetaPatch? metadata;
  /// Spec for the ResourceClaim. The entire content is copied unchanged into the ResourceClaim that gets created from this template. The same fields as in a ResourceClaim are also valid here.
  final ResourceClaimSpecPatchResourceK8sIoV1alpha1? spec;

  /// Creates a new [ResourceClaimTemplateSpecPatchResourceK8sIoV1alpha1].
  /// [metadata] ObjectMeta may contain labels and annotations that will be copied into the PVC when creating it. No other fields are allowed and will be rejected during validation.
  /// [spec] Spec for the ResourceClaim. The entire content is copied unchanged into the ResourceClaim that gets created from this template. The same fields as in a ResourceClaim are also valid here.
  ResourceClaimTemplateSpecPatchResourceK8sIoV1alpha1({
    this.metadata,
    this.spec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metadata': ?metadata == null ? null : metadata!.toMap(),
      'spec': ?spec == null ? null : spec!.toMap(),
    };
  }

  factory ResourceClaimTemplateSpecPatchResourceK8sIoV1alpha1.fromMap(Map<String, dynamic> map) {
    return ResourceClaimTemplateSpecPatchResourceK8sIoV1alpha1(
      metadata: map['metadata'] == null ? null : ObjectMetaPatch.fromMap((map['metadata'] as Map).cast<String, dynamic>()),
      spec: map['spec'] == null ? null : ResourceClaimSpecPatchResourceK8sIoV1alpha1.fromMap((map['spec'] as Map).cast<String, dynamic>()),
    );
  }
}

