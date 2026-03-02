// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ResourceClassParametersReference contains enough information to let you locate the parameters for a ResourceClass.
class ResourceClassParametersReferencePatch {
  /// APIGroup is the group for the resource being referenced. It is empty for the core API. This matches the group in the APIVersion that is used when creating the resources.
  final pulumi.Input<String>? apiGroup;
  /// Kind is the type of resource being referenced. This is the same value as in the parameter object's metadata.
  final pulumi.Input<String>? kind;
  /// Name is the name of resource being referenced.
  final pulumi.Input<String>? name;
  /// Namespace that contains the referenced resource. Must be empty for cluster-scoped resources and non-empty for namespaced resources.
  final pulumi.Input<String>? namespace;

  /// Creates a new [ResourceClassParametersReferencePatch].
  /// [apiGroup] APIGroup is the group for the resource being referenced. It is empty for the core API. This matches the group in the APIVersion that is used when creating the resources.
  /// [kind] Kind is the type of resource being referenced. This is the same value as in the parameter object's metadata.
  /// [name] Name is the name of resource being referenced.
  /// [namespace] Namespace that contains the referenced resource. Must be empty for cluster-scoped resources and non-empty for namespaced resources.
  ResourceClassParametersReferencePatch({
    this.apiGroup,
    this.kind,
    this.name,
    this.namespace,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiGroup': ?apiGroup,
      'kind': ?kind,
      'name': ?name,
      'namespace': ?namespace,
    };
  }

  factory ResourceClassParametersReferencePatch.fromMap(Map<String, dynamic> map) {
    return ResourceClassParametersReferencePatch(
      apiGroup: map['apiGroup'] == null ? null : (map['apiGroup']! as String).input(),
      kind: map['kind'] == null ? null : (map['kind']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      namespace: map['namespace'] == null ? null : (map['namespace']! as String).input(),
    );
  }
}

