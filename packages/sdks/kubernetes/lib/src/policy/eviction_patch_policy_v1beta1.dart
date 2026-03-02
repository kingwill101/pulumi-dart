// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/delete_options_patch.dart';
import '../meta/object_meta_patch.dart';

/// Eviction evicts a pod from its node subject to certain policies and safety constraints. This is a subresource of Pod.  A request to cause such an eviction is created by POSTing to .../pods/<pod name>/evictions.
class EvictionPatchPolicyV1beta1 {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final pulumi.Input<String>? apiVersion;
  /// DeleteOptions may be provided
  final pulumi.Input<DeleteOptionsPatch>? deleteOptions;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<String>? kind;
  /// ObjectMeta describes the pod that is being evicted.
  final pulumi.Input<ObjectMetaPatch>? metadata;

  /// Creates a new [EvictionPatchPolicyV1beta1].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [deleteOptions] DeleteOptions may be provided
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] ObjectMeta describes the pod that is being evicted.
  EvictionPatchPolicyV1beta1({
    this.apiVersion,
    this.deleteOptions,
    this.kind,
    this.metadata,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'deleteOptions': ?pulumi.Input.mapOptionalInputValue<DeleteOptionsPatch, Map<String, dynamic>>(deleteOptions, (value) => value.toMap()),
      'kind': ?kind,
      'metadata': ?pulumi.Input.mapOptionalInputValue<ObjectMetaPatch, Map<String, dynamic>>(metadata, (value) => value.toMap()),
    };
  }

  factory EvictionPatchPolicyV1beta1.fromMap(Map<String, dynamic> map) {
    return EvictionPatchPolicyV1beta1(
      apiVersion: map['apiVersion'] == null ? null : (map['apiVersion']! as String).input(),
      deleteOptions: map['deleteOptions'] == null ? null : (DeleteOptionsPatch.fromMap((map['deleteOptions']! as Map).cast<String, dynamic>())).input(),
      kind: map['kind'] == null ? null : (map['kind']! as String).input(),
      metadata: map['metadata'] == null ? null : (ObjectMetaPatch.fromMap((map['metadata']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

