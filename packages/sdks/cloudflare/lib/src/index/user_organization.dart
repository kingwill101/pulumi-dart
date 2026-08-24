// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class UserOrganization {
  /// Identifier
  final pulumi.Input<String?>? id;
  /// Organization name.
  final pulumi.Input<String?>? name;
  /// Access permissions for this User.
  final pulumi.Input<List<String>?>? permissions;
  /// List of roles that a user has within an organization.
  final pulumi.Input<List<String>?>? roles;
  /// Whether the user is a member of the organization or has an invitation pending.
  /// Available values: "member", "invited".
  final pulumi.Input<String?>? status;

  /// Creates a new [UserOrganization].
  /// [id] Identifier
  /// [name] Organization name.
  /// [permissions] Access permissions for this User.
  /// [roles] List of roles that a user has within an organization.
  /// [status] Whether the user is a member of the organization or has an invitation pending.
  const UserOrganization({
    this.id,
    this.name,
    this.permissions,
    this.roles,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': ?name,
      'permissions': ?permissions,
      'roles': ?roles,
      'status': ?status,
    };
  }

  factory UserOrganization.fromMap(Map<String, dynamic> map) {
    return UserOrganization(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      permissions: (() { final guardedValue = map['permissions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      roles: (() { final guardedValue = map['roles']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
