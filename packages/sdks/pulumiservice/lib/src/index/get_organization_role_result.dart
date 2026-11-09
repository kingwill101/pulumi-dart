// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getOrganizationRole.
class GetOrganizationRoleResult {
  /// Whether this is one of the roles every organization has (Admin, Member and Billing Manager), rather than a custom role.
  final bool? builtIn;
  /// The role's description, if it has one.
  final String? description;
  /// The role's name, as shown in the Pulumi Cloud console.
  final String? name;
  /// The role's ID. Pass it to inputs that take a role ID, such as `TeamRoleAssignment.roleId` and `OrganizationMember.roleId`.
  final String? roleId;

  /// Creates a new [GetOrganizationRoleResult].
  /// [builtIn] Whether this is one of the roles every organization has (Admin, Member and Billing Manager), rather than a custom role.
  /// [description] The role's description, if it has one.
  /// [name] The role's name, as shown in the Pulumi Cloud console.
  /// [roleId] The role's ID. Pass it to inputs that take a role ID, such as `TeamRoleAssignment.roleId` and `OrganizationMember.roleId`.
  const GetOrganizationRoleResult({
    this.builtIn,
    this.description,
    this.name,
    this.roleId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'builtIn': ?builtIn,
      'description': ?description,
      'name': ?name,
      'roleId': ?roleId,
    };
  }

  factory GetOrganizationRoleResult.fromMap(Map<String, dynamic> map) {
    return GetOrganizationRoleResult(
      builtIn: (() { final guardedValue = map['builtIn']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      roleId: (() { final guardedValue = map['roleId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
