// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_kusto_database_principal_assignment_database_principal_assignment_args_doc}
/// The set of arguments for DatabasePrincipalAssignment.
/// {@endtemplate}
/// {@macro pulumi_kusto_database_principal_assignment_database_principal_assignment_args_doc}
class DatabasePrincipalAssignmentArgs {
  /// The name of the cluster in which to create the resource. Changing this forces a new resource to be created.
  final pulumi.Input<String> clusterName;
  /// The name of the database in which to create the resource. Changing this forces a new resource to be created.
  final pulumi.Input<String> databaseName;
  /// The name of the kusto principal assignment. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The object id of the principal. Changing this forces a new resource to be created.
  final pulumi.Input<String> principalId;
  /// The type of the principal. Valid values include `App`, `Group`, `User`. Changing this forces a new resource to be created.
  final pulumi.Input<String> principalType;
  /// The name of the resource group in which to create the resource. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// The database role assigned to the principal. Valid values include `Admin`, `Ingestor`, `Monitor`, `UnrestrictedViewer`, `User` and `Viewer`. Changing this forces a new resource to be created.
  final pulumi.Input<String> role;
  /// The tenant id in which the principal resides. Changing this forces a new resource to be created.
  final pulumi.Input<String> tenantId;

  /// Creates a new [DatabasePrincipalAssignmentArgs].
  /// [clusterName] The name of the cluster in which to create the resource. Changing this forces a new resource to be created.
  /// [databaseName] The name of the database in which to create the resource. Changing this forces a new resource to be created.
  /// [name] The name of the kusto principal assignment. Changing this forces a new resource to be created.
  /// [principalId] The object id of the principal. Changing this forces a new resource to be created.
  /// [principalType] The type of the principal. Valid values include `App`, `Group`, `User`. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which to create the resource. Changing this forces a new resource to be created.
  /// [role] The database role assigned to the principal. Valid values include `Admin`, `Ingestor`, `Monitor`, `UnrestrictedViewer`, `User` and `Viewer`. Changing this forces a new resource to be created.
  /// [tenantId] The tenant id in which the principal resides. Changing this forces a new resource to be created.
  DatabasePrincipalAssignmentArgs({
    required this.clusterName,
    required this.databaseName,
    this.name,
    required this.principalId,
    required this.principalType,
    required this.resourceGroupName,
    required this.role,
    required this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': clusterName,
      'databaseName': databaseName,
      'name': ?name,
      'principalId': principalId,
      'principalType': principalType,
      'resourceGroupName': resourceGroupName,
      'role': role,
      'tenantId': tenantId,
    };
  }

  factory DatabasePrincipalAssignmentArgs.fromMap(Map<String, dynamic> map) {
    return DatabasePrincipalAssignmentArgs(
      clusterName: (map['clusterName'] as String).input(),
      databaseName: (map['databaseName'] as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      principalId: (map['principalId'] as String).input(),
      principalType: (map['principalType'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      role: (map['role'] as String).input(),
      tenantId: (map['tenantId'] as String).input(),
    );
  }
}

