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
    required pulumi.Output<String> databaseName,
    required pulumi.Output<String> kustoPoolName,
    pulumi.Output<String>? principalAssignmentName,
    required pulumi.Output<String> principalId,
    required pulumi.Output<String> principalType,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> role,
    pulumi.Output<String>? tenantId,
    required pulumi.Output<String> workspaceName,
  }) :
      databaseName = pulumi.Input.asInput<String>(databaseName),
      kustoPoolName = pulumi.Input.asInput<String>(kustoPoolName),
      principalAssignmentName = pulumi.Input.asOptionalInput<String>(principalAssignmentName),
      principalId = pulumi.Input.asInput<String>(principalId),
      principalType = pulumi.Input.asInput<String>(principalType),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      role = pulumi.Input.asInput<String>(role),
      tenantId = pulumi.Input.asOptionalInput<String>(tenantId),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

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
      databaseName: pulumi.Output.create<String>(map['databaseName'] as String),
      kustoPoolName: pulumi.Output.create<String>(map['kustoPoolName'] as String),
      principalAssignmentName: map['principalAssignmentName'] == null ? null : pulumi.Output.create<String>(map['principalAssignmentName'] as String),
      principalId: pulumi.Output.create<String>(map['principalId'] as String),
      principalType: pulumi.Output.create<String>(map['principalType'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      role: pulumi.Output.create<String>(map['role'] as String),
      tenantId: map['tenantId'] == null ? null : pulumi.Output.create<String>(map['tenantId'] as String),
      workspaceName: pulumi.Output.create<String>(map['workspaceName'] as String),
    );
  }
}

