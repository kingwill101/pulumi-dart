// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DatabasePrincipalAssignment resources.
class DatabasePrincipalAssignmentState {
  /// The name of the cluster in which to create the resource. Changing this forces a new resource to be created.
  final pulumi.Input<String>? clusterName;
  /// The name of the database in which to create the resource. Changing this forces a new resource to be created.
  final pulumi.Input<String>? databaseName;
  /// The name of the kusto principal assignment. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The object id of the principal. Changing this forces a new resource to be created.
  final pulumi.Input<String>? principalId;
  /// The name of the principal.
  final pulumi.Input<String>? principalName;
  /// The type of the principal. Valid values include `App`, `Group`, `User`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? principalType;
  /// The name of the resource group in which to create the resource. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The database role assigned to the principal. Valid values include `Admin`, `Ingestor`, `Monitor`, `UnrestrictedViewer`, `User` and `Viewer`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? role;
  /// The tenant id in which the principal resides. Changing this forces a new resource to be created.
  final pulumi.Input<String>? tenantId;
  /// The name of the tenant.
  final pulumi.Input<String>? tenantName;

  /// Creates a new [DatabasePrincipalAssignmentState].
  /// [clusterName] The name of the cluster in which to create the resource. Changing this forces a new resource to be created.
  /// [databaseName] The name of the database in which to create the resource. Changing this forces a new resource to be created.
  /// [name] The name of the kusto principal assignment. Changing this forces a new resource to be created.
  /// [principalId] The object id of the principal. Changing this forces a new resource to be created.
  /// [principalName] The name of the principal.
  /// [principalType] The type of the principal. Valid values include `App`, `Group`, `User`. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which to create the resource. Changing this forces a new resource to be created.
  /// [role] The database role assigned to the principal. Valid values include `Admin`, `Ingestor`, `Monitor`, `UnrestrictedViewer`, `User` and `Viewer`. Changing this forces a new resource to be created.
  /// [tenantId] The tenant id in which the principal resides. Changing this forces a new resource to be created.
  /// [tenantName] The name of the tenant.
  DatabasePrincipalAssignmentState({
    this.clusterName,
    this.databaseName,
    this.name,
    this.principalId,
    this.principalName,
    this.principalType,
    this.resourceGroupName,
    this.role,
    this.tenantId,
    this.tenantName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': ?clusterName,
      'databaseName': ?databaseName,
      'name': ?name,
      'principalId': ?principalId,
      'principalName': ?principalName,
      'principalType': ?principalType,
      'resourceGroupName': ?resourceGroupName,
      'role': ?role,
      'tenantId': ?tenantId,
      'tenantName': ?tenantName,
    };
  }

  factory DatabasePrincipalAssignmentState.fromMap(Map<String, dynamic> map) {
    return DatabasePrincipalAssignmentState(
      clusterName: map['clusterName'] == null ? null : (map['clusterName']! as String).input(),
      databaseName: map['databaseName'] == null ? null : (map['databaseName']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      principalId: map['principalId'] == null ? null : (map['principalId']! as String).input(),
      principalName: map['principalName'] == null ? null : (map['principalName']! as String).input(),
      principalType: map['principalType'] == null ? null : (map['principalType']! as String).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName']! as String).input(),
      role: map['role'] == null ? null : (map['role']! as String).input(),
      tenantId: map['tenantId'] == null ? null : (map['tenantId']! as String).input(),
      tenantName: map['tenantName'] == null ? null : (map['tenantName']! as String).input(),
    );
  }
}

