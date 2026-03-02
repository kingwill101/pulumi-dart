// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// RoleRef contains information that points to the role being used
class RoleRefPatchRbacAuthorizationK8sIoV1beta1 {
  /// APIGroup is the group for the resource being referenced
  final pulumi.Input<String>? apiGroup;
  /// Kind is the type of resource being referenced
  final pulumi.Input<String>? kind;
  /// Name is the name of resource being referenced
  final pulumi.Input<String>? name;

  /// Creates a new [RoleRefPatchRbacAuthorizationK8sIoV1beta1].
  /// [apiGroup] APIGroup is the group for the resource being referenced
  /// [kind] Kind is the type of resource being referenced
  /// [name] Name is the name of resource being referenced
  RoleRefPatchRbacAuthorizationK8sIoV1beta1({
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
      apiGroup: map['apiGroup'] == null ? null : (map['apiGroup'] as String).input(),
      kind: map['kind'] == null ? null : (map['kind'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
    );
  }
}

