// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Hyper-V Replica Azure specific input for creating a protection profile.
class HyperVReplicaAzurePolicyInput {
  /// The interval (in hours) at which Hyper-V Replica should create an application consistent snapshot within the VM.
  final pulumi.Input<int>? applicationConsistentSnapshotFrequencyInHours;
  /// The class type.
  /// Expected value is 'HyperVReplicaAzure'.
  final pulumi.Input<String> instanceType;
  /// The scheduled start time for the initial replication. If this parameter is Null, the initial replication starts immediately.
  final pulumi.Input<String>? onlineReplicationStartTime;
  /// The duration (in hours) to which point the recovery history needs to be maintained.
  final pulumi.Input<int>? recoveryPointHistoryDuration;
  /// The replication interval.
  final pulumi.Input<int>? replicationInterval;
  /// The list of storage accounts to which the VMs in the primary cloud can replicate to.
  final pulumi.Input<List<String>>? storageAccounts;

  /// Creates a new [HyperVReplicaAzurePolicyInput].
  /// [applicationConsistentSnapshotFrequencyInHours] The interval (in hours) at which Hyper-V Replica should create an application consistent snapshot within the VM.
  /// [instanceType] The class type.
  /// [onlineReplicationStartTime] The scheduled start time for the initial replication. If this parameter is Null, the initial replication starts immediately.
  /// [recoveryPointHistoryDuration] The duration (in hours) to which point the recovery history needs to be maintained.
  /// [replicationInterval] The replication interval.
  /// [storageAccounts] The list of storage accounts to which the VMs in the primary cloud can replicate to.
  const HyperVReplicaAzurePolicyInput({
    this.applicationConsistentSnapshotFrequencyInHours,
    required this.instanceType,
    this.onlineReplicationStartTime,
    this.recoveryPointHistoryDuration,
    this.replicationInterval,
    this.storageAccounts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationConsistentSnapshotFrequencyInHours': ?applicationConsistentSnapshotFrequencyInHours,
      'instanceType': instanceType,
      'onlineReplicationStartTime': ?onlineReplicationStartTime,
      'recoveryPointHistoryDuration': ?recoveryPointHistoryDuration,
      'replicationInterval': ?replicationInterval,
      'storageAccounts': ?storageAccounts,
    };
  }

  factory HyperVReplicaAzurePolicyInput.fromMap(Map<String, dynamic> map) {
    return HyperVReplicaAzurePolicyInput(
      applicationConsistentSnapshotFrequencyInHours: (() { final guardedValue = map['applicationConsistentSnapshotFrequencyInHours']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      instanceType: pulumi.Input.fromValue(map['instanceType'] as String),
      onlineReplicationStartTime: (() { final guardedValue = map['onlineReplicationStartTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recoveryPointHistoryDuration: (() { final guardedValue = map['recoveryPointHistoryDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      replicationInterval: (() { final guardedValue = map['replicationInterval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      storageAccounts: (() { final guardedValue = map['storageAccounts']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

