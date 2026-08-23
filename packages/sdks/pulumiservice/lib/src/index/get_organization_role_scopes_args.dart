// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_organization_role_scopes_args_doc}
/// Arguments for getOrganizationRoleScopes.
/// {@endtemplate}
/// {@macro pulumi_index_get_organization_role_scopes_args_doc}
class GetOrganizationRoleScopesArgs {
  /// The Pulumi Cloud organization name.
  final pulumi.Input<String> organizationName;

  /// Creates a new [GetOrganizationRoleScopesArgs].
  /// [organizationName] The Pulumi Cloud organization name.
  const GetOrganizationRoleScopesArgs({
    required this.organizationName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'organizationName': organizationName,
    };
  }

  factory GetOrganizationRoleScopesArgs.fromMap(Map<String, dynamic> map) {
    return GetOrganizationRoleScopesArgs(
      organizationName: pulumi.Input.fromValue(map['organizationName'] as String),
    );
  }
}
