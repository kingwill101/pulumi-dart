// ignore_for_file: unused_element, unnecessary_cast


/// TypedLocalObjectReference contains enough information to let you locate the typed referenced object inside the same namespace.
class TypedLocalObjectReference {
  /// APIGroup is the group for the resource being referenced. If APIGroup is not specified, the specified Kind must be in the core API group. For any other third-party types, APIGroup is required.
  final String? apiGroup;
  /// Kind is the type of resource being referenced
  final String kind;
  /// Name is the name of resource being referenced
  final String name;

  /// Creates a new [TypedLocalObjectReference].
  /// [apiGroup] APIGroup is the group for the resource being referenced. If APIGroup is not specified, the specified Kind must be in the core API group. For any other third-party types, APIGroup is required.
  /// [kind] Kind is the type of resource being referenced
  /// [name] Name is the name of resource being referenced
  TypedLocalObjectReference({
    this.apiGroup,
    required this.kind,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiGroup': ?apiGroup,
      'kind': kind,
      'name': name,
    };
  }

  factory TypedLocalObjectReference.fromMap(Map<String, dynamic> map) {
    return TypedLocalObjectReference(
      apiGroup: map['apiGroup'] == null ? null : map['apiGroup'] as String,
      kind: map['kind'] as String,
      name: map['name'] as String,
    );
  }
}

