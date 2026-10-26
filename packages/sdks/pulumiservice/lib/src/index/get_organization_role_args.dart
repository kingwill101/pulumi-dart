// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_organization_role_args_doc}
/// Arguments for getOrganizationRole.
/// {@endtemplate}
/// {@macro pulumi_index_get_organization_role_args_doc}
class GetOrganizationRoleArgs {
  /// The role's name, as shown in the Pulumi Cloud console. The match is case-insensitive, as role names are unique within an organization regardless of case.
  final pulumi.Input<String> name;
  /// The name of the Pulumi organization.
  final pulumi.Input<String> organizationName;

  /// Creates a new [GetOrganizationRoleArgs].
  /// [name] The role's name, as shown in the Pulumi Cloud console. The match is case-insensitive, as role names are unique within an organization regardless of case.
  /// [organizationName] The name of the Pulumi organization.
  const GetOrganizationRoleArgs({
    required this.name,
    required this.organizationName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'organizationName': organizationName,
    };
  }

  factory GetOrganizationRoleArgs.fromMap(Map<String, dynamic> map) {
    return GetOrganizationRoleArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      organizationName: pulumi.Input.fromValue(map['organizationName'] as String),
    );
  }
}
