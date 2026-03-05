// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_org_access_token_args_doc}
/// The set of arguments for OrgAccessToken.
/// {@endtemplate}
/// {@macro pulumi_index_org_access_token_args_doc}
class OrgAccessTokenArgs {
  /// Optional. True if this is an admin token.
  final pulumi.Input<bool>? admin;
  /// Optional. Team description.
  final pulumi.Input<String>? description;
  /// The name for the token.
  final pulumi.Input<String> name;
  /// The organization's name.
  final pulumi.Input<String> organizationName;

  /// Creates a new [OrgAccessTokenArgs].
  /// [admin] Optional. True if this is an admin token.
  /// [description] Optional. Team description.
  /// [name] The name for the token.
  /// [organizationName] The organization's name.
  OrgAccessTokenArgs({
    this.admin,
    this.description,
    required this.name,
    required this.organizationName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'admin': ?admin,
      'description': ?description,
      'name': name,
      'organizationName': organizationName,
    };
  }

  factory OrgAccessTokenArgs.fromMap(Map<String, dynamic> map) {
    return OrgAccessTokenArgs(
      admin: (() { final guardedValue = map['admin']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      organizationName: pulumi.Input.fromValue(map['organizationName'] as String),
    );
  }
}

