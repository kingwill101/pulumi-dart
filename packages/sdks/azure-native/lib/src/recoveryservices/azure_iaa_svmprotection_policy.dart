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
  final pulumi.Input<String> backupManagementType;
  final pulumi.Input<InstantRPAdditionalDetails>? instantRPDetails;
  /// Instant RP retention policy range in days
  final pulumi.Input<int>? instantRpRetentionRangeInDays;
  final pulumi.Input<String>? policyType;
  /// Number of items associated with this policy.
  final pulumi.Input<int>? protectedItemsCount;
  /// ResourceGuard Operation Requests
  final pulumi.Input<List<String>>? resourceGuardOperationRequests;
  /// Retention policy with the details on backup copy retention ranges.
  final pulumi.Input<LongTermRetentionPolicy>? retentionPolicy;
  /// Backup schedule specified as part of backup policy.
  final pulumi.Input<LogSchedulePolicy>? schedulePolicy;
  final pulumi.Input<String>? snapshotConsistencyType;
  /// Tiering policy to automatically move RPs to another tier
  /// Key is Target Tier, defined in RecoveryPointTierType enum.
  /// Tiering policy specifies the criteria to move RP to the target tier.
  final pulumi.Input<Map<String, TieringPolicy>>? tieringPolicy;
  /// TimeZone optional input as string. For example: TimeZone = "Pacific Standard Time".
  final pulumi.Input<String>? timeZone;

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
      'instantRPDetails': ?pulumi.Input.mapOptionalInputValue<InstantRPAdditionalDetails, Map<String, dynamic>>(instantRPDetails, (value) => value.toMap()),
      'instantRpRetentionRangeInDays': ?instantRpRetentionRangeInDays,
      'policyType': ?policyType,
      'protectedItemsCount': ?protectedItemsCount,
      'resourceGuardOperationRequests': ?resourceGuardOperationRequests,
      'retentionPolicy': ?pulumi.Input.mapOptionalInputValue<LongTermRetentionPolicy, Map<String, dynamic>>(retentionPolicy, (value) => value.toMap()),
      'schedulePolicy': ?pulumi.Input.mapOptionalInputValue<LogSchedulePolicy, Map<String, dynamic>>(schedulePolicy, (value) => value.toMap()),
      'snapshotConsistencyType': ?snapshotConsistencyType,
      'tieringPolicy': ?pulumi.Input.mapOptionalInputValue<Map<String, TieringPolicy>, Map<String, Map<String, dynamic>>>(tieringPolicy, (value) => pulumi.Input.encodeMapValues<TieringPolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'timeZone': ?timeZone,
    };
  }

  factory AzureIaaSVMProtectionPolicy.fromMap(Map<String, dynamic> map) {
    return AzureIaaSVMProtectionPolicy(
      backupManagementType: (map['backupManagementType'] as String).input(),
      instantRPDetails: map['instantRPDetails'] == null ? null : (InstantRPAdditionalDetails.fromMap((map['instantRPDetails']! as Map).cast<String, dynamic>())).input(),
      instantRpRetentionRangeInDays: map['instantRpRetentionRangeInDays'] == null ? null : (map['instantRpRetentionRangeInDays']! as int).input(),
      policyType: map['policyType'] == null ? null : (map['policyType']! as String).input(),
      protectedItemsCount: map['protectedItemsCount'] == null ? null : (map['protectedItemsCount']! as int).input(),
      resourceGuardOperationRequests: map['resourceGuardOperationRequests'] == null ? null : ((map['resourceGuardOperationRequests']! as List).cast<String>()).input(),
      retentionPolicy: map['retentionPolicy'] == null ? null : (LongTermRetentionPolicy.fromMap((map['retentionPolicy']! as Map).cast<String, dynamic>())).input(),
      schedulePolicy: map['schedulePolicy'] == null ? null : (LogSchedulePolicy.fromMap((map['schedulePolicy']! as Map).cast<String, dynamic>())).input(),
      snapshotConsistencyType: map['snapshotConsistencyType'] == null ? null : (map['snapshotConsistencyType']! as String).input(),
      tieringPolicy: map['tieringPolicy'] == null ? null : (pulumi.Input.decodeMapValues<TieringPolicy>(map['tieringPolicy']!, (value) => TieringPolicy.fromMap((value as Map).cast<String, dynamic>()))).input(),
      timeZone: map['timeZone'] == null ? null : (map['timeZone']! as String).input(),
    );
  }
}

