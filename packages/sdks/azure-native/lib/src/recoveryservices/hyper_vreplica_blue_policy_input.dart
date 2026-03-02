// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// HyperV Replica Blue policy input.
class HyperVReplicaBluePolicyInput {
  /// A value indicating the authentication type.
  final pulumi.Input<int>? allowedAuthenticationType;
  /// A value indicating the application consistent frequency.
  final pulumi.Input<int>? applicationConsistentSnapshotFrequencyInHours;
  /// A value indicating whether compression has to be enabled.
  final pulumi.Input<String>? compression;
  /// A value indicating whether IR is online.
  final pulumi.Input<String>? initialReplicationMethod;
  /// Expected value is 'HyperVReplica2012R2'.
  final pulumi.Input<String> instanceType;
  /// A value indicating the offline IR export path.
  final pulumi.Input<String>? offlineReplicationExportPath;
  /// A value indicating the offline IR import path.
  final pulumi.Input<String>? offlineReplicationImportPath;
  /// A value indicating the online IR start time.
  final pulumi.Input<String>? onlineReplicationStartTime;
  /// A value indicating the number of recovery points.
  final pulumi.Input<int>? recoveryPoints;
  /// A value indicating whether the VM has to be auto deleted.
  final pulumi.Input<String>? replicaDeletion;
  /// A value indicating the replication interval.
  final pulumi.Input<int>? replicationFrequencyInSeconds;
  /// A value indicating the recovery HTTPS port.
  final pulumi.Input<int>? replicationPort;

  /// Creates a new [HyperVReplicaBluePolicyInput].
  /// [allowedAuthenticationType] A value indicating the authentication type.
  /// [applicationConsistentSnapshotFrequencyInHours] A value indicating the application consistent frequency.
  /// [compression] A value indicating whether compression has to be enabled.
  /// [initialReplicationMethod] A value indicating whether IR is online.
  /// [instanceType] Expected value is 'HyperVReplica2012R2'.
  /// [offlineReplicationExportPath] A value indicating the offline IR export path.
  /// [offlineReplicationImportPath] A value indicating the offline IR import path.
  /// [onlineReplicationStartTime] A value indicating the online IR start time.
  /// [recoveryPoints] A value indicating the number of recovery points.
  /// [replicaDeletion] A value indicating whether the VM has to be auto deleted.
  /// [replicationFrequencyInSeconds] A value indicating the replication interval.
  /// [replicationPort] A value indicating the recovery HTTPS port.
  HyperVReplicaBluePolicyInput({
    this.allowedAuthenticationType,
    this.applicationConsistentSnapshotFrequencyInHours,
    this.compression,
    this.initialReplicationMethod,
    required this.instanceType,
    this.offlineReplicationExportPath,
    this.offlineReplicationImportPath,
    this.onlineReplicationStartTime,
    this.recoveryPoints,
    this.replicaDeletion,
    this.replicationFrequencyInSeconds,
    this.replicationPort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedAuthenticationType': ?allowedAuthenticationType,
      'applicationConsistentSnapshotFrequencyInHours': ?applicationConsistentSnapshotFrequencyInHours,
      'compression': ?compression,
      'initialReplicationMethod': ?initialReplicationMethod,
      'instanceType': instanceType,
      'offlineReplicationExportPath': ?offlineReplicationExportPath,
      'offlineReplicationImportPath': ?offlineReplicationImportPath,
      'onlineReplicationStartTime': ?onlineReplicationStartTime,
      'recoveryPoints': ?recoveryPoints,
      'replicaDeletion': ?replicaDeletion,
      'replicationFrequencyInSeconds': ?replicationFrequencyInSeconds,
      'replicationPort': ?replicationPort,
    };
  }

  factory HyperVReplicaBluePolicyInput.fromMap(Map<String, dynamic> map) {
    return HyperVReplicaBluePolicyInput(
      allowedAuthenticationType: map['allowedAuthenticationType'] == null ? null : (map['allowedAuthenticationType']! as int).input(),
      applicationConsistentSnapshotFrequencyInHours: map['applicationConsistentSnapshotFrequencyInHours'] == null ? null : (map['applicationConsistentSnapshotFrequencyInHours']! as int).input(),
      compression: map['compression'] == null ? null : (map['compression']! as String).input(),
      initialReplicationMethod: map['initialReplicationMethod'] == null ? null : (map['initialReplicationMethod']! as String).input(),
      instanceType: (map['instanceType'] as String).input(),
      offlineReplicationExportPath: map['offlineReplicationExportPath'] == null ? null : (map['offlineReplicationExportPath']! as String).input(),
      offlineReplicationImportPath: map['offlineReplicationImportPath'] == null ? null : (map['offlineReplicationImportPath']! as String).input(),
      onlineReplicationStartTime: map['onlineReplicationStartTime'] == null ? null : (map['onlineReplicationStartTime']! as String).input(),
      recoveryPoints: map['recoveryPoints'] == null ? null : (map['recoveryPoints']! as int).input(),
      replicaDeletion: map['replicaDeletion'] == null ? null : (map['replicaDeletion']! as String).input(),
      replicationFrequencyInSeconds: map['replicationFrequencyInSeconds'] == null ? null : (map['replicationFrequencyInSeconds']! as int).input(),
      replicationPort: map['replicationPort'] == null ? null : (map['replicationPort']! as int).input(),
    );
  }
}

