// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SecretV1AclRead {
  /// The date the secret was created.
  final pulumi.Input<String>? createdAt;
  /// Whether the secret is accessible project wide.
  /// Defaults to `true`.
  final pulumi.Input<bool>? projectAccess;
  /// The date the secret was last updated.
  final pulumi.Input<String>? updatedAt;
  /// The list of user IDs, which are allowed to access the
  /// secret, when `project_access` is set to `false`.
  final pulumi.Input<List<String>>? users;

  /// Creates a new [SecretV1AclRead].
  /// [createdAt] The date the secret was created.
  /// [projectAccess] Whether the secret is accessible project wide.
  /// [updatedAt] The date the secret was last updated.
  /// [users] The list of user IDs, which are allowed to access the
  SecretV1AclRead({
    this.createdAt,
    this.projectAccess,
    this.updatedAt,
    this.users,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': ?createdAt,
      'projectAccess': ?projectAccess,
      'updatedAt': ?updatedAt,
      'users': ?users,
    };
  }

  factory SecretV1AclRead.fromMap(Map<String, dynamic> map) {
    return SecretV1AclRead(
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      projectAccess: (() { final guardedValue = map['projectAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      users: (() { final guardedValue = map['users']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

