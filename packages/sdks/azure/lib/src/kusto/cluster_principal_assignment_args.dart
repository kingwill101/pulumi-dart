// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_kusto_cluster_principal_assignment_cluster_principal_assignment_args_doc}
/// The set of arguments for ClusterPrincipalAssignment.
/// {@endtemplate}
/// {@macro pulumi_kusto_cluster_principal_assignment_cluster_principal_assignment_args_doc}
class ClusterPrincipalAssignmentArgs {
  /// The name of the cluster in which to create the resource. Changing this forces a new resource to be created.
  final pulumi.Input<String> clusterName;
  /// The name of the Kusto cluster principal assignment. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The object id of the principal. Changing this forces a new resource to be created.
  final pulumi.Input<String> principalId;
  /// The type of the principal. Valid values include `App`, `Group`, `User`. Changing this forces a new resource to be created.
  final pulumi.Input<String> principalType;
  /// The name of the resource group in which to create the resource. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// The cluster role assigned to the principal. Valid values include `AllDatabasesAdmin`, `AllDatabasesViewer`, and `AllDatabasesMonitor`. Changing this forces a new resource to be created.
  final pulumi.Input<String> role;
  /// The tenant id in which the principal resides. Changing this forces a new resource to be created.
  final pulumi.Input<String> tenantId;

  /// Creates a new [ClusterPrincipalAssignmentArgs].
  /// [clusterName] The name of the cluster in which to create the resource. Changing this forces a new resource to be created.
  /// [name] The name of the Kusto cluster principal assignment. Changing this forces a new resource to be created.
  /// [principalId] The object id of the principal. Changing this forces a new resource to be created.
  /// [principalType] The type of the principal. Valid values include `App`, `Group`, `User`. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which to create the resource. Changing this forces a new resource to be created.
  /// [role] The cluster role assigned to the principal. Valid values include `AllDatabasesAdmin`, `AllDatabasesViewer`, and `AllDatabasesMonitor`. Changing this forces a new resource to be created.
  /// [tenantId] The tenant id in which the principal resides. Changing this forces a new resource to be created.
  ClusterPrincipalAssignmentArgs({
    required pulumi.Output<String> clusterName,
    pulumi.Output<String>? name,
    required pulumi.Output<String> principalId,
    required pulumi.Output<String> principalType,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> role,
    required pulumi.Output<String> tenantId,
  }) :
      clusterName = pulumi.Input.asInput<String>(clusterName),
      name = pulumi.Input.asOptionalInput<String>(name),
      principalId = pulumi.Input.asInput<String>(principalId),
      principalType = pulumi.Input.asInput<String>(principalType),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      role = pulumi.Input.asInput<String>(role),
      tenantId = pulumi.Input.asInput<String>(tenantId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': clusterName,
      'name': ?name,
      'principalId': principalId,
      'principalType': principalType,
      'resourceGroupName': resourceGroupName,
      'role': role,
      'tenantId': tenantId,
    };
  }

  factory ClusterPrincipalAssignmentArgs.fromMap(Map<String, dynamic> map) {
    return ClusterPrincipalAssignmentArgs(
      clusterName: pulumi.Output.create<String>(map['clusterName'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      principalId: pulumi.Output.create<String>(map['principalId'] as String),
      principalType: pulumi.Output.create<String>(map['principalType'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      role: pulumi.Output.create<String>(map['role'] as String),
      tenantId: pulumi.Output.create<String>(map['tenantId'] as String),
    );
  }
}

