// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// RoleRef contains information that points to the role being used
class RoleRef {
  /// apiGroup is the group for the resource being referenced
  final pulumi.Input<String?>? apiGroup;
  /// kind is the type of resource being referenced
  final pulumi.Input<String> kind;
  /// name is the name of resource being referenced
  final pulumi.Input<String> name;

  /// Creates a new [RoleRef].
  /// [apiGroup] apiGroup is the group for the resource being referenced
  /// [kind] kind is the type of resource being referenced
  /// [name] name is the name of resource being referenced
  const RoleRef({
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

  factory RoleRef.fromMap(Map<String, dynamic> map) {
    return RoleRef(
      apiGroup: (() { final guardedValue = map['apiGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kind: pulumi.Input.fromValue(map['kind'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
