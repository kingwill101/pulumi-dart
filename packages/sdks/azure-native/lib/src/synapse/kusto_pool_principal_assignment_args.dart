// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_synapse_kusto_pool_principal_assignment_args_doc}
/// The set of arguments for KustoPoolPrincipalAssignment.
/// {@endtemplate}
/// {@macro pulumi_synapse_kusto_pool_principal_assignment_args_doc}
class KustoPoolPrincipalAssignmentArgs {
  /// The name of the Kusto pool.
  final pulumi.Input<String> kustoPoolName;
  /// The name of the Kusto principalAssignment.
  final pulumi.Input<String>? principalAssignmentName;
  /// The principal ID assigned to the cluster principal. It can be a user email, application ID, or security group name.
  final pulumi.Input<String> principalId;
  /// Principal type.
  final pulumi.Input<String> principalType;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Cluster principal role.
  final pulumi.Input<String> role;
  /// The tenant id of the principal
  final pulumi.Input<String>? tenantId;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [KustoPoolPrincipalAssignmentArgs].
  /// [kustoPoolName] The name of the Kusto pool.
  /// [principalAssignmentName] The name of the Kusto principalAssignment.
  /// [principalId] The principal ID assigned to the cluster principal. It can be a user email, application ID, or security group name.
  /// [principalType] Principal type.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [role] Cluster principal role.
  /// [tenantId] The tenant id of the principal
  /// [workspaceName] The name of the workspace.
  KustoPoolPrincipalAssignmentArgs({
    required this.kustoPoolName,
    this.principalAssignmentName,
    required this.principalId,
    required this.principalType,
    required this.resourceGroupName,
    required this.role,
    this.tenantId,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kustoPoolName': kustoPoolName,
      'principalAssignmentName': ?principalAssignmentName,
      'principalId': principalId,
      'principalType': principalType,
      'resourceGroupName': resourceGroupName,
      'role': role,
      'tenantId': ?tenantId,
      'workspaceName': workspaceName,
    };
  }

  factory KustoPoolPrincipalAssignmentArgs.fromMap(Map<String, dynamic> map) {
    return KustoPoolPrincipalAssignmentArgs(
      kustoPoolName: (map['kustoPoolName'] as String).input(),
      principalAssignmentName: map['principalAssignmentName'] == null ? null : (map['principalAssignmentName']! as String).input(),
      principalId: (map['principalId'] as String).input(),
      principalType: (map['principalType'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      role: (map['role'] as String).input(),
      tenantId: map['tenantId'] == null ? null : (map['tenantId']! as String).input(),
      workspaceName: (map['workspaceName'] as String).input(),
    );
  }
}

