// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'resource_pool_status_request_spec.dart';

/// {@template pulumi_resource_k8s_io_v1alpha3_resource_pool_status_request_args_doc}
/// The set of arguments for ResourcePoolStatusRequest.
/// {@endtemplate}
/// {@macro pulumi_resource_k8s_io_v1alpha3_resource_pool_status_request_args_doc}
class ResourcePoolStatusRequestArgs {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final pulumi.Input<String?>? apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<String?>? kind;
  /// Standard object metadata
  final pulumi.Input<ObjectMeta> metadata;
  /// Spec defines the filters for which pools to include in the status. The spec is immutable once created.
  final pulumi.Input<ResourcePoolStatusRequestSpec> spec;

  /// Creates a new [ResourcePoolStatusRequestArgs].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] Standard object metadata
  /// [spec] Spec defines the filters for which pools to include in the status. The spec is immutable once created.
  const ResourcePoolStatusRequestArgs({
    this.apiVersion,
    this.kind,
    required this.metadata,
    required this.spec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'kind': ?kind,
      'metadata': pulumi.Input.mapInputValue<ObjectMeta, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'spec': pulumi.Input.mapInputValue<ResourcePoolStatusRequestSpec, Map<String, dynamic>>(spec, (value) => value.toMap()),
    };
  }

  factory ResourcePoolStatusRequestArgs.fromMap(Map<String, dynamic> map) {
    return ResourcePoolStatusRequestArgs(
      apiVersion: (() { final guardedValue = map['apiVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metadata: pulumi.Input.fromValue(ObjectMeta.fromMap((map['metadata']! as Map).cast<String, dynamic>())),
      spec: pulumi.Input.fromValue(ResourcePoolStatusRequestSpec.fromMap((map['spec']! as Map).cast<String, dynamic>())),
    );
  }
}
