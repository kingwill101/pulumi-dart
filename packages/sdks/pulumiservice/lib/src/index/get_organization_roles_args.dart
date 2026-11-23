// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_organization_roles_args_doc}
/// Arguments for getOrganizationRoles.
/// {@endtemplate}
/// {@macro pulumi_index_get_organization_roles_args_doc}
class GetOrganizationRolesArgs {
  /// The name of the Pulumi organization.
  final pulumi.Input<String> organizationName;

  /// Creates a new [GetOrganizationRolesArgs].
  /// [organizationName] The name of the Pulumi organization.
  const GetOrganizationRolesArgs({
    required this.organizationName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'organizationName': organizationName,
    };
  }

  factory GetOrganizationRolesArgs.fromMap(Map<String, dynamic> map) {
    return GetOrganizationRolesArgs(
      organizationName: pulumi.Input.fromValue(map['organizationName'] as String),
    );
  }
}
