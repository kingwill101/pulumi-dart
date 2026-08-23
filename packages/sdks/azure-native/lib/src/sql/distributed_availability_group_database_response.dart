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
  const DistributedAvailabilityGroupDatabaseResponse({
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
      connectedState: pulumi.Input.fromValue(map['connectedState'] as String),
      databaseName: (() { final guardedValue = map['databaseName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceRedoReplicationLagSeconds: pulumi.Input.fromValue(map['instanceRedoReplicationLagSeconds'] as int),
      instanceReplicaId: pulumi.Input.fromValue(map['instanceReplicaId'] as String),
      instanceSendReplicationLagSeconds: pulumi.Input.fromValue(map['instanceSendReplicationLagSeconds'] as int),
      lastBackupLsn: pulumi.Input.fromValue(map['lastBackupLsn'] as String),
      lastBackupTime: pulumi.Input.fromValue(map['lastBackupTime'] as String),
      lastCommitLsn: pulumi.Input.fromValue(map['lastCommitLsn'] as String),
      lastCommitTime: pulumi.Input.fromValue(map['lastCommitTime'] as String),
      lastHardenedLsn: pulumi.Input.fromValue(map['lastHardenedLsn'] as String),
      lastHardenedTime: pulumi.Input.fromValue(map['lastHardenedTime'] as String),
      lastReceivedLsn: pulumi.Input.fromValue(map['lastReceivedLsn'] as String),
      lastReceivedTime: pulumi.Input.fromValue(map['lastReceivedTime'] as String),
      lastSentLsn: pulumi.Input.fromValue(map['lastSentLsn'] as String),
      lastSentTime: pulumi.Input.fromValue(map['lastSentTime'] as String),
      mostRecentLinkError: pulumi.Input.fromValue(map['mostRecentLinkError'] as String),
      partnerAuthCertValidity: pulumi.Input.fromValue(CertificateInfoResponse.fromMap((map['partnerAuthCertValidity']! as Map).cast<String, dynamic>())),
      partnerReplicaId: pulumi.Input.fromValue(map['partnerReplicaId'] as String),
      replicaState: pulumi.Input.fromValue(map['replicaState'] as String),
      seedingProgress: pulumi.Input.fromValue(map['seedingProgress'] as String),
      synchronizationHealth: pulumi.Input.fromValue(map['synchronizationHealth'] as String),
    );
  }
}
