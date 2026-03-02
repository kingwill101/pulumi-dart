// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'log_schedule_policy.dart';
import 'long_term_retention_policy.dart';

/// Mab container-specific backup policy.
class MabProtectionPolicy {
  /// This property will be used as the discriminator for deciding the specific types in the polymorphic chain of types.
  /// Expected value is 'MAB'.
  final pulumi.Input<String> backupManagementType;
  /// Number of items associated with this policy.
  final pulumi.Input<int>? protectedItemsCount;
  /// ResourceGuard Operation Requests
  final pulumi.Input<List<String>>? resourceGuardOperationRequests;
  /// Retention policy details.
  final pulumi.Input<LongTermRetentionPolicy>? retentionPolicy;
  /// Backup schedule of backup policy.
  final pulumi.Input<LogSchedulePolicy>? schedulePolicy;

  /// Creates a new [MabProtectionPolicy].
  /// [backupManagementType] This property will be used as the discriminator for deciding the specific types in the polymorphic chain of types.
  /// [protectedItemsCount] Number of items associated with this policy.
  /// [resourceGuardOperationRequests] ResourceGuard Operation Requests
  /// [retentionPolicy] Retention policy details.
  /// [schedulePolicy] Backup schedule of backup policy.
  MabProtectionPolicy({
    required this.backupManagementType,
    this.protectedItemsCount,
    this.resourceGuardOperationRequests,
    this.retentionPolicy,
    this.schedulePolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupManagementType': backupManagementType,
      'protectedItemsCount': ?protectedItemsCount,
      'resourceGuardOperationRequests': ?resourceGuardOperationRequests,
      'retentionPolicy': ?pulumi.Input.mapOptionalInputValue<LongTermRetentionPolicy, Map<String, dynamic>>(retentionPolicy, (value) => value.toMap()),
      'schedulePolicy': ?pulumi.Input.mapOptionalInputValue<LogSchedulePolicy, Map<String, dynamic>>(schedulePolicy, (value) => value.toMap()),
    };
  }

  factory MabProtectionPolicy.fromMap(Map<String, dynamic> map) {
    return MabProtectionPolicy(
      backupManagementType: (map['backupManagementType'] as String).input(),
      protectedItemsCount: map['protectedItemsCount'] == null ? null : (map['protectedItemsCount']! as int).input(),
      resourceGuardOperationRequests: map['resourceGuardOperationRequests'] == null ? null : ((map['resourceGuardOperationRequests']! as List).cast<String>()).input(),
      retentionPolicy: map['retentionPolicy'] == null ? null : (LongTermRetentionPolicy.fromMap((map['retentionPolicy']! as Map).cast<String, dynamic>())).input(),
      schedulePolicy: map['schedulePolicy'] == null ? null : (LogSchedulePolicy.fromMap((map['schedulePolicy']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

