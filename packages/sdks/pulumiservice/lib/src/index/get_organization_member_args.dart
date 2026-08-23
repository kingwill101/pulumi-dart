// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_organization_member_args_doc}
/// Arguments for getOrganizationMember.
/// {@endtemplate}
/// {@macro pulumi_index_get_organization_member_args_doc}
class GetOrganizationMemberArgs {
  /// The name of the Pulumi organization.
  final pulumi.Input<String> organizationName;
  /// The Pulumi Cloud username (backing identity-provider login) to look up.
  final pulumi.Input<String> username;

  /// Creates a new [GetOrganizationMemberArgs].
  /// [organizationName] The name of the Pulumi organization.
  /// [username] The Pulumi Cloud username (backing identity-provider login) to look up.
  const GetOrganizationMemberArgs({
    required this.organizationName,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'organizationName': organizationName,
      'username': username,
    };
  }

  factory GetOrganizationMemberArgs.fromMap(Map<String, dynamic> map) {
    return GetOrganizationMemberArgs(
      organizationName: pulumi.Input.fromValue(map['organizationName'] as String),
      username: pulumi.Input.fromValue(map['username'] as String),
    );
  }
}
