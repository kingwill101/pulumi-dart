// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'resource_claim_spec_resource_k8s_io_v1beta1.dart';

/// {@template pulumi_resource_k8s_io_v1beta1_resource_claim_resource_k8s_io_v1beta1_args_doc}
/// The set of arguments for ResourceClaim.
/// {@endtemplate}
/// {@macro pulumi_resource_k8s_io_v1beta1_resource_claim_resource_k8s_io_v1beta1_args_doc}
class ResourceClaimResourceK8sIoV1beta1Args {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final pulumi.Input<String>? apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<String>? kind;
  /// Standard object metadata
  final pulumi.Input<ObjectMeta>? metadata;
  /// Spec describes what is being requested and how to configure it. The spec is immutable.
  final pulumi.Input<ResourceClaimSpecResourceK8sIoV1beta1> spec;

  /// Creates a new [ResourceClaimResourceK8sIoV1beta1Args].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] Standard object metadata
  /// [spec] Spec describes what is being requested and how to configure it. The spec is immutable.
  ResourceClaimResourceK8sIoV1beta1Args({
    pulumi.Output<String>? apiVersion,
    pulumi.Output<String>? kind,
    pulumi.Output<ObjectMeta>? metadata,
    required pulumi.Output<ResourceClaimSpecResourceK8sIoV1beta1> spec,
  }) :
      apiVersion = pulumi.Input.asOptionalInput<String>(apiVersion),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      metadata = pulumi.Input.asOptionalInput<ObjectMeta>(metadata),
      spec = pulumi.Input.asInput<ResourceClaimSpecResourceK8sIoV1beta1>(spec);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'kind': ?kind,
      'metadata': ?pulumi.Input.mapOptionalInputValue<ObjectMeta, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'spec': pulumi.Input.mapInputValue<ResourceClaimSpecResourceK8sIoV1beta1, Map<String, dynamic>>(spec, (value) => value.toMap()),
    };
  }

  factory ResourceClaimResourceK8sIoV1beta1Args.fromMap(Map<String, dynamic> map) {
    return ResourceClaimResourceK8sIoV1beta1Args(
      apiVersion: map['apiVersion'] == null ? null : pulumi.Output.create<String>(map['apiVersion'] as String),
      kind: map['kind'] == null ? null : pulumi.Output.create<String>(map['kind'] as String),
      metadata: map['metadata'] == null ? null : pulumi.Output.create<ObjectMeta>(ObjectMeta.fromMap((map['metadata'] as Map).cast<String, dynamic>())),
      spec: pulumi.Output.create<ResourceClaimSpecResourceK8sIoV1beta1>(ResourceClaimSpecResourceK8sIoV1beta1.fromMap((map['spec'] as Map).cast<String, dynamic>())),
    );
  }
}

