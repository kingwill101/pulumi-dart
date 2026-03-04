// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cosmosdb_sql_role_assignment_sql_role_assignment_args_doc}
/// The set of arguments for SqlRoleAssignment.
/// {@endtemplate}
/// {@macro pulumi_cosmosdb_sql_role_assignment_sql_role_assignment_args_doc}
class SqlRoleAssignmentArgs {
  /// The name of the Cosmos DB Account. Changing this forces a new resource to be created.
  final pulumi.Input<String> accountName;

  /// The GUID as the name of the Cosmos DB SQL Role Assignment - one will be generated if not specified. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;

  /// The ID of the Principal (Client) in Azure Active Directory. Changing this forces a new resource to be created.
  final pulumi.Input<String> principalId;

  /// The name of the Resource Group in which the Cosmos DB SQL Role Assignment is created. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;

  /// The resource ID of the Cosmos DB SQL Role Definition.
  final pulumi.Input<String> roleDefinitionId;

  /// The data plane resource path for which access is being granted through this Cosmos DB SQL Role Assignment. Changing this forces a new resource to be created.
  final pulumi.Input<String> scope;

  /// Creates a new [SqlRoleAssignmentArgs].
  /// [accountName] The name of the Cosmos DB Account. Changing this forces a new resource to be created.
  /// [name] The GUID as the name of the Cosmos DB SQL Role Assignment - one will be generated if not specified. Changing this forces a new resource to be created.
  /// [principalId] The ID of the Principal (Client) in Azure Active Directory. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the Resource Group in which the Cosmos DB SQL Role Assignment is created. Changing this forces a new resource to be created.
  /// [roleDefinitionId] The resource ID of the Cosmos DB SQL Role Definition.
  /// [scope] The data plane resource path for which access is being granted through this Cosmos DB SQL Role Assignment. Changing this forces a new resource to be created.
  SqlRoleAssignmentArgs({
    required this.accountName,
    this.name,
    required this.principalId,
    required this.resourceGroupName,
    required this.roleDefinitionId,
    required this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'name': ?name,
      'principalId': principalId,
      'resourceGroupName': resourceGroupName,
      'roleDefinitionId': roleDefinitionId,
      'scope': scope,
    };
  }

  factory SqlRoleAssignmentArgs.fromMap(Map<String, dynamic> map) {
    return SqlRoleAssignmentArgs(
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      principalId: pulumi.Input.fromValue(map['principalId'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      roleDefinitionId: pulumi.Input.fromValue(
        map['roleDefinitionId'] as String,
      ),
      scope: pulumi.Input.fromValue(map['scope'] as String),
    );
  }
}
