// ignore_for_file: unused_element, unnecessary_cast


/// Role is the type for Kubernetes roles
class RoleResponse {
  /// predefined_role is the Kubernetes default role to use
  final String predefinedRole;

  /// Creates a new [RoleResponse].
  /// [predefinedRole] predefined_role is the Kubernetes default role to use
  RoleResponse({
    required this.predefinedRole,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'predefinedRole': predefinedRole,
    };
  }

  factory RoleResponse.fromMap(Map<String, dynamic> map) {
    return RoleResponse(
      predefinedRole: map['predefinedRole'] as String,
    );
  }
}

