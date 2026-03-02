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
    this.applicationConsistentSnapshotFrequencyInMinutes,
    this.name,
    this.recoveryPointRetentionInMinutes,
    this.recoveryVaultName,
    this.resourceGroupName,
  });

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
      applicationConsistentSnapshotFrequencyInMinutes: map['applicationConsistentSnapshotFrequencyInMinutes'] == null ? null : (map['applicationConsistentSnapshotFrequencyInMinutes']! as int).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      recoveryPointRetentionInMinutes: map['recoveryPointRetentionInMinutes'] == null ? null : (map['recoveryPointRetentionInMinutes']! as int).input(),
      recoveryVaultName: map['recoveryVaultName'] == null ? null : (map['recoveryVaultName']! as String).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName']! as String).input(),
    );
  }
}

