// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSecretAclRead {
  /// The date the secret ACL was created.
  final pulumi.Input<String> createdAt;
  /// Whether the secret is accessible project wide.
  final pulumi.Input<bool>? projectAccess;
  /// The date the secret ACL was last updated.
  final pulumi.Input<String> updatedAt;
  /// The list of user IDs, which are allowed to access the secret, when
  /// `project_access` is set to `false`.
  final pulumi.Input<List<String>>? users;

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
      createdAt: pulumi.Input.fromValue(map['createdAt'] as String),
      projectAccess: (() { final guardedValue = map['projectAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      updatedAt: pulumi.Input.fromValue(map['updatedAt'] as String),
      users: (() { final guardedValue = map['users']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

