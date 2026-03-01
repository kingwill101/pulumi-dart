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
    pulumi.Output<bool>? admin,
    pulumi.Output<String>? description,
    required pulumi.Output<String> name,
    required pulumi.Output<String> organizationName,
  }) :
      admin = pulumi.Input.asOptionalInput<bool>(admin),
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asInput<String>(name),
      organizationName = pulumi.Input.asInput<String>(organizationName);

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
      admin: map['admin'] == null ? null : pulumi.Output.create<bool>(map['admin'] as bool),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      name: pulumi.Output.create<String>(map['name'] as String),
      organizationName: pulumi.Output.create<String>(map['organizationName'] as String),
    );
  }
}

