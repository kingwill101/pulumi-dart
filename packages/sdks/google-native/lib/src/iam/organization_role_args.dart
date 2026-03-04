// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'organization_role_stage.dart';

/// {@template pulumi_iam_v1_organization_role_args_doc}
/// The set of arguments for OrganizationRole.
/// {@endtemplate}
/// {@macro pulumi_iam_v1_organization_role_args_doc}
class OrganizationRoleArgs {
  /// The current deleted state of the role. This field is read only. It will be ignored in calls to CreateRole and UpdateRole.
  final pulumi.Input<bool>? deleted;

  /// Optional. A human-readable description for the role.
  final pulumi.Input<String>? description;

  /// Used to perform a consistent read-modify-write.
  final pulumi.Input<String>? etag;

  /// The names of the permissions this role grants when bound in an IAM policy.
  final pulumi.Input<List<String>>? includedPermissions;

  /// The name of the role. When `Role` is used in `CreateRole`, the role name must not be set. When `Role` is used in output and other input such as `UpdateRole`, the role name is the complete path. For example, `roles/logging.viewer` for predefined roles, `organizations/{ORGANIZATION_ID}/roles/my-role` for organization-level custom roles, and `projects/{PROJECT_ID}/roles/my-role` for project-level custom roles.
  final pulumi.Input<String>? name;
  final pulumi.Input<String> organizationId;

  /// The role ID to use for this role. A role ID may contain alphanumeric characters, underscores (`_`), and periods (`.`). It must contain a minimum of 3 characters and a maximum of 64 characters.
  final pulumi.Input<String>? roleId;

  /// The current launch stage of the role. If the `ALPHA` launch stage has been selected for a role, the `stage` field will not be included in the returned definition for the role.
  final pulumi.Input<OrganizationRoleStage>? stage;

  /// Optional. A human-readable title for the role. Typically this is limited to 100 UTF-8 bytes.
  final pulumi.Input<String>? title;

  /// Creates a new [OrganizationRoleArgs].
  /// [deleted] The current deleted state of the role. This field is read only. It will be ignored in calls to CreateRole and UpdateRole.
  /// [description] Optional. A human-readable description for the role.
  /// [etag] Used to perform a consistent read-modify-write.
  /// [includedPermissions] The names of the permissions this role grants when bound in an IAM policy.
  /// [name] The name of the role. When `Role` is used in `CreateRole`, the role name must not be set. When `Role` is used in output and other input such as `UpdateRole`, the role name is the complete path. For example, `roles/logging.viewer` for predefined roles, `organizations/{ORGANIZATION_ID}/roles/my-role` for organization-level custom roles, and `projects/{PROJECT_ID}/roles/my-role` for project-level custom roles.
  /// [organizationId] Required.
  /// [roleId] The role ID to use for this role. A role ID may contain alphanumeric characters, underscores (`_`), and periods (`.`). It must contain a minimum of 3 characters and a maximum of 64 characters.
  /// [stage] The current launch stage of the role. If the `ALPHA` launch stage has been selected for a role, the `stage` field will not be included in the returned definition for the role.
  /// [title] Optional. A human-readable title for the role. Typically this is limited to 100 UTF-8 bytes.
  OrganizationRoleArgs({
    this.deleted,
    this.description,
    this.etag,
    this.includedPermissions,
    this.name,
    required this.organizationId,
    this.roleId,
    this.stage,
    this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deleted': ?deleted,
      'description': ?description,
      'etag': ?etag,
      'includedPermissions': ?includedPermissions,
      'name': ?name,
      'organizationId': organizationId,
      'roleId': ?roleId,
      'stage':
          ?pulumi.Input.mapOptionalInputValue<OrganizationRoleStage, String>(
            stage,
            (value) => value.wireValue,
          ),
      'title': ?title,
    };
  }

  factory OrganizationRoleArgs.fromMap(Map<String, dynamic> map) {
    return OrganizationRoleArgs(
      deleted: (() {
        final guardedValue = map['deleted'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      etag: (() {
        final guardedValue = map['etag'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      includedPermissions: (() {
        final guardedValue = map['includedPermissions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      organizationId: pulumi.Input.fromValue(map['organizationId'] as String),
      roleId: (() {
        final guardedValue = map['roleId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      stage: (() {
        final guardedValue = map['stage'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          OrganizationRoleStage.fromValue(guardedValue as String),
        );
      })(),
      title: (() {
        final guardedValue = map['title'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
