// ignore_for_file: unused_element, unnecessary_cast


/// RoleRef contains information that points to the role being used
class RoleRefRbacAuthorizationK8sIoV1beta1 {
  /// APIGroup is the group for the resource being referenced
  final String apiGroup;
  /// Kind is the type of resource being referenced
  final String kind;
  /// Name is the name of resource being referenced
  final String name;

  /// Creates a new [RoleRefRbacAuthorizationK8sIoV1beta1].
  /// [apiGroup] APIGroup is the group for the resource being referenced
  /// [kind] Kind is the type of resource being referenced
  /// [name] Name is the name of resource being referenced
  RoleRefRbacAuthorizationK8sIoV1beta1({
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

  factory RoleRefRbacAuthorizationK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return RoleRefRbacAuthorizationK8sIoV1beta1(
      apiGroup: map['apiGroup'] as String,
      kind: map['kind'] as String,
      name: map['name'] as String,
    );
  }
}

