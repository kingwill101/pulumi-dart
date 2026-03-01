// ignore_for_file: unused_element, unnecessary_cast


class GetContainerAclRead {
  /// The date the container ACL was created.
  final String createdAt;
  /// Whether the container is accessible project wide.
  final bool? projectAccess;
  /// The date the container ACL was last updated.
  final String updatedAt;
  /// The list of user IDs, which are allowed to access the container,
  /// when `project_access` is set to `false`.
  final List<String>? users;

  /// Creates a new [GetContainerAclRead].
  /// [createdAt] The date the container ACL was created.
  /// [projectAccess] Whether the container is accessible project wide.
  /// [updatedAt] The date the container ACL was last updated.
  /// [users] The list of user IDs, which are allowed to access the container,
  GetContainerAclRead({
    required this.createdAt,
    this.projectAccess,
    required this.updatedAt,
    this.users,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': createdAt,
      'projectAccess': ?projectAccess,
      'updatedAt': updatedAt,
      'users': ?users,
    };
  }

  factory GetContainerAclRead.fromMap(Map<String, dynamic> map) {
    return GetContainerAclRead(
      createdAt: map['createdAt'] as String,
      projectAccess: map['projectAccess'] == null ? null : map['projectAccess'] as bool,
      updatedAt: map['updatedAt'] as String,
      users: map['users'] == null ? null : (map['users'] as List).cast<String>(),
    );
  }
}

