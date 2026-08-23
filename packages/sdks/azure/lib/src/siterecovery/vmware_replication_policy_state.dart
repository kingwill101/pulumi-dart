// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering VMWareReplicationPolicy resources.
class VMWareReplicationPolicyState {
  /// Specifies the frequency at which to create application consistent recovery points. Must between `0` to `720`.
  final pulumi.Input<int>? applicationConsistentSnapshotFrequencyInMinutes;
  /// The name which should be used for this Classic Replication Policy. Changing this forces a new Replication Policy to be created.
  final pulumi.Input<String>? name;
  /// Specifies the period up to which the recovery points will be retained. Must between `0` to `21600`.
  final pulumi.Input<int>? recoveryPointRetentionInMinutes;
  /// ID of the Recovery Services Vault. Changing this forces a new Replication Policy to be created.
  final pulumi.Input<String>? recoveryVaultId;

  /// Creates a new [VMWareReplicationPolicyState].
  /// [applicationConsistentSnapshotFrequencyInMinutes] Specifies the frequency at which to create application consistent recovery points. Must between `0` to `720`.
  /// [name] The name which should be used for this Classic Replication Policy. Changing this forces a new Replication Policy to be created.
  /// [recoveryPointRetentionInMinutes] Specifies the period up to which the recovery points will be retained. Must between `0` to `21600`.
  /// [recoveryVaultId] ID of the Recovery Services Vault. Changing this forces a new Replication Policy to be created.
  const VMWareReplicationPolicyState({
    this.applicationConsistentSnapshotFrequencyInMinutes,
    this.name,
    this.recoveryPointRetentionInMinutes,
    this.recoveryVaultId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationConsistentSnapshotFrequencyInMinutes': ?applicationConsistentSnapshotFrequencyInMinutes,
      'name': ?name,
      'recoveryPointRetentionInMinutes': ?recoveryPointRetentionInMinutes,
      'recoveryVaultId': ?recoveryVaultId,
    };
  }

  factory VMWareReplicationPolicyState.fromMap(Map<String, dynamic> map) {
    return VMWareReplicationPolicyState(
      applicationConsistentSnapshotFrequencyInMinutes: (() { final guardedValue = map['applicationConsistentSnapshotFrequencyInMinutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recoveryPointRetentionInMinutes: (() { final guardedValue = map['recoveryPointRetentionInMinutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      recoveryVaultId: (() { final guardedValue = map['recoveryVaultId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
