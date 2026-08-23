// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_siterecovery_hyper_vreplication_policy_hyper_vreplication_policy_args_doc}
/// The set of arguments for HyperVReplicationPolicy.
/// {@endtemplate}
/// {@macro pulumi_siterecovery_hyper_vreplication_policy_hyper_vreplication_policy_args_doc}
class HyperVReplicationPolicyArgs {
  /// Specifies the frequency at which to create application consistent recovery points.
  final pulumi.Input<int> applicationConsistentSnapshotFrequencyInHours;
  /// The name of the replication policy. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The duration in hours for which the recovery points need to be stored.
  final pulumi.Input<int> recoveryPointRetentionInHours;
  /// The id of the vault that should be updated. Changing this forces a new resource to be created.
  final pulumi.Input<String> recoveryVaultId;
  /// Specifies how frequently data should be synchronized between source and target locations. Possible values are `30` and `300`.
  final pulumi.Input<int> replicationIntervalInSeconds;

  /// Creates a new [HyperVReplicationPolicyArgs].
  /// [applicationConsistentSnapshotFrequencyInHours] Specifies the frequency at which to create application consistent recovery points.
  /// [name] The name of the replication policy. Changing this forces a new resource to be created.
  /// [recoveryPointRetentionInHours] The duration in hours for which the recovery points need to be stored.
  /// [recoveryVaultId] The id of the vault that should be updated. Changing this forces a new resource to be created.
  /// [replicationIntervalInSeconds] Specifies how frequently data should be synchronized between source and target locations. Possible values are `30` and `300`.
  const HyperVReplicationPolicyArgs({
    required this.applicationConsistentSnapshotFrequencyInHours,
    this.name,
    required this.recoveryPointRetentionInHours,
    required this.recoveryVaultId,
    required this.replicationIntervalInSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationConsistentSnapshotFrequencyInHours': applicationConsistentSnapshotFrequencyInHours,
      'name': ?name,
      'recoveryPointRetentionInHours': recoveryPointRetentionInHours,
      'recoveryVaultId': recoveryVaultId,
      'replicationIntervalInSeconds': replicationIntervalInSeconds,
    };
  }

  factory HyperVReplicationPolicyArgs.fromMap(Map<String, dynamic> map) {
    return HyperVReplicationPolicyArgs(
      applicationConsistentSnapshotFrequencyInHours: pulumi.Input.fromValue(map['applicationConsistentSnapshotFrequencyInHours'] as int),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recoveryPointRetentionInHours: pulumi.Input.fromValue(map['recoveryPointRetentionInHours'] as int),
      recoveryVaultId: pulumi.Input.fromValue(map['recoveryVaultId'] as String),
      replicationIntervalInSeconds: pulumi.Input.fromValue(map['replicationIntervalInSeconds'] as int),
    );
  }
}
