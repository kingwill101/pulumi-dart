// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_iam_custom_roles_role.dart';

/// Result data returned by getIamCustomRoles.
class GetIamCustomRolesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String? project;
  /// A list of all retrieved custom roles roles. Structure is defined below.
  final List<GetIamCustomRolesRole> roles;
  final bool? showDeleted;
  final String? view;

  /// Creates a new [GetIamCustomRolesResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [project] Optional.
  /// [roles] A list of all retrieved custom roles roles. Structure is defined below.
  /// [showDeleted] Optional.
  /// [view] Optional.
  GetIamCustomRolesResult({
    required this.id,
    this.project,
    required this.roles,
    this.showDeleted,
    this.view,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'project': ?project,
      'roles': pulumi.Input.encodeList<GetIamCustomRolesRole, Map<String, dynamic>>(roles, (value) => value.toMap()),
      'showDeleted': ?showDeleted,
      'view': ?view,
    };
  }

  factory GetIamCustomRolesResult.fromMap(Map<String, dynamic> map) {
    return GetIamCustomRolesResult(
      id: map['id'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      roles: pulumi.Input.decodeList<GetIamCustomRolesRole>(map['roles'], (value) => GetIamCustomRolesRole.fromMap((value as Map).cast<String, dynamic>())),
      showDeleted: map['showDeleted'] == null ? null : map['showDeleted'] as bool,
      view: map['view'] == null ? null : map['view'] as String,
    );
  }
}

