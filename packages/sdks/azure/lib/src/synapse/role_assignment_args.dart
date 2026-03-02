// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_synapse_role_assignment_role_assignment_args_doc}
/// The set of arguments for RoleAssignment.
/// {@endtemplate}
/// {@macro pulumi_synapse_role_assignment_role_assignment_args_doc}
class RoleAssignmentArgs {
  /// The ID of the Principal (User, Group or Service Principal) to assign the Synapse Role Definition to. Changing this forces a new resource to be created.
  final pulumi.Input<String> principalId;
  /// The Type of the Principal. One of `User`, `Group` or `ServicePrincipal`. Changing this forces a new resource to be created.
  ///
  /// > **NOTE:** While `principal_type` is optional, it's still recommended to set this value, as some Synapse use-cases may not work correctly if this is not specified. Service Principals for example can't run SQL statements using `Entra ID` authentication if `principal_type` is not set to `ServicePrincipal`.
  final pulumi.Input<String>? principalType;
  /// The Role Name of the Synapse Built-In Role. Possible values are `Apache Spark Administrator`, `Synapse Administrator`, `Synapse Artifact Publisher`, `Synapse Artifact User`, `Synapse Compute Operator`, `Synapse Contributor`, `Synapse Credential User`, `Synapse Linked Data Manager`, `Synapse Monitoring Operator`, `Synapse SQL Administrator` and `Synapse User`. Changing this forces a new resource to be created.
  ///
  /// > **NOTE:** Currently, the Synapse built-in roles are `Apache Spark Administrator`, `Synapse Administrator`, `Synapse Artifact Publisher`, `Synapse Artifact User`, `Synapse Compute Operator`, `Synapse Contributor`, `Synapse Credential User`, `Synapse Linked Data Manager`, `Synapse Monitoring Operator`, `Synapse SQL Administrator` and `Synapse User`.
  ///
  /// > **NOTE:** Old roles are still supported: `Workspace Admin`, `Apache Spark Admin`, `Sql Admin`. These values will be removed in the next Major Version 3.0.
  final pulumi.Input<String> roleName;
  /// The Synapse Spark Pool which the Synapse Role Assignment applies to. Changing this forces a new resource to be created.
  ///
  /// > **NOTE:** A Synapse firewall rule including local IP is needed to allow access. Only one of `synapse_workspace_id`, `synapse_spark_pool_id` must be set.
  final pulumi.Input<String>? synapseSparkPoolId;
  /// The Synapse Workspace which the Synapse Role Assignment applies to. Changing this forces a new resource to be created.
  final pulumi.Input<String>? synapseWorkspaceId;

  /// Creates a new [RoleAssignmentArgs].
  /// [principalId] The ID of the Principal (User, Group or Service Principal) to assign the Synapse Role Definition to. Changing this forces a new resource to be created.
  /// [principalType] The Type of the Principal. One of `User`, `Group` or `ServicePrincipal`. Changing this forces a new resource to be created.
  /// [roleName] The Role Name of the Synapse Built-In Role. Possible values are `Apache Spark Administrator`, `Synapse Administrator`, `Synapse Artifact Publisher`, `Synapse Artifact User`, `Synapse Compute Operator`, `Synapse Contributor`, `Synapse Credential User`, `Synapse Linked Data Manager`, `Synapse Monitoring Operator`, `Synapse SQL Administrator` and `Synapse User`. Changing this forces a new resource to be created.
  /// [synapseSparkPoolId] The Synapse Spark Pool which the Synapse Role Assignment applies to. Changing this forces a new resource to be created.
  /// [synapseWorkspaceId] The Synapse Workspace which the Synapse Role Assignment applies to. Changing this forces a new resource to be created.
  RoleAssignmentArgs({
    required this.principalId,
    this.principalType,
    required this.roleName,
    this.synapseSparkPoolId,
    this.synapseWorkspaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'principalId': principalId,
      'principalType': ?principalType,
      'roleName': roleName,
      'synapseSparkPoolId': ?synapseSparkPoolId,
      'synapseWorkspaceId': ?synapseWorkspaceId,
    };
  }

  factory RoleAssignmentArgs.fromMap(Map<String, dynamic> map) {
    return RoleAssignmentArgs(
      principalId: (map['principalId'] as String).input(),
      principalType: map['principalType'] == null ? null : (map['principalType']! as String).input(),
      roleName: (map['roleName'] as String).input(),
      synapseSparkPoolId: map['synapseSparkPoolId'] == null ? null : (map['synapseSparkPoolId']! as String).input(),
      synapseWorkspaceId: map['synapseWorkspaceId'] == null ? null : (map['synapseWorkspaceId']! as String).input(),
    );
  }
}

