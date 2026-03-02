// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta_patch.dart';
import 'named_resources_resources_patch.dart';

/// {@template pulumi_resource_k8s_io_v1alpha2_resource_slice_patch_resource_k8s_io_v1alpha2_args_doc}
/// The set of arguments for ResourceSlicePatch.
/// {@endtemplate}
/// {@macro pulumi_resource_k8s_io_v1alpha2_resource_slice_patch_resource_k8s_io_v1alpha2_args_doc}
class ResourceSlicePatchResourceK8sIoV1alpha2Args {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final pulumi.Input<String>? apiVersion;
  /// DriverName identifies the DRA driver providing the capacity information. A field selector can be used to list only ResourceSlice objects with a certain driver name.
  final pulumi.Input<String>? driverName;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<String>? kind;
  /// Standard object metadata
  final pulumi.Input<ObjectMetaPatch>? metadata;
  /// NamedResources describes available resources using the named resources model.
  final pulumi.Input<NamedResourcesResourcesPatch>? namedResources;
  /// NodeName identifies the node which provides the resources if they are local to a node.
  ///
  /// A field selector can be used to list only ResourceSlice objects with a certain node name.
  final pulumi.Input<String>? nodeName;

  /// Creates a new [ResourceSlicePatchResourceK8sIoV1alpha2Args].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [driverName] DriverName identifies the DRA driver providing the capacity information. A field selector can be used to list only ResourceSlice objects with a certain driver name.
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] Standard object metadata
  /// [namedResources] NamedResources describes available resources using the named resources model.
  /// [nodeName] NodeName identifies the node which provides the resources if they are local to a node.
  ResourceSlicePatchResourceK8sIoV1alpha2Args({
    this.apiVersion,
    this.driverName,
    this.kind,
    this.metadata,
    this.namedResources,
    this.nodeName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'driverName': ?driverName,
      'kind': ?kind,
      'metadata': ?pulumi.Input.mapOptionalInputValue<ObjectMetaPatch, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'namedResources': ?pulumi.Input.mapOptionalInputValue<NamedResourcesResourcesPatch, Map<String, dynamic>>(namedResources, (value) => value.toMap()),
      'nodeName': ?nodeName,
    };
  }

  factory ResourceSlicePatchResourceK8sIoV1alpha2Args.fromMap(Map<String, dynamic> map) {
    return ResourceSlicePatchResourceK8sIoV1alpha2Args(
      apiVersion: map['apiVersion'] == null ? null : (map['apiVersion'] as String).input(),
      driverName: map['driverName'] == null ? null : (map['driverName'] as String).input(),
      kind: map['kind'] == null ? null : (map['kind'] as String).input(),
      metadata: map['metadata'] == null ? null : (ObjectMetaPatch.fromMap((map['metadata'] as Map).cast<String, dynamic>())).input(),
      namedResources: map['namedResources'] == null ? null : (NamedResourcesResourcesPatch.fromMap((map['namedResources'] as Map).cast<String, dynamic>())).input(),
      nodeName: map['nodeName'] == null ? null : (map['nodeName'] as String).input(),
    );
  }
}

