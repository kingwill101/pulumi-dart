// ignore_for_file: unused_element, unnecessary_cast

import '../meta/object_meta_patch.dart';
import 'resource_claim_spec_patch.dart';

/// ResourceClaimTemplateSpec contains the metadata and fields for a ResourceClaim.
class ResourceClaimTemplateSpecPatch {
  /// ObjectMeta may contain labels and annotations that will be copied into the ResourceClaim when creating it. No other fields are allowed and will be rejected during validation.
  final ObjectMetaPatch? metadata;
  /// Spec for the ResourceClaim. The entire content is copied unchanged into the ResourceClaim that gets created from this template. The same fields as in a ResourceClaim are also valid here.
  final ResourceClaimSpecPatch? spec;

  /// Creates a new [ResourceClaimTemplateSpecPatch].
  /// [metadata] ObjectMeta may contain labels and annotations that will be copied into the ResourceClaim when creating it. No other fields are allowed and will be rejected during validation.
  /// [spec] Spec for the ResourceClaim. The entire content is copied unchanged into the ResourceClaim that gets created from this template. The same fields as in a ResourceClaim are also valid here.
  ResourceClaimTemplateSpecPatch({
    this.metadata,
    this.spec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metadata': ?metadata == null ? null : metadata!.toMap(),
      'spec': ?spec == null ? null : spec!.toMap(),
    };
  }

  factory ResourceClaimTemplateSpecPatch.fromMap(Map<String, dynamic> map) {
    return ResourceClaimTemplateSpecPatch(
      metadata: map['metadata'] == null ? null : ObjectMetaPatch.fromMap((map['metadata'] as Map).cast<String, dynamic>()),
      spec: map['spec'] == null ? null : ResourceClaimSpecPatch.fromMap((map['spec'] as Map).cast<String, dynamic>()),
    );
  }
}

