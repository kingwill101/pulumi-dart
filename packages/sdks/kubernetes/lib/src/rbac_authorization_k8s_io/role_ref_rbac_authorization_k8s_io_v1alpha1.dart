// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// RoleRef contains information that points to the role being used
class RoleRefRbacAuthorizationK8sIoV1alpha1 {
  /// APIGroup is the group for the resource being referenced
  final pulumi.Input<String> apiGroup;
  /// Kind is the type of resource being referenced
  final pulumi.Input<String> kind;
  /// Name is the name of resource being referenced
  final pulumi.Input<String> name;

  /// Creates a new [RoleRefRbacAuthorizationK8sIoV1alpha1].
  /// [apiGroup] APIGroup is the group for the resource being referenced
  /// [kind] Kind is the type of resource being referenced
  /// [name] Name is the name of resource being referenced
  const RoleRefRbacAuthorizationK8sIoV1alpha1({
    required this.apiGroup,
    required this.kind,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiGroup': apiGroup,
      'kind': kind,
      'name': name,
    };
  }

  factory RoleRefRbacAuthorizationK8sIoV1alpha1.fromMap(Map<String, dynamic> map) {
    return RoleRefRbacAuthorizationK8sIoV1alpha1(
      apiGroup: pulumi.Input.fromValue(map['apiGroup'] as String),
      kind: pulumi.Input.fromValue(map['kind'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

