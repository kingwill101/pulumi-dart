// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_siterecovery_replication_policy_replication_policy_args_doc}
/// The set of arguments for ReplicationPolicy.
/// {@endtemplate}
/// {@macro pulumi_siterecovery_replication_policy_replication_policy_args_doc}
class ReplicationPolicyArgs {
  /// Specifies the frequency(in minutes) at which to create application consistent recovery points.
  ///
  /// &gt; **Note:** The value of `application_consistent_snapshot_frequency_in_minutes` must be less than or equal to the value of `recovery_point_retention_in_minutes`.
  final pulumi.Input<int> applicationConsistentSnapshotFrequencyInMinutes;
  /// The name of the replication policy. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The duration in minutes for which the recovery points need to be stored.
  final pulumi.Input<int> recoveryPointRetentionInMinutes;
  /// The name of the vault that should be updated. Changing this forces a new resource to be created.
  final pulumi.Input<String> recoveryVaultName;
  /// Name of the resource group where the vault that should be updated is located. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ReplicationPolicyArgs].
  /// [applicationConsistentSnapshotFrequencyInMinutes] Specifies the frequency(in minutes) at which to create application consistent recovery points.
  /// [name] The name of the replication policy. Changing this forces a new resource to be created.
  /// [recoveryPointRetentionInMinutes] The duration in minutes for which the recovery points need to be stored.
  /// [recoveryVaultName] The name of the vault that should be updated. Changing this forces a new resource to be created.
  /// [resourceGroupName] Name of the resource group where the vault that should be updated is located. Changing this forces a new resource to be created.
  const ReplicationPolicyArgs({
    required this.applicationConsistentSnapshotFrequencyInMinutes,
    this.name,
    required this.recoveryPointRetentionInMinutes,
    required this.recoveryVaultName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationConsistentSnapshotFrequencyInMinutes': applicationConsistentSnapshotFrequencyInMinutes,
      'name': ?name,
      'recoveryPointRetentionInMinutes': recoveryPointRetentionInMinutes,
      'recoveryVaultName': recoveryVaultName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ReplicationPolicyArgs.fromMap(Map<String, dynamic> map) {
    return ReplicationPolicyArgs(
      applicationConsistentSnapshotFrequencyInMinutes: pulumi.Input.fromValue(map['applicationConsistentSnapshotFrequencyInMinutes'] as int),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recoveryPointRetentionInMinutes: pulumi.Input.fromValue(map['recoveryPointRetentionInMinutes'] as int),
      recoveryVaultName: pulumi.Input.fromValue(map['recoveryVaultName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

