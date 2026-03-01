// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ReplicationPolicy resources.
class ReplicationPolicyState {
  /// Specifies the frequency(in minutes) at which to create application consistent recovery points.
  ///
  /// > **Note:** The value of `application_consistent_snapshot_frequency_in_minutes` must be less than or equal to the value of `recovery_point_retention_in_minutes`.
  final pulumi.Input<int>? applicationConsistentSnapshotFrequencyInMinutes;
  /// The name of the replication policy. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The duration in minutes for which the recovery points need to be stored.
  final pulumi.Input<int>? recoveryPointRetentionInMinutes;
  /// The name of the vault that should be updated. Changing this forces a new resource to be created.
  final pulumi.Input<String>? recoveryVaultName;
  /// Name of the resource group where the vault that should be updated is located. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;

  /// Creates a new [ReplicationPolicyState].
  /// [applicationConsistentSnapshotFrequencyInMinutes] Specifies the frequency(in minutes) at which to create application consistent recovery points.
  /// [name] The name of the replication policy. Changing this forces a new resource to be created.
  /// [recoveryPointRetentionInMinutes] The duration in minutes for which the recovery points need to be stored.
  /// [recoveryVaultName] The name of the vault that should be updated. Changing this forces a new resource to be created.
  /// [resourceGroupName] Name of the resource group where the vault that should be updated is located. Changing this forces a new resource to be created.
  ReplicationPolicyState({
    pulumi.Output<int>? applicationConsistentSnapshotFrequencyInMinutes,
    pulumi.Output<String>? name,
    pulumi.Output<int>? recoveryPointRetentionInMinutes,
    pulumi.Output<String>? recoveryVaultName,
    pulumi.Output<String>? resourceGroupName,
  }) :
      applicationConsistentSnapshotFrequencyInMinutes = pulumi.Input.asOptionalInput<int>(applicationConsistentSnapshotFrequencyInMinutes),
      name = pulumi.Input.asOptionalInput<String>(name),
      recoveryPointRetentionInMinutes = pulumi.Input.asOptionalInput<int>(recoveryPointRetentionInMinutes),
      recoveryVaultName = pulumi.Input.asOptionalInput<String>(recoveryVaultName),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationConsistentSnapshotFrequencyInMinutes': ?applicationConsistentSnapshotFrequencyInMinutes,
      'name': ?name,
      'recoveryPointRetentionInMinutes': ?recoveryPointRetentionInMinutes,
      'recoveryVaultName': ?recoveryVaultName,
      'resourceGroupName': ?resourceGroupName,
    };
  }

  factory ReplicationPolicyState.fromMap(Map<String, dynamic> map) {
    return ReplicationPolicyState(
      applicationConsistentSnapshotFrequencyInMinutes: map['applicationConsistentSnapshotFrequencyInMinutes'] == null ? null : pulumi.Output.create<int>(map['applicationConsistentSnapshotFrequencyInMinutes'] as int),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      recoveryPointRetentionInMinutes: map['recoveryPointRetentionInMinutes'] == null ? null : pulumi.Output.create<int>(map['recoveryPointRetentionInMinutes'] as int),
      recoveryVaultName: map['recoveryVaultName'] == null ? null : pulumi.Output.create<String>(map['recoveryVaultName'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

