// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_synapse_database_principal_assignment_args_doc}
/// The set of arguments for DatabasePrincipalAssignment.
/// {@endtemplate}
/// {@macro pulumi_synapse_database_principal_assignment_args_doc}
class DatabasePrincipalAssignmentArgs {
  /// The name of the database in the Kusto pool.
  final pulumi.Input<String> databaseName;
  /// The name of the Kusto pool.
  final pulumi.Input<String> kustoPoolName;
  /// The name of the Kusto principalAssignment.
  final pulumi.Input<String>? principalAssignmentName;
  /// The principal ID assigned to the database principal. It can be a user email, application ID, or security group name.
  final pulumi.Input<String> principalId;
  /// Principal type.
  final pulumi.Input<String> principalType;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Database principal role.
  final pulumi.Input<String> role;
  /// The tenant id of the principal
  final pulumi.Input<String>? tenantId;
  /// The name of the workspace
  final pulumi.Input<String> workspaceName;

  /// Creates a new [DatabasePrincipalAssignmentArgs].
  /// [databaseName] The name of the database in the Kusto pool.
  /// [kustoPoolName] The name of the Kusto pool.
  /// [principalAssignmentName] The name of the Kusto principalAssignment.
  /// [principalId] The principal ID assigned to the database principal. It can be a user email, application ID, or security group name.
  /// [principalType] Principal type.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [role] Database principal role.
  /// [tenantId] The tenant id of the principal
  /// [workspaceName] The name of the workspace
  DatabasePrincipalAssignmentArgs({
    required this.databaseName,
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
      'databaseName': databaseName,
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

  factory DatabasePrincipalAssignmentArgs.fromMap(Map<String, dynamic> map) {
    return DatabasePrincipalAssignmentArgs(
      databaseName: (map['databaseName'] as String).input(),
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

