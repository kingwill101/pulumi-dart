// ignore_for_file: unused_element, unnecessary_cast


class GetSecretAclRead {
  /// The date the secret ACL was created.
  final String createdAt;
  /// Whether the secret is accessible project wide.
  final bool? projectAccess;
  /// The date the secret ACL was last updated.
  final String updatedAt;
  /// The list of user IDs, which are allowed to access the secret, when
  /// `project_access` is set to `false`.
  final List<String>? users;

  /// Creates a new [GetSecretAclRead].
  /// [createdAt] The date the secret ACL was created.
  /// [projectAccess] Whether the secret is accessible project wide.
  /// [updatedAt] The date the secret ACL was last updated.
  /// [users] The list of user IDs, which are allowed to access the secret, when
  GetSecretAclRead({
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

  factory GetSecretAclRead.fromMap(Map<String, dynamic> map) {
    return GetSecretAclRead(
      createdAt: map['createdAt'] as String,
      projectAccess: map['projectAccess'] == null ? null : map['projectAccess'] as bool,
      updatedAt: map['updatedAt'] as String,
      users: map['users'] == null ? null : (map['users'] as List).cast<String>(),
    );
  }
}

