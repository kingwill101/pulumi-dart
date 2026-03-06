// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_synapse_get_database_principal_assignment_args_doc}
/// Arguments for getDatabasePrincipalAssignment.
/// {@endtemplate}
/// {@macro pulumi_synapse_get_database_principal_assignment_args_doc}
class GetDatabasePrincipalAssignmentArgs {
  /// The name of the database in the Kusto pool.
  final pulumi.Input<String> databaseName;
  /// The name of the Kusto pool.
  final pulumi.Input<String> kustoPoolName;
  /// The name of the Kusto principalAssignment.
  final pulumi.Input<String> principalAssignmentName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the workspace
  final pulumi.Input<String> workspaceName;

  /// Creates a new [GetDatabasePrincipalAssignmentArgs].
  /// [databaseName] The name of the database in the Kusto pool.
  /// [kustoPoolName] The name of the Kusto pool.
  /// [principalAssignmentName] The name of the Kusto principalAssignment.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [workspaceName] The name of the workspace
  const GetDatabasePrincipalAssignmentArgs({
    required this.databaseName,
    required this.kustoPoolName,
    required this.principalAssignmentName,
    required this.resourceGroupName,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseName': databaseName,
      'kustoPoolName': kustoPoolName,
      'principalAssignmentName': principalAssignmentName,
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory GetDatabasePrincipalAssignmentArgs.fromMap(Map<String, dynamic> map) {
    return GetDatabasePrincipalAssignmentArgs(
      databaseName: pulumi.Input.fromValue(map['databaseName'] as String),
      kustoPoolName: pulumi.Input.fromValue(map['kustoPoolName'] as String),
      principalAssignmentName: pulumi.Input.fromValue(map['principalAssignmentName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}

