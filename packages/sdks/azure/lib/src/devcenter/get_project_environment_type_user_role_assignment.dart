// ignore_for_file: unused_element, unnecessary_cast


class GetProjectEnvironmentTypeUserRoleAssignment {
  /// A list of roles to assign to the `user_id`.
  final List<String> roles;
  /// The user object ID that is assigned roles.
  final String userId;

  /// Creates a new [GetProjectEnvironmentTypeUserRoleAssignment].
  /// [roles] A list of roles to assign to the `user_id`.
  /// [userId] The user object ID that is assigned roles.
  GetProjectEnvironmentTypeUserRoleAssignment({
    required this.roles,
    required this.userId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'roles': roles,
      'userId': userId,
    };
  }

  factory GetProjectEnvironmentTypeUserRoleAssignment.fromMap(Map<String, dynamic> map) {
    return GetProjectEnvironmentTypeUserRoleAssignment(
      roles: (map['roles'] as List).cast<String>(),
      userId: map['userId'] as String,
    );
  }
}

