// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_iam_custom_roles_role.dart';

/// Result data returned by getIamCustomRoles.
class GetIamCustomRolesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? orgId;
  /// A list of all retrieved custom roles roles. Structure is defined below.
  final List<GetIamCustomRolesRole>? roles;
  final bool? showDeleted;
  final String? view;

  /// Creates a new [GetIamCustomRolesResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [orgId] Optional.
  /// [roles] A list of all retrieved custom roles roles. Structure is defined below.
  /// [showDeleted] Optional.
  /// [view] Optional.
  const GetIamCustomRolesResult({
    this.id,
    this.orgId,
    this.roles,
    this.showDeleted,
    this.view,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'orgId': ?orgId,
      'roles': ?(() { final guardedValue = roles; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetIamCustomRolesRole, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'showDeleted': ?showDeleted,
      'view': ?view,
    };
  }

  factory GetIamCustomRolesResult.fromMap(Map<String, dynamic> map) {
    return GetIamCustomRolesResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      orgId: (() { final guardedValue = map['orgId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      roles: (() { final guardedValue = map['roles']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetIamCustomRolesRole>(guardedValue, (value) => GetIamCustomRolesRole.fromMap((value as Map).cast<String, dynamic>())); })(),
      showDeleted: (() { final guardedValue = map['showDeleted']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      view: (() { final guardedValue = map['view']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
