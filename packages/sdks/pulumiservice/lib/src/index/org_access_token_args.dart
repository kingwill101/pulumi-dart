// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_org_access_token_args_doc}
/// The set of arguments for OrgAccessToken.
/// {@endtemplate}
/// {@macro pulumi_index_org_access_token_args_doc}
class OrgAccessTokenArgs {
  /// Whether the token has the Admin role. Defaults to `false`. Mutually exclusive with `roleId`: set `admin: true` or `roleId`, not both.
  final pulumi.Input<bool?>? admin;
  /// A description of the token.
  final pulumi.Input<String?>? description;
  /// When the token expires, as an RFC 3339 date-time such as `2027-06-30T17:00:00Z`. Omit it for a token that never expires. Pulumi Cloud rejects an expiry that is in the past, more than two years away, or beyond the organization's maximum token lifetime.
  final pulumi.Input<String?>? expires;
  /// The name for the token.
  final pulumi.Input<String> name;
  /// The organization's name.
  final pulumi.Input<String> organizationName;
  /// The ID of the role to assign to the token. Use `getOrganizationRole` to look up a role's ID by its name. Mutually exclusive with `admin: true`: set one or the other, not both. Pulumi Cloud accepts both, but some of its permission checks still treat such a token as an Admin whatever its role, so the provider rejects the combination. When neither is set, the token gets the Member role.
  final pulumi.Input<String?>? roleId;

  /// Creates a new [OrgAccessTokenArgs].
  /// [admin] Whether the token has the Admin role. Defaults to `false`. Mutually exclusive with `roleId`: set `admin: true` or `roleId`, not both.
  /// [description] A description of the token.
  /// [expires] When the token expires, as an RFC 3339 date-time such as `2027-06-30T17:00:00Z`. Omit it for a token that never expires. Pulumi Cloud rejects an expiry that is in the past, more than two years away, or beyond the organization's maximum token lifetime.
  /// [name] The name for the token.
  /// [organizationName] The organization's name.
  /// [roleId] The ID of the role to assign to the token. Use `getOrganizationRole` to look up a role's ID by its name. Mutually exclusive with `admin: true`: set one or the other, not both. Pulumi Cloud accepts both, but some of its permission checks still treat such a token as an Admin whatever its role, so the provider rejects the combination. When neither is set, the token gets the Member role.
  OrgAccessTokenArgs({
    pulumi.Input<bool?>? admin,
    this.description,
    this.expires,
    required this.name,
    required this.organizationName,
    this.roleId,
  }) : admin = admin ?? pulumi.Input.fromValue(false);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'admin': ?admin,
      'description': ?description,
      'expires': ?expires,
      'name': name,
      'organizationName': organizationName,
      'roleId': ?roleId,
    };
  }

  factory OrgAccessTokenArgs.fromMap(Map<String, dynamic> map) {
    return OrgAccessTokenArgs(
      admin: (() { final guardedValue = map['admin']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expires: (() { final guardedValue = map['expires']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      organizationName: pulumi.Input.fromValue(map['organizationName'] as String),
      roleId: (() { final guardedValue = map['roleId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
