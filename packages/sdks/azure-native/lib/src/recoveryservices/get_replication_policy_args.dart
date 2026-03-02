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
    required this.policyName,
    required this.resourceGroupName,
    required this.resourceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policyName': policyName,
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
    };
  }

  factory GetReplicationPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetReplicationPolicyArgs(
      policyName: (map['policyName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      resourceName: (map['resourceName'] as String).input(),
    );
  }
}

