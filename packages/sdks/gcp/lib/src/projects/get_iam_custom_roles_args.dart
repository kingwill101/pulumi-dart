// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_projects_get_iam_custom_roles_get_iam_custom_roles_args_doc}
/// Arguments for getIamCustomRoles.
/// {@endtemplate}
/// {@macro pulumi_projects_get_iam_custom_roles_get_iam_custom_roles_args_doc}
class GetIamCustomRolesArgs {
  /// The project were the custom role has been created in. Defaults to the provider project configuration.
  final pulumi.Input<String?>? project;
  /// Include Roles that have been deleted. Defaults to `false`.
  final pulumi.Input<bool?>? showDeleted;
  /// When `"FULL"` is specified, the `permissions` field is returned, which includes a list of all permissions in the role. The default value is `"BASIC"`, which does not return the `permissions`.
  final pulumi.Input<String?>? view;

  /// Creates a new [GetIamCustomRolesArgs].
  /// [project] The project were the custom role has been created in. Defaults to the provider project configuration.
  /// [showDeleted] Include Roles that have been deleted. Defaults to `false`.
  /// [view] When `"FULL"` is specified, the `permissions` field is returned, which includes a list of all permissions in the role. The default value is `"BASIC"`, which does not return the `permissions`.
  const GetIamCustomRolesArgs({
    this.project,
    this.showDeleted,
    this.view,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'showDeleted': ?showDeleted,
      'view': ?view,
    };
  }

  factory GetIamCustomRolesArgs.fromMap(Map<String, dynamic> map) {
    return GetIamCustomRolesArgs(
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      showDeleted: (() { final guardedValue = map['showDeleted']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      view: (() { final guardedValue = map['view']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
