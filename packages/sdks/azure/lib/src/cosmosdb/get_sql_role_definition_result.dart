// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_sql_role_definition_permission.dart';

/// Result data returned by getSqlRoleDefinition.
class GetSqlRoleDefinitionResult {
  final String? accountName;
  /// A list of fully qualified scopes at or below which Role Assignments may be created using this Cosmos DB SQL Role Definition.
  final List<String>? assignableScopes;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The role name of the Cosmos DB SQL Role Definition.
  final String? name;
  /// A `permissions` block as defined below.
  final List<GetSqlRoleDefinitionPermission>? permissions;
  final String? resourceGroupName;
  final String? roleDefinitionId;
  /// The type of the Cosmos DB SQL Role Definition.
  final String? type;

  /// Creates a new [GetSqlRoleDefinitionResult].
  /// [accountName] Optional.
  /// [assignableScopes] A list of fully qualified scopes at or below which Role Assignments may be created using this Cosmos DB SQL Role Definition.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] The role name of the Cosmos DB SQL Role Definition.
  /// [permissions] A `permissions` block as defined below.
  /// [resourceGroupName] Optional.
  /// [roleDefinitionId] Optional.
  /// [type] The type of the Cosmos DB SQL Role Definition.
  const GetSqlRoleDefinitionResult({
    this.accountName,
    this.assignableScopes,
    this.id,
    this.name,
    this.permissions,
    this.resourceGroupName,
    this.roleDefinitionId,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': ?accountName,
      'assignableScopes': ?assignableScopes,
      'id': ?id,
      'name': ?name,
      'permissions': ?(() { final guardedValue = permissions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetSqlRoleDefinitionPermission, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'resourceGroupName': ?resourceGroupName,
      'roleDefinitionId': ?roleDefinitionId,
      'type': ?type,
    };
  }

  factory GetSqlRoleDefinitionResult.fromMap(Map<String, dynamic> map) {
    return GetSqlRoleDefinitionResult(
      accountName: (() { final guardedValue = map['accountName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      assignableScopes: (() { final guardedValue = map['assignableScopes']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      permissions: (() { final guardedValue = map['permissions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetSqlRoleDefinitionPermission>(guardedValue, (value) => GetSqlRoleDefinitionPermission.fromMap((value as Map).cast<String, dynamic>())); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      roleDefinitionId: (() { final guardedValue = map['roleDefinitionId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
