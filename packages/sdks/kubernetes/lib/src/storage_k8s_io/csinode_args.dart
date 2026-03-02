// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'csinode_spec.dart';

/// {@template pulumi_storage_k8s_io_v1_csinode_args_doc}
/// The set of arguments for CSINode.
/// {@endtemplate}
/// {@macro pulumi_storage_k8s_io_v1_csinode_args_doc}
class CSINodeArgs {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final pulumi.Input<String>? apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<String>? kind;
  /// Standard object's metadata. metadata.name must be the Kubernetes node name.
  final pulumi.Input<ObjectMeta>? metadata;
  /// spec is the specification of CSINode
  final pulumi.Input<CSINodeSpec> spec;

  /// Creates a new [CSINodeArgs].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] Standard object's metadata. metadata.name must be the Kubernetes node name.
  /// [spec] spec is the specification of CSINode
  CSINodeArgs({
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
      'spec': pulumi.Input.mapInputValue<CSINodeSpec, Map<String, dynamic>>(spec, (value) => value.toMap()),
    };
  }

  factory CSINodeArgs.fromMap(Map<String, dynamic> map) {
    return CSINodeArgs(
      apiVersion: map['apiVersion'] == null ? null : (map['apiVersion'] as String).input(),
      kind: map['kind'] == null ? null : (map['kind'] as String).input(),
      metadata: map['metadata'] == null ? null : (ObjectMeta.fromMap((map['metadata'] as Map).cast<String, dynamic>())).input(),
      spec: (CSINodeSpec.fromMap((map['spec'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

