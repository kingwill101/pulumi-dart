// ignore_for_file: unused_element, unnecessary_cast


/// Base class for HyperVReplica policy details.
class HyperVReplicaBasePolicyDetailsResponse {
  /// A value indicating the authentication type.
  final int? allowedAuthenticationType;
  /// A value indicating the application consistent frequency.
  final int? applicationConsistentSnapshotFrequencyInHours;
  /// A value indicating whether compression has to be enabled.
  final String? compression;
  /// A value indicating whether IR is online.
  final String? initialReplicationMethod;
  /// Gets the class type. Overridden in derived classes.
  /// Expected value is 'HyperVReplicaBasePolicyDetails'.
  final String instanceType;
  /// A value indicating the offline IR export path.
  final String? offlineReplicationExportPath;
  /// A value indicating the offline IR import path.
  final String? offlineReplicationImportPath;
  /// A value indicating the online IR start time.
  final String? onlineReplicationStartTime;
  /// A value indicating the number of recovery points.
  final int? recoveryPoints;
  /// A value indicating whether the VM has to be auto deleted. Supported Values: String.Empty, None, OnRecoveryCloud.
  final String? replicaDeletionOption;
  /// A value indicating the recovery HTTPS port.
  final int? replicationPort;

  /// Creates a new [HyperVReplicaBasePolicyDetailsResponse].
  /// [allowedAuthenticationType] A value indicating the authentication type.
  /// [applicationConsistentSnapshotFrequencyInHours] A value indicating the application consistent frequency.
  /// [compression] A value indicating whether compression has to be enabled.
  /// [initialReplicationMethod] A value indicating whether IR is online.
  /// [instanceType] Gets the class type. Overridden in derived classes.
  /// [offlineReplicationExportPath] A value indicating the offline IR export path.
  /// [offlineReplicationImportPath] A value indicating the offline IR import path.
  /// [onlineReplicationStartTime] A value indicating the online IR start time.
  /// [recoveryPoints] A value indicating the number of recovery points.
  /// [replicaDeletionOption] A value indicating whether the VM has to be auto deleted. Supported Values: String.Empty, None, OnRecoveryCloud.
  /// [replicationPort] A value indicating the recovery HTTPS port.
  HyperVReplicaBasePolicyDetailsResponse({
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
      'replicationPort': ?replicationPort,
    };
  }

  factory HyperVReplicaBasePolicyDetailsResponse.fromMap(Map<String, dynamic> map) {
    return HyperVReplicaBasePolicyDetailsResponse(
      allowedAuthenticationType: map['allowedAuthenticationType'] == null ? null : map['allowedAuthenticationType'] as int,
      applicationConsistentSnapshotFrequencyInHours: map['applicationConsistentSnapshotFrequencyInHours'] == null ? null : map['applicationConsistentSnapshotFrequencyInHours'] as int,
      compression: map['compression'] == null ? null : map['compression'] as String,
      initialReplicationMethod: map['initialReplicationMethod'] == null ? null : map['initialReplicationMethod'] as String,
      instanceType: map['instanceType'] as String,
      offlineReplicationExportPath: map['offlineReplicationExportPath'] == null ? null : map['offlineReplicationExportPath'] as String,
      offlineReplicationImportPath: map['offlineReplicationImportPath'] == null ? null : map['offlineReplicationImportPath'] as String,
      onlineReplicationStartTime: map['onlineReplicationStartTime'] == null ? null : map['onlineReplicationStartTime'] as String,
      recoveryPoints: map['recoveryPoints'] == null ? null : map['recoveryPoints'] as int,
      replicaDeletionOption: map['replicaDeletionOption'] == null ? null : map['replicaDeletionOption'] as String,
      replicationPort: map['replicationPort'] == null ? null : map['replicationPort'] as int,
    );
  }
}

