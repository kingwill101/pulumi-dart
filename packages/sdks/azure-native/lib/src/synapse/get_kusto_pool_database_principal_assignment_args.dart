// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_synapse_get_kusto_pool_database_principal_assignment_args_doc}
/// Arguments for getKustoPoolDatabasePrincipalAssignment.
/// {@endtemplate}
/// {@macro pulumi_synapse_get_kusto_pool_database_principal_assignment_args_doc}
class GetKustoPoolDatabasePrincipalAssignmentArgs {
  /// The name of the database in the Kusto pool.
  final pulumi.Input<String> databaseName;
  /// The name of the Kusto pool.
  final pulumi.Input<String> kustoPoolName;
  /// The name of the Kusto principalAssignment.
  final pulumi.Input<String> principalAssignmentName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [GetKustoPoolDatabasePrincipalAssignmentArgs].
  /// [databaseName] The name of the database in the Kusto pool.
  /// [kustoPoolName] The name of the Kusto pool.
  /// [principalAssignmentName] The name of the Kusto principalAssignment.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [workspaceName] The name of the workspace.
  GetKustoPoolDatabasePrincipalAssignmentArgs({
    required pulumi.Output<String> databaseName,
    required pulumi.Output<String> kustoPoolName,
    required pulumi.Output<String> principalAssignmentName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> workspaceName,
  }) :
      databaseName = pulumi.Input.asInput<String>(databaseName),
      kustoPoolName = pulumi.Input.asInput<String>(kustoPoolName),
      principalAssignmentName = pulumi.Input.asInput<String>(principalAssignmentName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseName': databaseName,
      'kustoPoolName': kustoPoolName,
      'principalAssignmentName': principalAssignmentName,
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory GetKustoPoolDatabasePrincipalAssignmentArgs.fromMap(Map<String, dynamic> map) {
    return GetKustoPoolDatabasePrincipalAssignmentArgs(
      databaseName: pulumi.Output.create<String>(map['databaseName'] as String),
      kustoPoolName: pulumi.Output.create<String>(map['kustoPoolName'] as String),
      principalAssignmentName: pulumi.Output.create<String>(map['principalAssignmentName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      workspaceName: pulumi.Output.create<String>(map['workspaceName'] as String),
    );
  }
}

