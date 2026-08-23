// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_directory_roles_role.dart';

/// Result data returned by getDirectoryRoles.
class GetDirectoryRolesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The object IDs of the roles.
  final List<String> objectIds;
  /// A list of users. Each `role` object provides the attributes documented below.
  final List<GetDirectoryRolesRole> roles;
  /// The template IDs of the roles.
  final List<String> templateIds;

  /// Creates a new [GetDirectoryRolesResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [objectIds] The object IDs of the roles.
  /// [roles] A list of users. Each `role` object provides the attributes documented below.
  /// [templateIds] The template IDs of the roles.
  const GetDirectoryRolesResult({
    required this.id,
    required this.objectIds,
    required this.roles,
    required this.templateIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'objectIds': objectIds,
      'roles': pulumi.Input.encodeList<GetDirectoryRolesRole, Map<String, dynamic>>(roles, (value) => value.toMap()),
      'templateIds': templateIds,
    };
  }

  factory GetDirectoryRolesResult.fromMap(Map<String, dynamic> map) {
    return GetDirectoryRolesResult(
      id: map['id'] as String,
      objectIds: (map['objectIds'] as List).cast<String>(),
      roles: pulumi.Input.decodeList<GetDirectoryRolesRole>(map['roles']!, (value) => GetDirectoryRolesRole.fromMap((value as Map).cast<String, dynamic>())),
      templateIds: (map['templateIds'] as List).cast<String>(),
    );
  }
}
