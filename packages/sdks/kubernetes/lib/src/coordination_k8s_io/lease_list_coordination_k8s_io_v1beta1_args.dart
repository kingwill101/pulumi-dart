// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/list_meta.dart';
import 'lease_resource.dart';

/// {@template pulumi_coordination_k8s_io_v1beta1_lease_list_coordination_k8s_io_v1beta1_args_doc}
/// The set of arguments for LeaseList.
/// {@endtemplate}
/// {@macro pulumi_coordination_k8s_io_v1beta1_lease_list_coordination_k8s_io_v1beta1_args_doc}
class LeaseListCoordinationK8sIoV1beta1Args {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final pulumi.Input<String>? apiVersion;
  /// Items is a list of schema objects.
  final pulumi.Input<List<LeaseResource>> items;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<String>? kind;
  /// Standard list metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  final pulumi.Input<ListMeta>? metadata;

  /// Creates a new [LeaseListCoordinationK8sIoV1beta1Args].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [items] Items is a list of schema objects.
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] Standard list metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  LeaseListCoordinationK8sIoV1beta1Args({
    pulumi.Output<String>? apiVersion,
    required pulumi.Output<List<LeaseResource>> items,
    pulumi.Output<String>? kind,
    pulumi.Output<ListMeta>? metadata,
  }) :
      apiVersion = pulumi.Input.asOptionalInput<String>(apiVersion),
      items = pulumi.Input.asInput<List<LeaseResource>>(items),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      metadata = pulumi.Input.asOptionalInput<ListMeta>(metadata);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'items': items,
      'kind': ?kind,
      'metadata': ?pulumi.Input.mapOptionalInputValue<ListMeta, Map<String, dynamic>>(metadata, (value) => value.toMap()),
    };
  }

  factory LeaseListCoordinationK8sIoV1beta1Args.fromMap(Map<String, dynamic> map) {
    return LeaseListCoordinationK8sIoV1beta1Args(
      apiVersion: map['apiVersion'] == null ? null : pulumi.Output.create<String>(map['apiVersion'] as String),
      items: pulumi.Output.create<List<LeaseResource>>((map['items'] as List).cast<LeaseResource>()),
      kind: map['kind'] == null ? null : pulumi.Output.create<String>(map['kind'] as String),
      metadata: map['metadata'] == null ? null : pulumi.Output.create<ListMeta>(ListMeta.fromMap((map['metadata'] as Map).cast<String, dynamic>())),
    );
  }
}

