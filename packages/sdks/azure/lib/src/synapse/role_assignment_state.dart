// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering RoleAssignment resources.
class RoleAssignmentState {
  /// The ID of the Principal (User, Group or Service Principal) to assign the Synapse Role Definition to. Changing this forces a new resource to be created.
  final pulumi.Input<String>? principalId;
  /// The Type of the Principal. One of `User`, `Group` or `ServicePrincipal`. Changing this forces a new resource to be created.
  ///
  /// &gt; **NOTE:** While `principalType` is optional, it's still recommended to set this value, as some Synapse use-cases may not work correctly if this is not specified. Service Principals for example can't run SQL statements using `Entra ID` authentication if `principalType` is not set to `ServicePrincipal`.
  final pulumi.Input<String>? principalType;
  /// The Role Name of the Synapse Built-In Role. Possible values are `Apache Spark Administrator`, `Synapse Administrator`, `Synapse Artifact Publisher`, `Synapse Artifact User`, `Synapse Compute Operator`, `Synapse Contributor`, `Synapse Credential User`, `Synapse Linked Data Manager`, `Synapse Monitoring Operator`, `Synapse SQL Administrator` and `Synapse User`. Changing this forces a new resource to be created.
  ///
  /// &gt; **NOTE:** Currently, the Synapse built-in roles are `Apache Spark Administrator`, `Synapse Administrator`, `Synapse Artifact Publisher`, `Synapse Artifact User`, `Synapse Compute Operator`, `Synapse Contributor`, `Synapse Credential User`, `Synapse Linked Data Manager`, `Synapse Monitoring Operator`, `Synapse SQL Administrator` and `Synapse User`.
  ///
  /// &gt; **NOTE:** Old roles are still supported: `Workspace Admin`, `Apache Spark Admin`, `Sql Admin`. These values will be removed in the next Major Version 3.0.
  final pulumi.Input<String>? roleName;
  /// The Synapse Spark Pool which the Synapse Role Assignment applies to. Changing this forces a new resource to be created.
  ///
  /// &gt; **NOTE:** A Synapse firewall rule including local IP is needed to allow access. Only one of `synapseWorkspaceId`, `synapseSparkPoolId` must be set.
  final pulumi.Input<String>? synapseSparkPoolId;
  /// The Synapse Workspace which the Synapse Role Assignment applies to. Changing this forces a new resource to be created.
  final pulumi.Input<String>? synapseWorkspaceId;

  /// Creates a new [RoleAssignmentState].
  /// [principalId] The ID of the Principal (User, Group or Service Principal) to assign the Synapse Role Definition to. Changing this forces a new resource to be created.
  /// [principalType] The Type of the Principal. One of `User`, `Group` or `ServicePrincipal`. Changing this forces a new resource to be created.
  /// [roleName] The Role Name of the Synapse Built-In Role. Possible values are `Apache Spark Administrator`, `Synapse Administrator`, `Synapse Artifact Publisher`, `Synapse Artifact User`, `Synapse Compute Operator`, `Synapse Contributor`, `Synapse Credential User`, `Synapse Linked Data Manager`, `Synapse Monitoring Operator`, `Synapse SQL Administrator` and `Synapse User`. Changing this forces a new resource to be created.
  /// [synapseSparkPoolId] The Synapse Spark Pool which the Synapse Role Assignment applies to. Changing this forces a new resource to be created.
  /// [synapseWorkspaceId] The Synapse Workspace which the Synapse Role Assignment applies to. Changing this forces a new resource to be created.
  const RoleAssignmentState({
    this.principalId,
    this.principalType,
    this.roleName,
    this.synapseSparkPoolId,
    this.synapseWorkspaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'principalId': ?principalId,
      'principalType': ?principalType,
      'roleName': ?roleName,
      'synapseSparkPoolId': ?synapseSparkPoolId,
      'synapseWorkspaceId': ?synapseWorkspaceId,
    };
  }

  factory RoleAssignmentState.fromMap(Map<String, dynamic> map) {
    return RoleAssignmentState(
      principalId: (() { final guardedValue = map['principalId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      principalType: (() { final guardedValue = map['principalType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roleName: (() { final guardedValue = map['roleName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      synapseSparkPoolId: (() { final guardedValue = map['synapseSparkPoolId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      synapseWorkspaceId: (() { final guardedValue = map['synapseWorkspaceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
