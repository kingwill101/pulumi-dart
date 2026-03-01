// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'log_schedule_policy.dart';
import 'long_term_retention_policy.dart';
import 'snapshot_backup_additional_details.dart';
import 'tiering_policy.dart';

/// Sub-protection policy which includes schedule and retention
class SubProtectionPolicy {
  /// Type of backup policy type
  final String? policyType;
  /// Retention policy with the details on backup copy retention ranges.
  final LongTermRetentionPolicy? retentionPolicy;
  /// Backup schedule specified as part of backup policy.
  final LogSchedulePolicy? schedulePolicy;
  /// Hana DB instance snapshot backup additional details.
  final SnapshotBackupAdditionalDetails? snapshotBackupAdditionalDetails;
  /// Tiering policy to automatically move RPs to another tier.
  /// Key is Target Tier, defined in RecoveryPointTierType enum.
  /// Tiering policy specifies the criteria to move RP to the target tier.
  final Map<String, TieringPolicy>? tieringPolicy;

  /// Creates a new [SubProtectionPolicy].
  /// [policyType] Type of backup policy type
  /// [retentionPolicy] Retention policy with the details on backup copy retention ranges.
  /// [schedulePolicy] Backup schedule specified as part of backup policy.
  /// [snapshotBackupAdditionalDetails] Hana DB instance snapshot backup additional details.
  /// [tieringPolicy] Tiering policy to automatically move RPs to another tier.
  SubProtectionPolicy({
    this.policyType,
    this.retentionPolicy,
    this.schedulePolicy,
    this.snapshotBackupAdditionalDetails,
    this.tieringPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policyType': ?policyType,
      'retentionPolicy': ?retentionPolicy == null ? null : retentionPolicy!.toMap(),
      'schedulePolicy': ?schedulePolicy == null ? null : schedulePolicy!.toMap(),
      'snapshotBackupAdditionalDetails': ?snapshotBackupAdditionalDetails == null ? null : snapshotBackupAdditionalDetails!.toMap(),
      'tieringPolicy': ?tieringPolicy == null ? null : pulumi.Input.encodeMapValues<TieringPolicy, Map<String, dynamic>>(tieringPolicy!, (value) => value.toMap()),
    };
  }

  factory SubProtectionPolicy.fromMap(Map<String, dynamic> map) {
    return SubProtectionPolicy(
      policyType: map['policyType'] == null ? null : map['policyType'] as String,
      retentionPolicy: map['retentionPolicy'] == null ? null : LongTermRetentionPolicy.fromMap((map['retentionPolicy'] as Map).cast<String, dynamic>()),
      schedulePolicy: map['schedulePolicy'] == null ? null : LogSchedulePolicy.fromMap((map['schedulePolicy'] as Map).cast<String, dynamic>()),
      snapshotBackupAdditionalDetails: map['snapshotBackupAdditionalDetails'] == null ? null : SnapshotBackupAdditionalDetails.fromMap((map['snapshotBackupAdditionalDetails'] as Map).cast<String, dynamic>()),
      tieringPolicy: map['tieringPolicy'] == null ? null : pulumi.Input.decodeMapValues<TieringPolicy>(map['tieringPolicy'], (value) => TieringPolicy.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

