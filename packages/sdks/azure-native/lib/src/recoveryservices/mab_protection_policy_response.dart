// ignore_for_file: unused_element, unnecessary_cast

import 'log_schedule_policy_response.dart';
import 'long_term_retention_policy_response.dart';

/// Mab container-specific backup policy.
class MabProtectionPolicyResponse {
  /// This property will be used as the discriminator for deciding the specific types in the polymorphic chain of types.
  /// Expected value is 'MAB'.
  final String backupManagementType;
  /// Number of items associated with this policy.
  final int? protectedItemsCount;
  /// ResourceGuard Operation Requests
  final List<String>? resourceGuardOperationRequests;
  /// Retention policy details.
  final LongTermRetentionPolicyResponse? retentionPolicy;
  /// Backup schedule of backup policy.
  final LogSchedulePolicyResponse? schedulePolicy;

  /// Creates a new [MabProtectionPolicyResponse].
  /// [backupManagementType] This property will be used as the discriminator for deciding the specific types in the polymorphic chain of types.
  /// [protectedItemsCount] Number of items associated with this policy.
  /// [resourceGuardOperationRequests] ResourceGuard Operation Requests
  /// [retentionPolicy] Retention policy details.
  /// [schedulePolicy] Backup schedule of backup policy.
  MabProtectionPolicyResponse({
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
      'retentionPolicy': ?retentionPolicy == null ? null : retentionPolicy!.toMap(),
      'schedulePolicy': ?schedulePolicy == null ? null : schedulePolicy!.toMap(),
    };
  }

  factory MabProtectionPolicyResponse.fromMap(Map<String, dynamic> map) {
    return MabProtectionPolicyResponse(
      backupManagementType: map['backupManagementType'] as String,
      protectedItemsCount: map['protectedItemsCount'] == null ? null : map['protectedItemsCount'] as int,
      resourceGuardOperationRequests: map['resourceGuardOperationRequests'] == null ? null : (map['resourceGuardOperationRequests'] as List).cast<String>(),
      retentionPolicy: map['retentionPolicy'] == null ? null : LongTermRetentionPolicyResponse.fromMap((map['retentionPolicy'] as Map).cast<String, dynamic>()),
      schedulePolicy: map['schedulePolicy'] == null ? null : LogSchedulePolicyResponse.fromMap((map['schedulePolicy'] as Map).cast<String, dynamic>()),
    );
  }
}

