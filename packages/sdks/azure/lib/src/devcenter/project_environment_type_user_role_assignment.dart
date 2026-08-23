// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ProjectEnvironmentTypeUserRoleAssignment {
  /// A list of roles to assign to the `userId`.
  final pulumi.Input<List<String>> roles;
  /// The user object ID that is assigned roles.
  final pulumi.Input<String> userId;

  /// Creates a new [ProjectEnvironmentTypeUserRoleAssignment].
  /// [roles] A list of roles to assign to the `userId`.
  /// [userId] The user object ID that is assigned roles.
  const ProjectEnvironmentTypeUserRoleAssignment({
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
      roles: pulumi.Input.fromValue((map['roles'] as List).cast<String>()),
      userId: pulumi.Input.fromValue(map['userId'] as String),
    );
  }
}
