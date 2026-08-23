// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'resource_claim_spec_resource_k8s_io_v1beta1.dart';

/// ResourceClaimTemplateSpec contains the metadata and fields for a ResourceClaim.
class ResourceClaimTemplateSpecResourceK8sIoV1beta1 {
  /// ObjectMeta may contain labels and annotations that will be copied into the ResourceClaim when creating it. No other fields are allowed and will be rejected during validation.
  final pulumi.Input<ObjectMeta>? metadata;
  /// Spec for the ResourceClaim. The entire content is copied unchanged into the ResourceClaim that gets created from this template. The same fields as in a ResourceClaim are also valid here.
  final pulumi.Input<ResourceClaimSpecResourceK8sIoV1beta1> spec;

  /// Creates a new [ResourceClaimTemplateSpecResourceK8sIoV1beta1].
  /// [metadata] ObjectMeta may contain labels and annotations that will be copied into the ResourceClaim when creating it. No other fields are allowed and will be rejected during validation.
  /// [spec] Spec for the ResourceClaim. The entire content is copied unchanged into the ResourceClaim that gets created from this template. The same fields as in a ResourceClaim are also valid here.
  const ResourceClaimTemplateSpecResourceK8sIoV1beta1({
    this.metadata,
    required this.spec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metadata': ?pulumi.Input.mapOptionalInputValue<ObjectMeta, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'spec': pulumi.Input.mapInputValue<ResourceClaimSpecResourceK8sIoV1beta1, Map<String, dynamic>>(spec, (value) => value.toMap()),
    };
  }

  factory ResourceClaimTemplateSpecResourceK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return ResourceClaimTemplateSpecResourceK8sIoV1beta1(
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ObjectMeta.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      spec: pulumi.Input.fromValue(ResourceClaimSpecResourceK8sIoV1beta1.fromMap((map['spec']! as Map).cast<String, dynamic>())),
    );
  }
}
