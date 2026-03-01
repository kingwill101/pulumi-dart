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
    pulumi.Output<int>? applicationConsistentSnapshotFrequencyInHours,
    pulumi.Output<String>? name,
    pulumi.Output<int>? recoveryPointRetentionInHours,
    pulumi.Output<String>? recoveryVaultId,
    pulumi.Output<int>? replicationIntervalInSeconds,
  }) :
      applicationConsistentSnapshotFrequencyInHours = pulumi.Input.asOptionalInput<int>(applicationConsistentSnapshotFrequencyInHours),
      name = pulumi.Input.asOptionalInput<String>(name),
      recoveryPointRetentionInHours = pulumi.Input.asOptionalInput<int>(recoveryPointRetentionInHours),
      recoveryVaultId = pulumi.Input.asOptionalInput<String>(recoveryVaultId),
      replicationIntervalInSeconds = pulumi.Input.asOptionalInput<int>(replicationIntervalInSeconds);

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
      applicationConsistentSnapshotFrequencyInHours: map['applicationConsistentSnapshotFrequencyInHours'] == null ? null : pulumi.Output.create<int>(map['applicationConsistentSnapshotFrequencyInHours'] as int),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      recoveryPointRetentionInHours: map['recoveryPointRetentionInHours'] == null ? null : pulumi.Output.create<int>(map['recoveryPointRetentionInHours'] as int),
      recoveryVaultId: map['recoveryVaultId'] == null ? null : pulumi.Output.create<String>(map['recoveryVaultId'] as String),
      replicationIntervalInSeconds: map['replicationIntervalInSeconds'] == null ? null : pulumi.Output.create<int>(map['replicationIntervalInSeconds'] as int),
    );
  }
}

