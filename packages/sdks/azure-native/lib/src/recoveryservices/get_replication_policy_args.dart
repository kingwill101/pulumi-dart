// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_recoveryservices_get_replication_policy_args_doc}
/// Arguments for getReplicationPolicy.
/// {@endtemplate}
/// {@macro pulumi_recoveryservices_get_replication_policy_args_doc}
class GetReplicationPolicyArgs {
  /// Replication policy name.
  final pulumi.Input<String> policyName;
  /// The name of the resource group where the recovery services vault is present.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the recovery services vault.
  final pulumi.Input<String> resourceName;

  /// Creates a new [GetReplicationPolicyArgs].
  /// [policyName] Replication policy name.
  /// [resourceGroupName] The name of the resource group where the recovery services vault is present.
  /// [resourceName] The name of the recovery services vault.
  GetReplicationPolicyArgs({
    required pulumi.Output<String> policyName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> resourceName,
  }) :
      policyName = pulumi.Input.asInput<String>(policyName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceName = pulumi.Input.asInput<String>(resourceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policyName': policyName,
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
    };
  }

  factory GetReplicationPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetReplicationPolicyArgs(
      policyName: pulumi.Output.create<String>(map['policyName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      resourceName: pulumi.Output.create<String>(map['resourceName'] as String),
    );
  }
}

