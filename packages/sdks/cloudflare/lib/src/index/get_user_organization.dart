// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetUserOrganization {
  /// Identifier
  final pulumi.Input<String> id;
  /// Organization name.
  final pulumi.Input<String> name;
  /// Access permissions for this User.
  final pulumi.Input<List<String>> permissions;
  /// List of roles that a user has within an organization.
  final pulumi.Input<List<String>> roles;
  /// Whether the user is a member of the organization or has an invitation pending.
  /// Available values: "member", "invited".
  final pulumi.Input<String> status;

  /// Creates a new [GetUserOrganization].
  /// [id] Identifier
  /// [name] Organization name.
  /// [permissions] Access permissions for this User.
  /// [roles] List of roles that a user has within an organization.
  /// [status] Whether the user is a member of the organization or has an invitation pending.
  const GetUserOrganization({
    required this.id,
    required this.name,
    required this.permissions,
    required this.roles,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'permissions': permissions,
      'roles': roles,
      'status': status,
    };
  }

  factory GetUserOrganization.fromMap(Map<String, dynamic> map) {
    return GetUserOrganization(
      id: pulumi.Input.fromValue(map['id'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      permissions: pulumi.Input.fromValue((map['permissions'] as List).cast<String>()),
      roles: pulumi.Input.fromValue((map['roles'] as List).cast<String>()),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}
