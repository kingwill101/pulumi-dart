// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iam_v1_get_organization_role_args_doc}
/// Arguments for getOrganizationRole.
/// {@endtemplate}
/// {@macro pulumi_iam_v1_get_organization_role_args_doc}
class GetOrganizationRoleArgs {
  final pulumi.Input<String> organizationId;
  final pulumi.Input<String> roleId;

  /// Creates a new [GetOrganizationRoleArgs].
  /// [organizationId] Required.
  /// [roleId] Required.
  const GetOrganizationRoleArgs({
    required this.organizationId,
    required this.roleId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'organizationId': organizationId,
      'roleId': roleId,
    };
  }

  factory GetOrganizationRoleArgs.fromMap(Map<String, dynamic> map) {
    return GetOrganizationRoleArgs(
      organizationId: pulumi.Input.fromValue(map['organizationId'] as String),
      roleId: pulumi.Input.fromValue(map['roleId'] as String),
    );
  }
}
