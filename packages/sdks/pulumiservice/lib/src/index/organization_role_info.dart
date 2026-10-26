// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OrganizationRoleInfo {
  /// Whether this is one of the roles every organization has (Admin, Member and Billing Manager), rather than a custom role.
  final pulumi.Input<bool> builtIn;
  /// The role's description, if it has one.
  final pulumi.Input<String?>? description;
  /// The role's name, as shown in the Pulumi Cloud console.
  final pulumi.Input<String> name;
  /// The role's ID. Pass it to inputs that take a role ID, such as `TeamRoleAssignment.roleId` and `OrganizationMember.roleId`.
  final pulumi.Input<String> roleId;

  /// Creates a new [OrganizationRoleInfo].
  /// [builtIn] Whether this is one of the roles every organization has (Admin, Member and Billing Manager), rather than a custom role.
  /// [description] The role's description, if it has one.
  /// [name] The role's name, as shown in the Pulumi Cloud console.
  /// [roleId] The role's ID. Pass it to inputs that take a role ID, such as `TeamRoleAssignment.roleId` and `OrganizationMember.roleId`.
  const OrganizationRoleInfo({
    required this.builtIn,
    this.description,
    required this.name,
    required this.roleId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'builtIn': builtIn,
      'description': ?description,
      'name': name,
      'roleId': roleId,
    };
  }

  factory OrganizationRoleInfo.fromMap(Map<String, dynamic> map) {
    return OrganizationRoleInfo(
      builtIn: pulumi.Input.fromValue(map['builtIn'] as bool),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      roleId: pulumi.Input.fromValue(map['roleId'] as String),
    );
  }
}
