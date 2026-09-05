// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'resource_claim_template_spec_resource_k8s_io_v1beta2.dart';

/// {@template pulumi_resource_k8s_io_v1beta2_resource_claim_template_resource_k8s_io_v1beta2_args_doc}
/// The set of arguments for ResourceClaimTemplate.
/// {@endtemplate}
/// {@macro pulumi_resource_k8s_io_v1beta2_resource_claim_template_resource_k8s_io_v1beta2_args_doc}
class ResourceClaimTemplateResourceK8sIoV1beta2Args {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final pulumi.Input<String?>? apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<String?>? kind;
  /// Standard object metadata
  final pulumi.Input<ObjectMeta?>? metadata;
  /// Describes the ResourceClaim that is to be generated.
  ///
  /// This field is immutable. A ResourceClaim will get created by the control plane for a Pod when needed and then not get updated anymore.
  final pulumi.Input<ResourceClaimTemplateSpecResourceK8sIoV1beta2> spec;

  /// Creates a new [ResourceClaimTemplateResourceK8sIoV1beta2Args].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] Standard object metadata
  /// [spec] Describes the ResourceClaim that is to be generated.
  const ResourceClaimTemplateResourceK8sIoV1beta2Args({
    this.apiVersion,
    this.kind,
    this.metadata,
    required this.spec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'kind': ?kind,
      'metadata': ?pulumi.Input.mapOptionalInputValue<ObjectMeta, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'spec': pulumi.Input.mapInputValue<ResourceClaimTemplateSpecResourceK8sIoV1beta2, Map<String, dynamic>>(spec, (value) => value.toMap()),
    };
  }

  factory ResourceClaimTemplateResourceK8sIoV1beta2Args.fromMap(Map<String, dynamic> map) {
    return ResourceClaimTemplateResourceK8sIoV1beta2Args(
      apiVersion: (() { final guardedValue = map['apiVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ObjectMeta.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      spec: pulumi.Input.fromValue(ResourceClaimTemplateSpecResourceK8sIoV1beta2.fromMap((map['spec']! as Map).cast<String, dynamic>())),
    );
  }
}
