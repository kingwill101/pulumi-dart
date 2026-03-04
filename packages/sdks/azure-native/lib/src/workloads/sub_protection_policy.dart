// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'log_schedule_policy.dart';
import 'long_term_retention_policy.dart';
import 'snapshot_backup_additional_details.dart';
import 'tiering_policy.dart';

/// Sub-protection policy which includes schedule and retention
class SubProtectionPolicy {
  /// Type of backup policy type
  final pulumi.Input<String>? policyType;

  /// Retention policy with the details on backup copy retention ranges.
  final pulumi.Input<LongTermRetentionPolicy>? retentionPolicy;

  /// Backup schedule specified as part of backup policy.
  final pulumi.Input<LogSchedulePolicy>? schedulePolicy;

  /// Hana DB instance snapshot backup additional details.
  final pulumi.Input<SnapshotBackupAdditionalDetails>?
  snapshotBackupAdditionalDetails;

  /// Tiering policy to automatically move RPs to another tier.
  /// Key is Target Tier, defined in RecoveryPointTierType enum.
  /// Tiering policy specifies the criteria to move RP to the target tier.
  final pulumi.Input<Map<String, TieringPolicy>>? tieringPolicy;

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
      'retentionPolicy':
          ?pulumi.Input.mapOptionalInputValue<
            LongTermRetentionPolicy,
            Map<String, dynamic>
          >(retentionPolicy, (value) => value.toMap()),
      'schedulePolicy':
          ?pulumi.Input.mapOptionalInputValue<
            LogSchedulePolicy,
            Map<String, dynamic>
          >(schedulePolicy, (value) => value.toMap()),
      'snapshotBackupAdditionalDetails':
          ?pulumi.Input.mapOptionalInputValue<
            SnapshotBackupAdditionalDetails,
            Map<String, dynamic>
          >(snapshotBackupAdditionalDetails, (value) => value.toMap()),
      'tieringPolicy':
          ?pulumi.Input.mapOptionalInputValue<
            Map<String, TieringPolicy>,
            Map<String, Map<String, dynamic>>
          >(
            tieringPolicy,
            (value) =>
                pulumi.Input.encodeMapValues<
                  TieringPolicy,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory SubProtectionPolicy.fromMap(Map<String, dynamic> map) {
    return SubProtectionPolicy(
      policyType: (() {
        final guardedValue = map['policyType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      retentionPolicy: (() {
        final guardedValue = map['retentionPolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          LongTermRetentionPolicy.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      schedulePolicy: (() {
        final guardedValue = map['schedulePolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          LogSchedulePolicy.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      snapshotBackupAdditionalDetails: (() {
        final guardedValue = map['snapshotBackupAdditionalDetails'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SnapshotBackupAdditionalDetails.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      tieringPolicy: (() {
        final guardedValue = map['tieringPolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeMapValues<TieringPolicy>(
            guardedValue,
            (value) =>
                TieringPolicy.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
    );
  }
}
