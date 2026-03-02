// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'log_schedule_policy_response.dart';
import 'long_term_retention_policy_response.dart';
import 'snapshot_backup_additional_details_response.dart';
import 'tiering_policy_response.dart';

/// Sub-protection policy which includes schedule and retention
class SubProtectionPolicyResponse {
  /// Type of backup policy type
  final pulumi.Input<String>? policyType;
  /// Retention policy with the details on backup copy retention ranges.
  final pulumi.Input<LongTermRetentionPolicyResponse>? retentionPolicy;
  /// Backup schedule specified as part of backup policy.
  final pulumi.Input<LogSchedulePolicyResponse>? schedulePolicy;
  /// Snapshot Backup related fields for WorkloadType SaPHanaSystem
  final pulumi.Input<SnapshotBackupAdditionalDetailsResponse>? snapshotBackupAdditionalDetails;
  /// Tiering policy to automatically move RPs to another tier.
  /// Key is Target Tier, defined in RecoveryPointTierType enum.
  /// Tiering policy specifies the criteria to move RP to the target tier.
  final pulumi.Input<Map<String, TieringPolicyResponse>>? tieringPolicy;

  /// Creates a new [SubProtectionPolicyResponse].
  /// [policyType] Type of backup policy type
  /// [retentionPolicy] Retention policy with the details on backup copy retention ranges.
  /// [schedulePolicy] Backup schedule specified as part of backup policy.
  /// [snapshotBackupAdditionalDetails] Snapshot Backup related fields for WorkloadType SaPHanaSystem
  /// [tieringPolicy] Tiering policy to automatically move RPs to another tier.
  SubProtectionPolicyResponse({
    this.policyType,
    this.retentionPolicy,
    this.schedulePolicy,
    this.snapshotBackupAdditionalDetails,
    this.tieringPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policyType': ?policyType,
      'retentionPolicy': ?pulumi.Input.mapOptionalInputValue<LongTermRetentionPolicyResponse, Map<String, dynamic>>(retentionPolicy, (value) => value.toMap()),
      'schedulePolicy': ?pulumi.Input.mapOptionalInputValue<LogSchedulePolicyResponse, Map<String, dynamic>>(schedulePolicy, (value) => value.toMap()),
      'snapshotBackupAdditionalDetails': ?pulumi.Input.mapOptionalInputValue<SnapshotBackupAdditionalDetailsResponse, Map<String, dynamic>>(snapshotBackupAdditionalDetails, (value) => value.toMap()),
      'tieringPolicy': ?pulumi.Input.mapOptionalInputValue<Map<String, TieringPolicyResponse>, Map<String, Map<String, dynamic>>>(tieringPolicy, (value) => pulumi.Input.encodeMapValues<TieringPolicyResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory SubProtectionPolicyResponse.fromMap(Map<String, dynamic> map) {
    return SubProtectionPolicyResponse(
      policyType: map['policyType'] == null ? null : (map['policyType'] as String).input(),
      retentionPolicy: map['retentionPolicy'] == null ? null : (LongTermRetentionPolicyResponse.fromMap((map['retentionPolicy'] as Map).cast<String, dynamic>())).input(),
      schedulePolicy: map['schedulePolicy'] == null ? null : (LogSchedulePolicyResponse.fromMap((map['schedulePolicy'] as Map).cast<String, dynamic>())).input(),
      snapshotBackupAdditionalDetails: map['snapshotBackupAdditionalDetails'] == null ? null : (SnapshotBackupAdditionalDetailsResponse.fromMap((map['snapshotBackupAdditionalDetails'] as Map).cast<String, dynamic>())).input(),
      tieringPolicy: map['tieringPolicy'] == null ? null : (pulumi.Input.decodeMapValues<TieringPolicyResponse>(map['tieringPolicy'], (value) => TieringPolicyResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

