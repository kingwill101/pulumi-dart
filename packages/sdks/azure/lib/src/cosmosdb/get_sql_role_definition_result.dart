// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_sql_role_definition_permission.dart';

/// Result data returned by getSqlRoleDefinition.
class GetSqlRoleDefinitionResult {
  final String accountName;
  /// A list of fully qualified scopes at or below which Role Assignments may be created using this Cosmos DB SQL Role Definition.
  final List<String> assignableScopes;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The role name of the Cosmos DB SQL Role Definition.
  final String name;
  /// A `permissions` block as defined below.
  final List<GetSqlRoleDefinitionPermission> permissions;
  final String resourceGroupName;
  final String roleDefinitionId;
  /// The type of the Cosmos DB SQL Role Definition.
  final String type;

  /// Creates a new [GetSqlRoleDefinitionResult].
  /// [accountName] Required.
  /// [assignableScopes] A list of fully qualified scopes at or below which Role Assignments may be created using this Cosmos DB SQL Role Definition.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] The role name of the Cosmos DB SQL Role Definition.
  /// [permissions] A `permissions` block as defined below.
  /// [resourceGroupName] Required.
  /// [roleDefinitionId] Required.
  /// [type] The type of the Cosmos DB SQL Role Definition.
  const GetSqlRoleDefinitionResult({
    required this.accountName,
    required this.assignableScopes,
    required this.id,
    required this.name,
    required this.permissions,
    required this.resourceGroupName,
    required this.roleDefinitionId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'assignableScopes': assignableScopes,
      'id': id,
      'name': name,
      'permissions': pulumi.Input.encodeList<GetSqlRoleDefinitionPermission, Map<String, dynamic>>(permissions, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'roleDefinitionId': roleDefinitionId,
      'type': type,
    };
  }

  factory GetSqlRoleDefinitionResult.fromMap(Map<String, dynamic> map) {
    return GetSqlRoleDefinitionResult(
      accountName: map['accountName'] as String,
      assignableScopes: (map['assignableScopes'] as List).cast<String>(),
      id: map['id'] as String,
      name: map['name'] as String,
      permissions: pulumi.Input.decodeList<GetSqlRoleDefinitionPermission>(map['permissions']!, (value) => GetSqlRoleDefinitionPermission.fromMap((value as Map).cast<String, dynamic>())),
      resourceGroupName: map['resourceGroupName'] as String,
      roleDefinitionId: map['roleDefinitionId'] as String,
      type: map['type'] as String,
    );
  }
}
