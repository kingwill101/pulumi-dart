// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_directory_roles_role.dart';

/// Result data returned by getDirectoryRoles.
class GetDirectoryRolesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The object IDs of the roles.
  final List<String>? objectIds;
  /// A list of users. Each `role` object provides the attributes documented below.
  final List<GetDirectoryRolesRole>? roles;
  /// The template IDs of the roles.
  final List<String>? templateIds;

  /// Creates a new [GetDirectoryRolesResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [objectIds] The object IDs of the roles.
  /// [roles] A list of users. Each `role` object provides the attributes documented below.
  /// [templateIds] The template IDs of the roles.
  const GetDirectoryRolesResult({
    this.id,
    this.objectIds,
    this.roles,
    this.templateIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'objectIds': ?objectIds,
      'roles': ?(() { final guardedValue = roles; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDirectoryRolesRole, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'templateIds': ?templateIds,
    };
  }

  factory GetDirectoryRolesResult.fromMap(Map<String, dynamic> map) {
    return GetDirectoryRolesResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      objectIds: (() { final guardedValue = map['objectIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      roles: (() { final guardedValue = map['roles']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDirectoryRolesRole>(guardedValue, (value) => GetDirectoryRolesRole.fromMap((value as Map).cast<String, dynamic>())); })(),
      templateIds: (() { final guardedValue = map['templateIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}
