// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_synapse_get_kusto_pool_principal_assignment_args_doc}
/// Arguments for getKustoPoolPrincipalAssignment.
/// {@endtemplate}
/// {@macro pulumi_synapse_get_kusto_pool_principal_assignment_args_doc}
class GetKustoPoolPrincipalAssignmentArgs {
  /// The name of the Kusto pool.
  final pulumi.Input<String> kustoPoolName;
  /// The name of the Kusto principalAssignment.
  final pulumi.Input<String> principalAssignmentName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [GetKustoPoolPrincipalAssignmentArgs].
  /// [kustoPoolName] The name of the Kusto pool.
  /// [principalAssignmentName] The name of the Kusto principalAssignment.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [workspaceName] The name of the workspace.
  GetKustoPoolPrincipalAssignmentArgs({
    required this.kustoPoolName,
    required this.principalAssignmentName,
    required this.resourceGroupName,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kustoPoolName': kustoPoolName,
      'principalAssignmentName': principalAssignmentName,
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory GetKustoPoolPrincipalAssignmentArgs.fromMap(Map<String, dynamic> map) {
    return GetKustoPoolPrincipalAssignmentArgs(
      kustoPoolName: (map['kustoPoolName'] as String).input(),
      principalAssignmentName: (map['principalAssignmentName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      workspaceName: (map['workspaceName'] as String).input(),
    );
  }
}

