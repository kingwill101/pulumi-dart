// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// TypedLocalObjectReference allows to reference typed object inside the same namespace.
class TypedLocalObjectReference {
  /// APIGroup is the group for the resource being referenced. If APIGroup is empty, the specified Kind must be in the core API group. For any other third-party types, setting APIGroup is required. It must be a DNS subdomain.
  final pulumi.Input<String>? apiGroup;
  /// Kind is the type of resource being referenced. It must be a path segment name.
  final pulumi.Input<String> kind;
  /// Name is the name of resource being referenced. It must be a path segment name.
  final pulumi.Input<String> name;

  /// Creates a new [TypedLocalObjectReference].
  /// [apiGroup] APIGroup is the group for the resource being referenced. If APIGroup is empty, the specified Kind must be in the core API group. For any other third-party types, setting APIGroup is required. It must be a DNS subdomain.
  /// [kind] Kind is the type of resource being referenced. It must be a path segment name.
  /// [name] Name is the name of resource being referenced. It must be a path segment name.
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
      apiGroup: map['apiGroup'] == null ? null : (map['apiGroup'] as String).input(),
      kind: (map['kind'] as String).input(),
      name: (map['name'] as String).input(),
    );
  }
}

