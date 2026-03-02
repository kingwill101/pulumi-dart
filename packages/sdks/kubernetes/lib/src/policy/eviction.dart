// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/delete_options.dart';
import '../meta/object_meta.dart';

/// Eviction evicts a pod from its node subject to certain policies and safety constraints. This is a subresource of Pod.  A request to cause such an eviction is created by POSTing to .../pods/<pod name>/evictions.
class Eviction {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final pulumi.Input<String>? apiVersion;
  /// DeleteOptions may be provided
  final pulumi.Input<DeleteOptions>? deleteOptions;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<String>? kind;
  /// ObjectMeta describes the pod that is being evicted.
  final pulumi.Input<ObjectMeta>? metadata;

  /// Creates a new [Eviction].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [deleteOptions] DeleteOptions may be provided
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] ObjectMeta describes the pod that is being evicted.
  Eviction({
    this.apiVersion,
    this.deleteOptions,
    this.kind,
    this.metadata,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'deleteOptions': ?pulumi.Input.mapOptionalInputValue<DeleteOptions, Map<String, dynamic>>(deleteOptions, (value) => value.toMap()),
      'kind': ?kind,
      'metadata': ?pulumi.Input.mapOptionalInputValue<ObjectMeta, Map<String, dynamic>>(metadata, (value) => value.toMap()),
    };
  }

  factory Eviction.fromMap(Map<String, dynamic> map) {
    return Eviction(
      apiVersion: map['apiVersion'] == null ? null : (map['apiVersion'] as String).input(),
      deleteOptions: map['deleteOptions'] == null ? null : (DeleteOptions.fromMap((map['deleteOptions'] as Map).cast<String, dynamic>())).input(),
      kind: map['kind'] == null ? null : (map['kind'] as String).input(),
      metadata: map['metadata'] == null ? null : (ObjectMeta.fromMap((map['metadata'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

