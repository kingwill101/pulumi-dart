// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta_patch.dart';
import 'resource_slice_spec_patch_resource_k8s_io_v1alpha3.dart';

/// {@template pulumi_resource_k8s_io_v1alpha3_resource_slice_patch_resource_k8s_io_v1alpha3_args_doc}
/// The set of arguments for ResourceSlicePatch.
/// {@endtemplate}
/// {@macro pulumi_resource_k8s_io_v1alpha3_resource_slice_patch_resource_k8s_io_v1alpha3_args_doc}
class ResourceSlicePatchResourceK8sIoV1alpha3Args {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final pulumi.Input<String?>? apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<String?>? kind;
  /// Standard object metadata
  final pulumi.Input<ObjectMetaPatch?>? metadata;
  /// Contains the information published by the driver.
  ///
  /// Changing the spec automatically increments the metadata.generation number.
  final pulumi.Input<ResourceSliceSpecPatchResourceK8sIoV1alpha3?>? spec;

  /// Creates a new [ResourceSlicePatchResourceK8sIoV1alpha3Args].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] Standard object metadata
  /// [spec] Contains the information published by the driver.
  const ResourceSlicePatchResourceK8sIoV1alpha3Args({
    this.apiVersion,
    this.kind,
    this.metadata,
    this.spec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'kind': ?kind,
      'metadata': ?pulumi.Input.mapOptionalInputValue<ObjectMetaPatch, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'spec': ?pulumi.Input.mapOptionalInputValue<ResourceSliceSpecPatchResourceK8sIoV1alpha3, Map<String, dynamic>>(spec, (value) => value.toMap()),
    };
  }

  factory ResourceSlicePatchResourceK8sIoV1alpha3Args.fromMap(Map<String, dynamic> map) {
    return ResourceSlicePatchResourceK8sIoV1alpha3Args(
      apiVersion: (() { final guardedValue = map['apiVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ObjectMetaPatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      spec: (() { final guardedValue = map['spec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceSliceSpecPatchResourceK8sIoV1alpha3.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
