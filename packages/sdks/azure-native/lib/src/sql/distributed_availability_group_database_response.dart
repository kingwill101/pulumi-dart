// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_info_response.dart';

/// Database specific information
class DistributedAvailabilityGroupDatabaseResponse {
  /// Link connected state
  final pulumi.Input<String> connectedState;
  /// The name of the database in link
  final pulumi.Input<String>? databaseName;
  /// Redo lag when Managed Instance link side is primary
  final pulumi.Input<int> instanceRedoReplicationLagSeconds;
  /// Managed instance replica id
  final pulumi.Input<String> instanceReplicaId;
  /// Replication lag when Managed Instance link side is primary
  final pulumi.Input<int> instanceSendReplicationLagSeconds;
  /// Last backup LSN
  final pulumi.Input<String> lastBackupLsn;
  /// Last backup LSN time
  final pulumi.Input<String> lastBackupTime;
  /// Last commit LSN
  final pulumi.Input<String> lastCommitLsn;
  /// Last commit LSN time
  final pulumi.Input<String> lastCommitTime;
  /// Last hardened LSN
  final pulumi.Input<String> lastHardenedLsn;
  /// Last hardened LSN time
  final pulumi.Input<String> lastHardenedTime;
  /// Last received LSN
  final pulumi.Input<String> lastReceivedLsn;
  /// Last received LSN time
  final pulumi.Input<String> lastReceivedTime;
  /// Last sent LSN
  final pulumi.Input<String> lastSentLsn;
  /// Last sent LSN time
  final pulumi.Input<String> lastSentTime;
  /// The most recent link connection error description
  final pulumi.Input<String> mostRecentLinkError;
  /// SQL server certificate validity
  final pulumi.Input<CertificateInfoResponse> partnerAuthCertValidity;
  /// SQL server replica id
  final pulumi.Input<String> partnerReplicaId;
  /// Current link state
  final pulumi.Input<String> replicaState;
  /// Seeding progress
  final pulumi.Input<String> seedingProgress;
  /// Link health state
  final pulumi.Input<String> synchronizationHealth;

  /// Creates a new [DistributedAvailabilityGroupDatabaseResponse].
  /// [connectedState] Link connected state
  /// [databaseName] The name of the database in link
  /// [instanceRedoReplicationLagSeconds] Redo lag when Managed Instance link side is primary
  /// [instanceReplicaId] Managed instance replica id
  /// [instanceSendReplicationLagSeconds] Replication lag when Managed Instance link side is primary
  /// [lastBackupLsn] Last backup LSN
  /// [lastBackupTime] Last backup LSN time
  /// [lastCommitLsn] Last commit LSN
  /// [lastCommitTime] Last commit LSN time
  /// [lastHardenedLsn] Last hardened LSN
  /// [lastHardenedTime] Last hardened LSN time
  /// [lastReceivedLsn] Last received LSN
  /// [lastReceivedTime] Last received LSN time
  /// [lastSentLsn] Last sent LSN
  /// [lastSentTime] Last sent LSN time
  /// [mostRecentLinkError] The most recent link connection error description
  /// [partnerAuthCertValidity] SQL server certificate validity
  /// [partnerReplicaId] SQL server replica id
  /// [replicaState] Current link state
  /// [seedingProgress] Seeding progress
  /// [synchronizationHealth] Link health state
  DistributedAvailabilityGroupDatabaseResponse({
    required this.connectedState,
    this.databaseName,
    required this.instanceRedoReplicationLagSeconds,
    required this.instanceReplicaId,
    required this.instanceSendReplicationLagSeconds,
    required this.lastBackupLsn,
    required this.lastBackupTime,
    required this.lastCommitLsn,
    required this.lastCommitTime,
    required this.lastHardenedLsn,
    required this.lastHardenedTime,
    required this.lastReceivedLsn,
    required this.lastReceivedTime,
    required this.lastSentLsn,
    required this.lastSentTime,
    required this.mostRecentLinkError,
    required this.partnerAuthCertValidity,
    required this.partnerReplicaId,
    required this.replicaState,
    required this.seedingProgress,
    required this.synchronizationHealth,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectedState': connectedState,
      'databaseName': ?databaseName,
      'instanceRedoReplicationLagSeconds': instanceRedoReplicationLagSeconds,
      'instanceReplicaId': instanceReplicaId,
      'instanceSendReplicationLagSeconds': instanceSendReplicationLagSeconds,
      'lastBackupLsn': lastBackupLsn,
      'lastBackupTime': lastBackupTime,
      'lastCommitLsn': lastCommitLsn,
      'lastCommitTime': lastCommitTime,
      'lastHardenedLsn': lastHardenedLsn,
      'lastHardenedTime': lastHardenedTime,
      'lastReceivedLsn': lastReceivedLsn,
      'lastReceivedTime': lastReceivedTime,
      'lastSentLsn': lastSentLsn,
      'lastSentTime': lastSentTime,
      'mostRecentLinkError': mostRecentLinkError,
      'partnerAuthCertValidity': pulumi.Input.mapInputValue<CertificateInfoResponse, Map<String, dynamic>>(partnerAuthCertValidity, (value) => value.toMap()),
      'partnerReplicaId': partnerReplicaId,
      'replicaState': replicaState,
      'seedingProgress': seedingProgress,
      'synchronizationHealth': synchronizationHealth,
    };
  }

  factory DistributedAvailabilityGroupDatabaseResponse.fromMap(Map<String, dynamic> map) {
    return DistributedAvailabilityGroupDatabaseResponse(
      connectedState: (map['connectedState'] as String).input(),
      databaseName: map['databaseName'] == null ? null : (map['databaseName'] as String).input(),
      instanceRedoReplicationLagSeconds: (map['instanceRedoReplicationLagSeconds'] as int).input(),
      instanceReplicaId: (map['instanceReplicaId'] as String).input(),
      instanceSendReplicationLagSeconds: (map['instanceSendReplicationLagSeconds'] as int).input(),
      lastBackupLsn: (map['lastBackupLsn'] as String).input(),
      lastBackupTime: (map['lastBackupTime'] as String).input(),
      lastCommitLsn: (map['lastCommitLsn'] as String).input(),
      lastCommitTime: (map['lastCommitTime'] as String).input(),
      lastHardenedLsn: (map['lastHardenedLsn'] as String).input(),
      lastHardenedTime: (map['lastHardenedTime'] as String).input(),
      lastReceivedLsn: (map['lastReceivedLsn'] as String).input(),
      lastReceivedTime: (map['lastReceivedTime'] as String).input(),
      lastSentLsn: (map['lastSentLsn'] as String).input(),
      lastSentTime: (map['lastSentTime'] as String).input(),
      mostRecentLinkError: (map['mostRecentLinkError'] as String).input(),
      partnerAuthCertValidity: (CertificateInfoResponse.fromMap((map['partnerAuthCertValidity'] as Map).cast<String, dynamic>())).input(),
      partnerReplicaId: (map['partnerReplicaId'] as String).input(),
      replicaState: (map['replicaState'] as String).input(),
      seedingProgress: (map['seedingProgress'] as String).input(),
      synchronizationHealth: (map['synchronizationHealth'] as String).input(),
    );
  }
}

