// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instant_rpadditional_details.dart';
import 'log_schedule_policy.dart';
import 'long_term_retention_policy.dart';
import 'tiering_policy.dart';

/// IaaS VM workload-specific backup policy.
class AzureIaaSVMProtectionPolicy {
  /// This property will be used as the discriminator for deciding the specific types in the polymorphic chain of types.
  /// Expected value is 'AzureIaasVM'.
  final String backupManagementType;
  final InstantRPAdditionalDetails? instantRPDetails;
  /// Instant RP retention policy range in days
  final int? instantRpRetentionRangeInDays;
  final String? policyType;
  /// Number of items associated with this policy.
  final int? protectedItemsCount;
  /// ResourceGuard Operation Requests
  final List<String>? resourceGuardOperationRequests;
  /// Retention policy with the details on backup copy retention ranges.
  final LongTermRetentionPolicy? retentionPolicy;
  /// Backup schedule specified as part of backup policy.
  final LogSchedulePolicy? schedulePolicy;
  final String? snapshotConsistencyType;
  /// Tiering policy to automatically move RPs to another tier
  /// Key is Target Tier, defined in RecoveryPointTierType enum.
  /// Tiering policy specifies the criteria to move RP to the target tier.
  final Map<String, TieringPolicy>? tieringPolicy;
  /// TimeZone optional input as string. For example: TimeZone = "Pacific Standard Time".
  final String? timeZone;

  /// Creates a new [AzureIaaSVMProtectionPolicy].
  /// [backupManagementType] This property will be used as the discriminator for deciding the specific types in the polymorphic chain of types.
  /// [instantRPDetails] Optional.
  /// [instantRpRetentionRangeInDays] Instant RP retention policy range in days
  /// [policyType] Optional.
  /// [protectedItemsCount] Number of items associated with this policy.
  /// [resourceGuardOperationRequests] ResourceGuard Operation Requests
  /// [retentionPolicy] Retention policy with the details on backup copy retention ranges.
  /// [schedulePolicy] Backup schedule specified as part of backup policy.
  /// [snapshotConsistencyType] Optional.
  /// [tieringPolicy] Tiering policy to automatically move RPs to another tier
  /// [timeZone] TimeZone optional input as string. For example: TimeZone = "Pacific Standard Time".
  AzureIaaSVMProtectionPolicy({
    required this.backupManagementType,
    this.instantRPDetails,
    this.instantRpRetentionRangeInDays,
    this.policyType,
    this.protectedItemsCount,
    this.resourceGuardOperationRequests,
    this.retentionPolicy,
    this.schedulePolicy,
    this.snapshotConsistencyType,
    this.tieringPolicy,
    this.timeZone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupManagementType': backupManagementType,
      'instantRPDetails': ?instantRPDetails == null ? null : instantRPDetails!.toMap(),
      'instantRpRetentionRangeInDays': ?instantRpRetentionRangeInDays,
      'policyType': ?policyType,
      'protectedItemsCount': ?protectedItemsCount,
      'resourceGuardOperationRequests': ?resourceGuardOperationRequests,
      'retentionPolicy': ?retentionPolicy == null ? null : retentionPolicy!.toMap(),
      'schedulePolicy': ?schedulePolicy == null ? null : schedulePolicy!.toMap(),
      'snapshotConsistencyType': ?snapshotConsistencyType,
      'tieringPolicy': ?tieringPolicy == null ? null : pulumi.Input.encodeMapValues<TieringPolicy, Map<String, dynamic>>(tieringPolicy!, (value) => value.toMap()),
      'timeZone': ?timeZone,
    };
  }

  factory AzureIaaSVMProtectionPolicy.fromMap(Map<String, dynamic> map) {
    return AzureIaaSVMProtectionPolicy(
      backupManagementType: map['backupManagementType'] as String,
      instantRPDetails: map['instantRPDetails'] == null ? null : InstantRPAdditionalDetails.fromMap((map['instantRPDetails'] as Map).cast<String, dynamic>()),
      instantRpRetentionRangeInDays: map['instantRpRetentionRangeInDays'] == null ? null : map['instantRpRetentionRangeInDays'] as int,
      policyType: map['policyType'] == null ? null : map['policyType'] as String,
      protectedItemsCount: map['protectedItemsCount'] == null ? null : map['protectedItemsCount'] as int,
      resourceGuardOperationRequests: map['resourceGuardOperationRequests'] == null ? null : (map['resourceGuardOperationRequests'] as List).cast<String>(),
      retentionPolicy: map['retentionPolicy'] == null ? null : LongTermRetentionPolicy.fromMap((map['retentionPolicy'] as Map).cast<String, dynamic>()),
      schedulePolicy: map['schedulePolicy'] == null ? null : LogSchedulePolicy.fromMap((map['schedulePolicy'] as Map).cast<String, dynamic>()),
      snapshotConsistencyType: map['snapshotConsistencyType'] == null ? null : map['snapshotConsistencyType'] as String,
      tieringPolicy: map['tieringPolicy'] == null ? null : pulumi.Input.decodeMapValues<TieringPolicy>(map['tieringPolicy'], (value) => TieringPolicy.fromMap((value as Map).cast<String, dynamic>())),
      timeZone: map['timeZone'] == null ? null : map['timeZone'] as String,
    );
  }
}

