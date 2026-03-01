// ignore_for_file: unused_element, unnecessary_cast


/// TypedObjectReference contains enough information to let you locate the typed referenced object
class TypedObjectReferencePatch {
  /// APIGroup is the group for the resource being referenced. If APIGroup is not specified, the specified Kind must be in the core API group. For any other third-party types, APIGroup is required.
  final String? apiGroup;
  /// Kind is the type of resource being referenced
  final String? kind;
  /// Name is the name of resource being referenced
  final String? name;
  /// Namespace is the namespace of resource being referenced Note that when a namespace is specified, a gateway.networking.k8s.io/ReferenceGrant object is required in the referent namespace to allow that namespace's owner to accept the reference. See the ReferenceGrant documentation for details. (Alpha) This field requires the CrossNamespaceVolumeDataSource feature gate to be enabled.
  final String? namespace;

  /// Creates a new [TypedObjectReferencePatch].
  /// [apiGroup] APIGroup is the group for the resource being referenced. If APIGroup is not specified, the specified Kind must be in the core API group. For any other third-party types, APIGroup is required.
  /// [kind] Kind is the type of resource being referenced
  /// [name] Name is the name of resource being referenced
  /// [namespace] Namespace is the namespace of resource being referenced Note that when a namespace is specified, a gateway.networking.k8s.io/ReferenceGrant object is required in the referent namespace to allow that namespace's owner to accept the reference. See the ReferenceGrant documentation for details. (Alpha) This field requires the CrossNamespaceVolumeDataSource feature gate to be enabled.
  TypedObjectReferencePatch({
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

  factory TypedObjectReferencePatch.fromMap(Map<String, dynamic> map) {
    return TypedObjectReferencePatch(
      apiGroup: map['apiGroup'] == null ? null : map['apiGroup'] as String,
      kind: map['kind'] == null ? null : map['kind'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      namespace: map['namespace'] == null ? null : map['namespace'] as String,
    );
  }
}

