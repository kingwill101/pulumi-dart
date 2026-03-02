// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ParentReference describes a reference to a parent object.
class ParentReferencePatch {
  /// Group is the group of the object being referenced.
  final pulumi.Input<String>? group;
  /// Name is the name of the object being referenced.
  final pulumi.Input<String>? name;
  /// Namespace is the namespace of the object being referenced.
  final pulumi.Input<String>? namespace;
  /// Resource is the resource of the object being referenced.
  final pulumi.Input<String>? resource;

  /// Creates a new [ParentReferencePatch].
  /// [group] Group is the group of the object being referenced.
  /// [name] Name is the name of the object being referenced.
  /// [namespace] Namespace is the namespace of the object being referenced.
  /// [resource] Resource is the resource of the object being referenced.
  ParentReferencePatch({
    this.group,
    this.name,
    this.namespace,
    this.resource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'group': ?group,
      'name': ?name,
      'namespace': ?namespace,
      'resource': ?resource,
    };
  }

  factory ParentReferencePatch.fromMap(Map<String, dynamic> map) {
    return ParentReferencePatch(
      group: map['group'] == null ? null : (map['group']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      namespace: map['namespace'] == null ? null : (map['namespace']! as String).input(),
      resource: map['resource'] == null ? null : (map['resource']! as String).input(),
    );
  }
}

