// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ClusterPrincipalAssignment resources.
class ClusterPrincipalAssignmentState {
  /// The name of the cluster in which to create the resource. Changing this forces a new resource to be created.
  final pulumi.Input<String>? clusterName;
  /// The name of the Kusto cluster principal assignment. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The object id of the principal. Changing this forces a new resource to be created.
  final pulumi.Input<String>? principalId;
  /// The name of the principal.
  final pulumi.Input<String>? principalName;
  /// The type of the principal. Valid values include `App`, `Group`, `User`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? principalType;
  /// The name of the resource group in which to create the resource. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The cluster role assigned to the principal. Valid values include `AllDatabasesAdmin`, `AllDatabasesViewer`, and `AllDatabasesMonitor`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? role;
  /// The tenant id in which the principal resides. Changing this forces a new resource to be created.
  final pulumi.Input<String>? tenantId;
  /// The name of the tenant.
  final pulumi.Input<String>? tenantName;

  /// Creates a new [ClusterPrincipalAssignmentState].
  /// [clusterName] The name of the cluster in which to create the resource. Changing this forces a new resource to be created.
  /// [name] The name of the Kusto cluster principal assignment. Changing this forces a new resource to be created.
  /// [principalId] The object id of the principal. Changing this forces a new resource to be created.
  /// [principalName] The name of the principal.
  /// [principalType] The type of the principal. Valid values include `App`, `Group`, `User`. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which to create the resource. Changing this forces a new resource to be created.
  /// [role] The cluster role assigned to the principal. Valid values include `AllDatabasesAdmin`, `AllDatabasesViewer`, and `AllDatabasesMonitor`. Changing this forces a new resource to be created.
  /// [tenantId] The tenant id in which the principal resides. Changing this forces a new resource to be created.
  /// [tenantName] The name of the tenant.
  ClusterPrincipalAssignmentState({
    pulumi.Output<String>? clusterName,
    pulumi.Output<String>? name,
    pulumi.Output<String>? principalId,
    pulumi.Output<String>? principalName,
    pulumi.Output<String>? principalType,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<String>? role,
    pulumi.Output<String>? tenantId,
    pulumi.Output<String>? tenantName,
  }) :
      clusterName = pulumi.Input.asOptionalInput<String>(clusterName),
      name = pulumi.Input.asOptionalInput<String>(name),
      principalId = pulumi.Input.asOptionalInput<String>(principalId),
      principalName = pulumi.Input.asOptionalInput<String>(principalName),
      principalType = pulumi.Input.asOptionalInput<String>(principalType),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      role = pulumi.Input.asOptionalInput<String>(role),
      tenantId = pulumi.Input.asOptionalInput<String>(tenantId),
      tenantName = pulumi.Input.asOptionalInput<String>(tenantName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': ?clusterName,
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

  factory ClusterPrincipalAssignmentState.fromMap(Map<String, dynamic> map) {
    return ClusterPrincipalAssignmentState(
      clusterName: map['clusterName'] == null ? null : pulumi.Output.create<String>(map['clusterName'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      principalId: map['principalId'] == null ? null : pulumi.Output.create<String>(map['principalId'] as String),
      principalName: map['principalName'] == null ? null : pulumi.Output.create<String>(map['principalName'] as String),
      principalType: map['principalType'] == null ? null : pulumi.Output.create<String>(map['principalType'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      role: map['role'] == null ? null : pulumi.Output.create<String>(map['role'] as String),
      tenantId: map['tenantId'] == null ? null : pulumi.Output.create<String>(map['tenantId'] as String),
      tenantName: map['tenantName'] == null ? null : pulumi.Output.create<String>(map['tenantName'] as String),
    );
  }
}

