// ignore_for_file: unused_element, unnecessary_cast


class ProjectEnvironmentTypeUserRoleAssignment {
  /// A list of roles to assign to the `user_id`.
  final List<String> roles;
  /// The user object ID that is assigned roles.
  final String userId;

  /// Creates a new [ProjectEnvironmentTypeUserRoleAssignment].
  /// [roles] A list of roles to assign to the `user_id`.
  /// [userId] The user object ID that is assigned roles.
  ProjectEnvironmentTypeUserRoleAssignment({
    required this.roles,
    required this.userId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'roles': roles,
      'userId': userId,
    };
  }

  factory ProjectEnvironmentTypeUserRoleAssignment.fromMap(Map<String, dynamic> map) {
    return ProjectEnvironmentTypeUserRoleAssignment(
      roles: (map['roles'] as List).cast<String>(),
      userId: map['userId'] as String,
    );
  }
}

