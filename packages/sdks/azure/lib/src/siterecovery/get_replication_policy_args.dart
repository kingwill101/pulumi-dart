// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_siterecovery_get_replication_policy_get_replication_policy_args_doc}
/// Arguments for getReplicationPolicy.
/// {@endtemplate}
/// {@macro pulumi_siterecovery_get_replication_policy_get_replication_policy_args_doc}
class GetReplicationPolicyArgs {
  /// Specifies the name of the Azure Site Recovery replication policy.
  final pulumi.Input<String> name;
  /// The name of the Recovery Services Vault that the Azure Site Recovery replication policy is associated witth.
  final pulumi.Input<String> recoveryVaultName;
  /// The name of the resource group in which the associated Azure Site Recovery replication policy resides.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetReplicationPolicyArgs].
  /// [name] Specifies the name of the Azure Site Recovery replication policy.
  /// [recoveryVaultName] The name of the Recovery Services Vault that the Azure Site Recovery replication policy is associated witth.
  /// [resourceGroupName] The name of the resource group in which the associated Azure Site Recovery replication policy resides.
  GetReplicationPolicyArgs({
    required this.name,
    required this.recoveryVaultName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'recoveryVaultName': recoveryVaultName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetReplicationPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetReplicationPolicyArgs(
      name: (map['name'] as String).input(),
      recoveryVaultName: (map['recoveryVaultName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

