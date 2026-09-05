// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// RoleRef contains information that points to the role being used
class RoleRefPatchRbacAuthorizationK8sIoV1beta1 {
  /// APIGroup is the group for the resource being referenced
  final pulumi.Input<String?>? apiGroup;
  /// Kind is the type of resource being referenced
  final pulumi.Input<String?>? kind;
  /// Name is the name of resource being referenced
  final pulumi.Input<String?>? name;

  /// Creates a new [RoleRefPatchRbacAuthorizationK8sIoV1beta1].
  /// [apiGroup] APIGroup is the group for the resource being referenced
  /// [kind] Kind is the type of resource being referenced
  /// [name] Name is the name of resource being referenced
  const RoleRefPatchRbacAuthorizationK8sIoV1beta1({
    this.apiGroup,
    this.kind,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiGroup': ?apiGroup,
      'kind': ?kind,
      'name': ?name,
    };
  }

  factory RoleRefPatchRbacAuthorizationK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return RoleRefPatchRbacAuthorizationK8sIoV1beta1(
      apiGroup: (() { final guardedValue = map['apiGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
