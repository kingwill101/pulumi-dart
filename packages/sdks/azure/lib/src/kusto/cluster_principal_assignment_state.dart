// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ClusterPrincipalAssignment resources.
class ClusterPrincipalAssignmentState {
  /// The name of the cluster in which to create the resource. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? clusterName;
  /// The name of the Kusto cluster principal assignment. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? name;
  /// The object id of the principal. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? principalId;
  /// The name of the principal.
  final pulumi.Input<String?>? principalName;
  /// The type of the principal. Valid values include `App`, `Group`, `User`. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? principalType;
  /// The name of the resource group in which to create the resource. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? resourceGroupName;
  /// The cluster role assigned to the principal. Valid values include `AllDatabasesAdmin`, `AllDatabasesViewer`, and `AllDatabasesMonitor`. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? role;
  /// The tenant id in which the principal resides. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? tenantId;
  /// The name of the tenant.
  final pulumi.Input<String?>? tenantName;

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
  const ClusterPrincipalAssignmentState({
    this.clusterName,
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
      clusterName: (() { final guardedValue = map['clusterName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      principalId: (() { final guardedValue = map['principalId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      principalName: (() { final guardedValue = map['principalName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      principalType: (() { final guardedValue = map['principalType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      role: (() { final guardedValue = map['role']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tenantName: (() { final guardedValue = map['tenantName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
