// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// IngressClassParametersReference identifies an API object. This can be used to specify a cluster or namespace-scoped resource.
class IngressClassParametersReferencePatch {
  /// apiGroup is the group for the resource being referenced. If APIGroup is not specified, the specified Kind must be in the core API group. For any other third-party types, APIGroup is required.
  final pulumi.Input<String>? apiGroup;
  /// kind is the type of resource being referenced.
  final pulumi.Input<String>? kind;
  /// name is the name of resource being referenced.
  final pulumi.Input<String>? name;
  /// namespace is the namespace of the resource being referenced. This field is required when scope is set to "Namespace" and must be unset when scope is set to "Cluster".
  final pulumi.Input<String>? namespace;
  /// scope represents if this refers to a cluster or namespace scoped resource. This may be set to "Cluster" (default) or "Namespace".
  final pulumi.Input<String>? scope;

  /// Creates a new [IngressClassParametersReferencePatch].
  /// [apiGroup] apiGroup is the group for the resource being referenced. If APIGroup is not specified, the specified Kind must be in the core API group. For any other third-party types, APIGroup is required.
  /// [kind] kind is the type of resource being referenced.
  /// [name] name is the name of resource being referenced.
  /// [namespace] namespace is the namespace of the resource being referenced. This field is required when scope is set to "Namespace" and must be unset when scope is set to "Cluster".
  /// [scope] scope represents if this refers to a cluster or namespace scoped resource. This may be set to "Cluster" (default) or "Namespace".
  IngressClassParametersReferencePatch({
    this.apiGroup,
    this.kind,
    this.name,
    this.namespace,
    this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiGroup': ?apiGroup,
      'kind': ?kind,
      'name': ?name,
      'namespace': ?namespace,
      'scope': ?scope,
    };
  }

  factory IngressClassParametersReferencePatch.fromMap(Map<String, dynamic> map) {
    return IngressClassParametersReferencePatch(
      apiGroup: map['apiGroup'] == null ? null : (map['apiGroup'] as String).input(),
      kind: map['kind'] == null ? null : (map['kind'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      namespace: map['namespace'] == null ? null : (map['namespace'] as String).input(),
      scope: map['scope'] == null ? null : (map['scope'] as String).input(),
    );
  }
}

