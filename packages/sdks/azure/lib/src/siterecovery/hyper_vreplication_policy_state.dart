// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering HyperVReplicationPolicy resources.
class HyperVReplicationPolicyState {
  /// Specifies the frequency at which to create application consistent recovery points.
  final pulumi.Input<int>? applicationConsistentSnapshotFrequencyInHours;
  /// The name of the replication policy. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The duration in hours for which the recovery points need to be stored.
  final pulumi.Input<int>? recoveryPointRetentionInHours;
  /// The id of the vault that should be updated. Changing this forces a new resource to be created.
  final pulumi.Input<String>? recoveryVaultId;
  /// Specifies how frequently data should be synchronized between source and target locations. Possible values are `30` and `300`.
  final pulumi.Input<int>? replicationIntervalInSeconds;

  /// Creates a new [HyperVReplicationPolicyState].
  /// [applicationConsistentSnapshotFrequencyInHours] Specifies the frequency at which to create application consistent recovery points.
  /// [name] The name of the replication policy. Changing this forces a new resource to be created.
  /// [recoveryPointRetentionInHours] The duration in hours for which the recovery points need to be stored.
  /// [recoveryVaultId] The id of the vault that should be updated. Changing this forces a new resource to be created.
  /// [replicationIntervalInSeconds] Specifies how frequently data should be synchronized between source and target locations. Possible values are `30` and `300`.
  HyperVReplicationPolicyState({
    this.applicationConsistentSnapshotFrequencyInHours,
    this.name,
    this.recoveryPointRetentionInHours,
    this.recoveryVaultId,
    this.replicationIntervalInSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationConsistentSnapshotFrequencyInHours': ?applicationConsistentSnapshotFrequencyInHours,
      'name': ?name,
      'recoveryPointRetentionInHours': ?recoveryPointRetentionInHours,
      'recoveryVaultId': ?recoveryVaultId,
      'replicationIntervalInSeconds': ?replicationIntervalInSeconds,
    };
  }

  factory HyperVReplicationPolicyState.fromMap(Map<String, dynamic> map) {
    return HyperVReplicationPolicyState(
      applicationConsistentSnapshotFrequencyInHours: map['applicationConsistentSnapshotFrequencyInHours'] == null ? null : (map['applicationConsistentSnapshotFrequencyInHours'] as int).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      recoveryPointRetentionInHours: map['recoveryPointRetentionInHours'] == null ? null : (map['recoveryPointRetentionInHours'] as int).input(),
      recoveryVaultId: map['recoveryVaultId'] == null ? null : (map['recoveryVaultId'] as String).input(),
      replicationIntervalInSeconds: map['replicationIntervalInSeconds'] == null ? null : (map['replicationIntervalInSeconds'] as int).input(),
    );
  }
}

