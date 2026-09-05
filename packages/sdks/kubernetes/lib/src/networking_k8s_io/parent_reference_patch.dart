// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ParentReference describes a reference to a parent object.
class ParentReferencePatch {
  /// group is the group of the object being referenced.
  final pulumi.Input<String?>? group;
  /// name is the name of the object being referenced.
  final pulumi.Input<String?>? name;
  /// namespace is the namespace of the object being referenced.
  final pulumi.Input<String?>? namespace;
  /// resource is the resource of the object being referenced.
  final pulumi.Input<String?>? resource;

  /// Creates a new [ParentReferencePatch].
  /// [group] group is the group of the object being referenced.
  /// [name] name is the name of the object being referenced.
  /// [namespace] namespace is the namespace of the object being referenced.
  /// [resource] resource is the resource of the object being referenced.
  const ParentReferencePatch({
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
      group: (() { final guardedValue = map['group']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namespace: (() { final guardedValue = map['namespace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resource: (() { final guardedValue = map['resource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
