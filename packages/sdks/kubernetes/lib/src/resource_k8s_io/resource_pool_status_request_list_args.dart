// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/list_meta.dart';
import 'resource_pool_status_request_resource_k8s_io_v1alpha3.dart';

/// {@template pulumi_resource_k8s_io_v1alpha3_resource_pool_status_request_list_args_doc}
/// The set of arguments for ResourcePoolStatusRequestList.
/// {@endtemplate}
/// {@macro pulumi_resource_k8s_io_v1alpha3_resource_pool_status_request_list_args_doc}
class ResourcePoolStatusRequestListArgs {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final pulumi.Input<String>? apiVersion;
  /// Items is the list of ResourcePoolStatusRequests.
  final pulumi.Input<List<ResourcePoolStatusRequestResourceK8sIoV1alpha3>> items;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<String>? kind;
  /// Standard list metadata
  final pulumi.Input<ListMeta>? metadata;

  /// Creates a new [ResourcePoolStatusRequestListArgs].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [items] Items is the list of ResourcePoolStatusRequests.
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] Standard list metadata
  const ResourcePoolStatusRequestListArgs({
    this.apiVersion,
    required this.items,
    this.kind,
    this.metadata,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'items': items,
      'kind': ?kind,
      'metadata': ?pulumi.Input.mapOptionalInputValue<ListMeta, Map<String, dynamic>>(metadata, (value) => value.toMap()),
    };
  }

  factory ResourcePoolStatusRequestListArgs.fromMap(Map<String, dynamic> map) {
    return ResourcePoolStatusRequestListArgs(
      apiVersion: (() { final guardedValue = map['apiVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      items: pulumi.Input.fromValue((map['items'] as List).cast<ResourcePoolStatusRequestResourceK8sIoV1alpha3>()),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ListMeta.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
