// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta_patch.dart';
import 'csinode_spec_patch_storage_k8s_io_v1beta1.dart';

/// {@template pulumi_storage_k8s_io_v1beta1_csinode_patch_storage_k8s_io_v1beta1_args_doc}
/// The set of arguments for CSINodePatch.
/// {@endtemplate}
/// {@macro pulumi_storage_k8s_io_v1beta1_csinode_patch_storage_k8s_io_v1beta1_args_doc}
class CSINodePatchStorageK8sIoV1beta1Args {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final pulumi.Input<String>? apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<String>? kind;
  /// metadata.name must be the Kubernetes node name.
  final pulumi.Input<ObjectMetaPatch>? metadata;
  /// spec is the specification of CSINode
  final pulumi.Input<CSINodeSpecPatchStorageK8sIoV1beta1>? spec;

  /// Creates a new [CSINodePatchStorageK8sIoV1beta1Args].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] metadata.name must be the Kubernetes node name.
  /// [spec] spec is the specification of CSINode
  CSINodePatchStorageK8sIoV1beta1Args({
    pulumi.Output<String>? apiVersion,
    pulumi.Output<String>? kind,
    pulumi.Output<ObjectMetaPatch>? metadata,
    pulumi.Output<CSINodeSpecPatchStorageK8sIoV1beta1>? spec,
  }) :
      apiVersion = pulumi.Input.asOptionalInput<String>(apiVersion),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      metadata = pulumi.Input.asOptionalInput<ObjectMetaPatch>(metadata),
      spec = pulumi.Input.asOptionalInput<CSINodeSpecPatchStorageK8sIoV1beta1>(spec);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'kind': ?kind,
      'metadata': ?pulumi.Input.mapOptionalInputValue<ObjectMetaPatch, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'spec': ?pulumi.Input.mapOptionalInputValue<CSINodeSpecPatchStorageK8sIoV1beta1, Map<String, dynamic>>(spec, (value) => value.toMap()),
    };
  }

  factory CSINodePatchStorageK8sIoV1beta1Args.fromMap(Map<String, dynamic> map) {
    return CSINodePatchStorageK8sIoV1beta1Args(
      apiVersion: map['apiVersion'] == null ? null : pulumi.Output.create<String>(map['apiVersion'] as String),
      kind: map['kind'] == null ? null : pulumi.Output.create<String>(map['kind'] as String),
      metadata: map['metadata'] == null ? null : pulumi.Output.create<ObjectMetaPatch>(ObjectMetaPatch.fromMap((map['metadata'] as Map).cast<String, dynamic>())),
      spec: map['spec'] == null ? null : pulumi.Output.create<CSINodeSpecPatchStorageK8sIoV1beta1>(CSINodeSpecPatchStorageK8sIoV1beta1.fromMap((map['spec'] as Map).cast<String, dynamic>())),
    );
  }
}

