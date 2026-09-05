// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta_patch.dart';
import 'resource_claim_spec_patch.dart';

/// ResourceClaimTemplateSpec contains the metadata and fields for a ResourceClaim.
class ResourceClaimTemplateSpecPatch {
  /// ObjectMeta may contain labels and annotations that will be copied into the ResourceClaim when creating it. No other fields are allowed and will be rejected during validation.
  final pulumi.Input<ObjectMetaPatch?>? metadata;
  /// Spec for the ResourceClaim. The entire content is copied unchanged into the ResourceClaim that gets created from this template. The same fields as in a ResourceClaim are also valid here.
  final pulumi.Input<ResourceClaimSpecPatch?>? spec;

  /// Creates a new [ResourceClaimTemplateSpecPatch].
  /// [metadata] ObjectMeta may contain labels and annotations that will be copied into the ResourceClaim when creating it. No other fields are allowed and will be rejected during validation.
  /// [spec] Spec for the ResourceClaim. The entire content is copied unchanged into the ResourceClaim that gets created from this template. The same fields as in a ResourceClaim are also valid here.
  const ResourceClaimTemplateSpecPatch({
    this.metadata,
    this.spec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metadata': ?pulumi.Input.mapOptionalInputValue<ObjectMetaPatch, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'spec': ?pulumi.Input.mapOptionalInputValue<ResourceClaimSpecPatch, Map<String, dynamic>>(spec, (value) => value.toMap()),
    };
  }

  factory ResourceClaimTemplateSpecPatch.fromMap(Map<String, dynamic> map) {
    return ResourceClaimTemplateSpecPatch(
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ObjectMetaPatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      spec: (() { final guardedValue = map['spec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceClaimSpecPatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
