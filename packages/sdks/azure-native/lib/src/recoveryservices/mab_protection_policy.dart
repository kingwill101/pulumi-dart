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
    };
  }

  factory MabProtectionPolicy.fromMap(Map<String, dynamic> map) {
    return MabProtectionPolicy(
      backupManagementType: pulumi.Input.fromValue(
        map['backupManagementType'] as String,
      ),
      protectedItemsCount: (() {
        final guardedValue = map['protectedItemsCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      resourceGuardOperationRequests: (() {
        final guardedValue = map['resourceGuardOperationRequests'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
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
    );
  }
}
