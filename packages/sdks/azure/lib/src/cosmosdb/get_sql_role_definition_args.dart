// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cosmosdb_get_sql_role_definition_get_sql_role_definition_args_doc}
/// Arguments for getSqlRoleDefinition.
/// {@endtemplate}
/// {@macro pulumi_cosmosdb_get_sql_role_definition_get_sql_role_definition_args_doc}
class GetSqlRoleDefinitionArgs {
  /// The name of the Cosmos DB Account.
  final pulumi.Input<String> accountName;
  /// The name of the Resource Group in which the Cosmos DB SQL Role Definition is created.
  final pulumi.Input<String> resourceGroupName;
  /// The GUID as the name of the Cosmos DB SQL Role Definition.
  final pulumi.Input<String> roleDefinitionId;

  /// Creates a new [GetSqlRoleDefinitionArgs].
  /// [accountName] The name of the Cosmos DB Account.
  /// [resourceGroupName] The name of the Resource Group in which the Cosmos DB SQL Role Definition is created.
  /// [roleDefinitionId] The GUID as the name of the Cosmos DB SQL Role Definition.
  GetSqlRoleDefinitionArgs({
    required this.accountName,
    required this.resourceGroupName,
    required this.roleDefinitionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'resourceGroupName': resourceGroupName,
      'roleDefinitionId': roleDefinitionId,
    };
  }

  factory GetSqlRoleDefinitionArgs.fromMap(Map<String, dynamic> map) {
    return GetSqlRoleDefinitionArgs(
      accountName: (map['accountName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      roleDefinitionId: (map['roleDefinitionId'] as String).input(),
    );
  }
}

