// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'resource_slice_spec_resource_k8s_io_v1beta2.dart';

/// {@template pulumi_resource_k8s_io_v1beta2_resource_slice_resource_k8s_io_v1beta2_args_doc}
/// The set of arguments for ResourceSlice.
/// {@endtemplate}
/// {@macro pulumi_resource_k8s_io_v1beta2_resource_slice_resource_k8s_io_v1beta2_args_doc}
class ResourceSliceResourceK8sIoV1beta2Args {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final pulumi.Input<String>? apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<String>? kind;
  /// Standard object metadata
  final pulumi.Input<ObjectMeta>? metadata;
  /// Contains the information published by the driver.
  ///
  /// Changing the spec automatically increments the metadata.generation number.
  final pulumi.Input<ResourceSliceSpecResourceK8sIoV1beta2> spec;

  /// Creates a new [ResourceSliceResourceK8sIoV1beta2Args].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] Standard object metadata
  /// [spec] Contains the information published by the driver.
  ResourceSliceResourceK8sIoV1beta2Args({
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
      'spec': pulumi.Input.mapInputValue<ResourceSliceSpecResourceK8sIoV1beta2, Map<String, dynamic>>(spec, (value) => value.toMap()),
    };
  }

  factory ResourceSliceResourceK8sIoV1beta2Args.fromMap(Map<String, dynamic> map) {
    return ResourceSliceResourceK8sIoV1beta2Args(
      apiVersion: map['apiVersion'] == null ? null : (map['apiVersion']! as String).input(),
      kind: map['kind'] == null ? null : (map['kind']! as String).input(),
      metadata: map['metadata'] == null ? null : (ObjectMeta.fromMap((map['metadata']! as Map).cast<String, dynamic>())).input(),
      spec: (ResourceSliceSpecResourceK8sIoV1beta2.fromMap((map['spec'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

