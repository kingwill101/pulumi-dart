// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'named_resources_resources.dart';

/// {@template pulumi_resource_k8s_io_v1alpha2_resource_slice_resource_k8s_io_v1alpha2_args_doc}
/// The set of arguments for ResourceSlice.
/// {@endtemplate}
/// {@macro pulumi_resource_k8s_io_v1alpha2_resource_slice_resource_k8s_io_v1alpha2_args_doc}
class ResourceSliceResourceK8sIoV1alpha2Args {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final pulumi.Input<String>? apiVersion;
  /// DriverName identifies the DRA driver providing the capacity information. A field selector can be used to list only ResourceSlice objects with a certain driver name.
  final pulumi.Input<String> driverName;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<String>? kind;
  /// Standard object metadata
  final pulumi.Input<ObjectMeta>? metadata;
  /// NamedResources describes available resources using the named resources model.
  final pulumi.Input<NamedResourcesResources>? namedResources;
  /// NodeName identifies the node which provides the resources if they are local to a node.
  ///
  /// A field selector can be used to list only ResourceSlice objects with a certain node name.
  final pulumi.Input<String>? nodeName;

  /// Creates a new [ResourceSliceResourceK8sIoV1alpha2Args].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [driverName] DriverName identifies the DRA driver providing the capacity information. A field selector can be used to list only ResourceSlice objects with a certain driver name.
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] Standard object metadata
  /// [namedResources] NamedResources describes available resources using the named resources model.
  /// [nodeName] NodeName identifies the node which provides the resources if they are local to a node.
  ResourceSliceResourceK8sIoV1alpha2Args({
    pulumi.Output<String>? apiVersion,
    required pulumi.Output<String> driverName,
    pulumi.Output<String>? kind,
    pulumi.Output<ObjectMeta>? metadata,
    pulumi.Output<NamedResourcesResources>? namedResources,
    pulumi.Output<String>? nodeName,
  }) :
      apiVersion = pulumi.Input.asOptionalInput<String>(apiVersion),
      driverName = pulumi.Input.asInput<String>(driverName),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      metadata = pulumi.Input.asOptionalInput<ObjectMeta>(metadata),
      namedResources = pulumi.Input.asOptionalInput<NamedResourcesResources>(namedResources),
      nodeName = pulumi.Input.asOptionalInput<String>(nodeName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'driverName': driverName,
      'kind': ?kind,
      'metadata': ?pulumi.Input.mapOptionalInputValue<ObjectMeta, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'namedResources': ?pulumi.Input.mapOptionalInputValue<NamedResourcesResources, Map<String, dynamic>>(namedResources, (value) => value.toMap()),
      'nodeName': ?nodeName,
    };
  }

  factory ResourceSliceResourceK8sIoV1alpha2Args.fromMap(Map<String, dynamic> map) {
    return ResourceSliceResourceK8sIoV1alpha2Args(
      apiVersion: map['apiVersion'] == null ? null : pulumi.Output.create<String>(map['apiVersion'] as String),
      driverName: pulumi.Output.create<String>(map['driverName'] as String),
      kind: map['kind'] == null ? null : pulumi.Output.create<String>(map['kind'] as String),
      metadata: map['metadata'] == null ? null : pulumi.Output.create<ObjectMeta>(ObjectMeta.fromMap((map['metadata'] as Map).cast<String, dynamic>())),
      namedResources: map['namedResources'] == null ? null : pulumi.Output.create<NamedResourcesResources>(NamedResourcesResources.fromMap((map['namedResources'] as Map).cast<String, dynamic>())),
      nodeName: map['nodeName'] == null ? null : pulumi.Output.create<String>(map['nodeName'] as String),
    );
  }
}

