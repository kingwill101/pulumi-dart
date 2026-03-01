// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta_patch.dart';
import 'resource_claim_template_spec_patch_resource_k8s_io_v1alpha2.dart';

/// {@template pulumi_resource_k8s_io_v1alpha2_resource_claim_template_patch_resource_k8s_io_v1alpha2_args_doc}
/// The set of arguments for ResourceClaimTemplatePatch.
/// {@endtemplate}
/// {@macro pulumi_resource_k8s_io_v1alpha2_resource_claim_template_patch_resource_k8s_io_v1alpha2_args_doc}
class ResourceClaimTemplatePatchResourceK8sIoV1alpha2Args {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final pulumi.Input<String>? apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<String>? kind;
  /// Standard object metadata
  final pulumi.Input<ObjectMetaPatch>? metadata;
  /// Describes the ResourceClaim that is to be generated.
  ///
  /// This field is immutable. A ResourceClaim will get created by the control plane for a Pod when needed and then not get updated anymore.
  final pulumi.Input<ResourceClaimTemplateSpecPatchResourceK8sIoV1alpha2>? spec;

  /// Creates a new [ResourceClaimTemplatePatchResourceK8sIoV1alpha2Args].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] Standard object metadata
  /// [spec] Describes the ResourceClaim that is to be generated.
  ResourceClaimTemplatePatchResourceK8sIoV1alpha2Args({
    pulumi.Output<String>? apiVersion,
    pulumi.Output<String>? kind,
    pulumi.Output<ObjectMetaPatch>? metadata,
    pulumi.Output<ResourceClaimTemplateSpecPatchResourceK8sIoV1alpha2>? spec,
  }) :
      apiVersion = pulumi.Input.asOptionalInput<String>(apiVersion),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      metadata = pulumi.Input.asOptionalInput<ObjectMetaPatch>(metadata),
      spec = pulumi.Input.asOptionalInput<ResourceClaimTemplateSpecPatchResourceK8sIoV1alpha2>(spec);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'kind': ?kind,
      'metadata': ?pulumi.Input.mapOptionalInputValue<ObjectMetaPatch, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'spec': ?pulumi.Input.mapOptionalInputValue<ResourceClaimTemplateSpecPatchResourceK8sIoV1alpha2, Map<String, dynamic>>(spec, (value) => value.toMap()),
    };
  }

  factory ResourceClaimTemplatePatchResourceK8sIoV1alpha2Args.fromMap(Map<String, dynamic> map) {
    return ResourceClaimTemplatePatchResourceK8sIoV1alpha2Args(
      apiVersion: map['apiVersion'] == null ? null : pulumi.Output.create<String>(map['apiVersion'] as String),
      kind: map['kind'] == null ? null : pulumi.Output.create<String>(map['kind'] as String),
      metadata: map['metadata'] == null ? null : pulumi.Output.create<ObjectMetaPatch>(ObjectMetaPatch.fromMap((map['metadata'] as Map).cast<String, dynamic>())),
      spec: map['spec'] == null ? null : pulumi.Output.create<ResourceClaimTemplateSpecPatchResourceK8sIoV1alpha2>(ResourceClaimTemplateSpecPatchResourceK8sIoV1alpha2.fromMap((map['spec'] as Map).cast<String, dynamic>())),
    );
  }
}

