// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'namespace_spec.dart';

/// {@template pulumi_core_v1_namespace_args_doc}
/// The set of arguments for Namespace.
/// {@endtemplate}
/// {@macro pulumi_core_v1_namespace_args_doc}
class NamespaceArgs {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final pulumi.Input<String?>? apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<String?>? kind;
  /// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  final pulumi.Input<ObjectMeta?>? metadata;
  /// Spec defines the behavior of the Namespace. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  final pulumi.Input<NamespaceSpec?>? spec;

  /// Creates a new [NamespaceArgs].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  /// [spec] Spec defines the behavior of the Namespace. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  const NamespaceArgs({
    this.apiVersion,
    this.kind,
    this.metadata,
    this.spec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'kind': ?kind,
      'metadata': ?pulumi.Input.mapOptionalInputValue<ObjectMeta, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'spec': ?pulumi.Input.mapOptionalInputValue<NamespaceSpec, Map<String, dynamic>>(spec, (value) => value.toMap()),
    };
  }

  factory NamespaceArgs.fromMap(Map<String, dynamic> map) {
    return NamespaceArgs(
      apiVersion: (() { final guardedValue = map['apiVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ObjectMeta.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      spec: (() { final guardedValue = map['spec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NamespaceSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
