// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_organization_members_args_doc}
/// Arguments for getOrganizationMembers.
/// {@endtemplate}
/// {@macro pulumi_index_get_organization_members_args_doc}
class GetOrganizationMembersArgs {
  /// The name of the Pulumi organization.
  final pulumi.Input<String> organizationName;

  /// Creates a new [GetOrganizationMembersArgs].
  /// [organizationName] The name of the Pulumi organization.
  const GetOrganizationMembersArgs({
    required this.organizationName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'organizationName': organizationName,
    };
  }

  factory GetOrganizationMembersArgs.fromMap(Map<String, dynamic> map) {
    return GetOrganizationMembersArgs(
      organizationName: pulumi.Input.fromValue(map['organizationName'] as String),
    );
  }
}
