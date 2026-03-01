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
    required pulumi.Output<String> accountName,
    pulumi.Output<String>? name,
    required pulumi.Output<String> principalId,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> roleDefinitionId,
    required pulumi.Output<String> scope,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      name = pulumi.Input.asOptionalInput<String>(name),
      principalId = pulumi.Input.asInput<String>(principalId),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      roleDefinitionId = pulumi.Input.asInput<String>(roleDefinitionId),
      scope = pulumi.Input.asInput<String>(scope);

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
      accountName: pulumi.Output.create<String>(map['accountName'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      principalId: pulumi.Output.create<String>(map['principalId'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      roleDefinitionId: pulumi.Output.create<String>(map['roleDefinitionId'] as String),
      scope: pulumi.Output.create<String>(map['scope'] as String),
    );
  }
}

