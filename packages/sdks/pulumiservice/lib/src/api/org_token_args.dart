// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_api_tokens_org_token_args_doc}
/// The set of arguments for OrgToken.
/// {@endtemplate}
/// {@macro pulumi_api_tokens_org_token_args_doc}
class OrgTokenArgs {
  /// Whether the entity has admin privileges
  final pulumi.Input<bool> admin;
  /// The description
  final pulumi.Input<String> description;
  /// The expiration time
  final pulumi.Input<int> expires;
  /// The name
  final pulumi.Input<String> name;
  /// The organization name
  final pulumi.Input<String> orgName;
  /// Audit log reason for creating this token
  final pulumi.Input<String>? reason;
  /// The role identifier
  final pulumi.Input<String>? roleID;

  /// Creates a new [OrgTokenArgs].
  /// [admin] Whether the entity has admin privileges
  /// [description] The description
  /// [expires] The expiration time
  /// [name] The name
  /// [orgName] The organization name
  /// [reason] Audit log reason for creating this token
  /// [roleID] The role identifier
  const OrgTokenArgs({
    required this.admin,
    required this.description,
    required this.expires,
    required this.name,
    required this.orgName,
    this.reason,
    this.roleID,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'admin': admin,
      'description': description,
      'expires': expires,
      'name': name,
      'orgName': orgName,
      'reason': ?reason,
      'roleID': ?roleID,
    };
  }

  factory OrgTokenArgs.fromMap(Map<String, dynamic> map) {
    return OrgTokenArgs(
      admin: pulumi.Input.fromValue(map['admin'] as bool),
      description: pulumi.Input.fromValue(map['description'] as String),
      expires: pulumi.Input.fromValue(map['expires'] as int),
      name: pulumi.Input.fromValue(map['name'] as String),
      orgName: pulumi.Input.fromValue(map['orgName'] as String),
      reason: (() { final guardedValue = map['reason']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roleID: (() { final guardedValue = map['roleID']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
