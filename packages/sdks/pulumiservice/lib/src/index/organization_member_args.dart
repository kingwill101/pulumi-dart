// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_organization_member_args_doc}
/// The set of arguments for OrganizationMember.
/// {@endtemplate}
/// {@macro pulumi_index_organization_member_args_doc}
class OrganizationMemberArgs {
  /// The Pulumi Cloud organization name.
  final pulumi.Input<String> organizationName;
  /// The built-in organization role. One of `member`, `admin`, `billing-manager`. Defaults to `member` on create. Ignored when `roleId` is set.
  final pulumi.Input<String>? role;
  /// The ID of a custom (fine-grained) organization role to assign. Takes precedence over `role`.
  final pulumi.Input<String>? roleId;
  /// The Pulumi Cloud username of the member.
  final pulumi.Input<String> username;

  /// Creates a new [OrganizationMemberArgs].
  /// [organizationName] The Pulumi Cloud organization name.
  /// [role] The built-in organization role. One of `member`, `admin`, `billing-manager`. Defaults to `member` on create. Ignored when `roleId` is set.
  /// [roleId] The ID of a custom (fine-grained) organization role to assign. Takes precedence over `role`.
  /// [username] The Pulumi Cloud username of the member.
  const OrganizationMemberArgs({
    required this.organizationName,
    this.role,
    this.roleId,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'organizationName': organizationName,
      'role': ?role,
      'roleId': ?roleId,
      'username': username,
    };
  }

  factory OrganizationMemberArgs.fromMap(Map<String, dynamic> map) {
    return OrganizationMemberArgs(
      organizationName: pulumi.Input.fromValue(map['organizationName'] as String),
      role: (() { final guardedValue = map['role']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roleId: (() { final guardedValue = map['roleId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      username: pulumi.Input.fromValue(map['username'] as String),
    );
  }
}
