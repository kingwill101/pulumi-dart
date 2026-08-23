// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Hyper-V Replica Blue specific protection profile details.
class HyperVReplicaBluePolicyDetailsResponse {
  /// A value indicating the authentication type.
  final pulumi.Input<int>? allowedAuthenticationType;
  /// A value indicating the application consistent frequency.
  final pulumi.Input<int>? applicationConsistentSnapshotFrequencyInHours;
  /// A value indicating whether compression has to be enabled.
  final pulumi.Input<String>? compression;
  /// A value indicating whether IR is online.
  final pulumi.Input<String>? initialReplicationMethod;
  /// Gets the class type. Overridden in derived classes.
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
  /// A value indicating whether the VM has to be auto deleted. Supported Values: String.Empty, None, OnRecoveryCloud
  final pulumi.Input<String>? replicaDeletionOption;
  /// A value indicating the replication interval.
  final pulumi.Input<int>? replicationFrequencyInSeconds;
  /// A value indicating the recovery HTTPS port.
  final pulumi.Input<int>? replicationPort;

  /// Creates a new [HyperVReplicaBluePolicyDetailsResponse].
  /// [allowedAuthenticationType] A value indicating the authentication type.
  /// [applicationConsistentSnapshotFrequencyInHours] A value indicating the application consistent frequency.
  /// [compression] A value indicating whether compression has to be enabled.
  /// [initialReplicationMethod] A value indicating whether IR is online.
  /// [instanceType] Gets the class type. Overridden in derived classes.
  /// [offlineReplicationExportPath] A value indicating the offline IR export path.
  /// [offlineReplicationImportPath] A value indicating the offline IR import path.
  /// [onlineReplicationStartTime] A value indicating the online IR start time.
  /// [recoveryPoints] A value indicating the number of recovery points.
  /// [replicaDeletionOption] A value indicating whether the VM has to be auto deleted. Supported Values: String.Empty, None, OnRecoveryCloud
  /// [replicationFrequencyInSeconds] A value indicating the replication interval.
  /// [replicationPort] A value indicating the recovery HTTPS port.
  const HyperVReplicaBluePolicyDetailsResponse({
    this.allowedAuthenticationType,
    this.applicationConsistentSnapshotFrequencyInHours,
    this.compression,
    this.initialReplicationMethod,
    required this.instanceType,
    this.offlineReplicationExportPath,
    this.offlineReplicationImportPath,
    this.onlineReplicationStartTime,
    this.recoveryPoints,
    this.replicaDeletionOption,
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
      'replicaDeletionOption': ?replicaDeletionOption,
      'replicationFrequencyInSeconds': ?replicationFrequencyInSeconds,
      'replicationPort': ?replicationPort,
    };
  }

  factory HyperVReplicaBluePolicyDetailsResponse.fromMap(Map<String, dynamic> map) {
    return HyperVReplicaBluePolicyDetailsResponse(
      allowedAuthenticationType: (() { final guardedValue = map['allowedAuthenticationType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      applicationConsistentSnapshotFrequencyInHours: (() { final guardedValue = map['applicationConsistentSnapshotFrequencyInHours']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      compression: (() { final guardedValue = map['compression']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      initialReplicationMethod: (() { final guardedValue = map['initialReplicationMethod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceType: pulumi.Input.fromValue(map['instanceType'] as String),
      offlineReplicationExportPath: (() { final guardedValue = map['offlineReplicationExportPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      offlineReplicationImportPath: (() { final guardedValue = map['offlineReplicationImportPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      onlineReplicationStartTime: (() { final guardedValue = map['onlineReplicationStartTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recoveryPoints: (() { final guardedValue = map['recoveryPoints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      replicaDeletionOption: (() { final guardedValue = map['replicaDeletionOption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      replicationFrequencyInSeconds: (() { final guardedValue = map['replicationFrequencyInSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      replicationPort: (() { final guardedValue = map['replicationPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
