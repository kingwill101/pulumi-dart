// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'log_schedule_policy_response.dart';
import 'long_term_retention_policy_response.dart';
import 'vault_retention_policy_response.dart';

/// AzureStorage backup policy.
class AzureFileShareProtectionPolicyResponse {
  /// This property will be used as the discriminator for deciding the specific types in the polymorphic chain of types.
  /// Expected value is 'AzureStorage'.
  final pulumi.Input<String> backupManagementType;
  /// Number of items associated with this policy.
  final pulumi.Input<int>? protectedItemsCount;
  /// ResourceGuard Operation Requests
  final pulumi.Input<List<String>>? resourceGuardOperationRequests;
  /// Retention policy with the details on backup copy retention ranges.
  final pulumi.Input<LongTermRetentionPolicyResponse>? retentionPolicy;
  /// Backup schedule specified as part of backup policy.
  final pulumi.Input<LogSchedulePolicyResponse>? schedulePolicy;
  /// TimeZone optional input as string. For example: TimeZone = "Pacific Standard Time".
  final pulumi.Input<String>? timeZone;
  /// Retention policy with the details on hardened backup copy retention ranges.
  final pulumi.Input<VaultRetentionPolicyResponse>? vaultRetentionPolicy;
  /// Type of workload for the backup management
  final pulumi.Input<String>? workLoadType;

  /// Creates a new [AzureFileShareProtectionPolicyResponse].
  /// [backupManagementType] This property will be used as the discriminator for deciding the specific types in the polymorphic chain of types.
  /// [protectedItemsCount] Number of items associated with this policy.
  /// [resourceGuardOperationRequests] ResourceGuard Operation Requests
  /// [retentionPolicy] Retention policy with the details on backup copy retention ranges.
  /// [schedulePolicy] Backup schedule specified as part of backup policy.
  /// [timeZone] TimeZone optional input as string. For example: TimeZone = "Pacific Standard Time".
  /// [vaultRetentionPolicy] Retention policy with the details on hardened backup copy retention ranges.
  /// [workLoadType] Type of workload for the backup management
  AzureFileShareProtectionPolicyResponse({
    required this.backupManagementType,
    this.protectedItemsCount,
    this.resourceGuardOperationRequests,
    this.retentionPolicy,
    this.schedulePolicy,
    this.timeZone,
    this.vaultRetentionPolicy,
    this.workLoadType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupManagementType': backupManagementType,
      'protectedItemsCount': ?protectedItemsCount,
      'resourceGuardOperationRequests': ?resourceGuardOperationRequests,
      'retentionPolicy': ?pulumi.Input.mapOptionalInputValue<LongTermRetentionPolicyResponse, Map<String, dynamic>>(retentionPolicy, (value) => value.toMap()),
      'schedulePolicy': ?pulumi.Input.mapOptionalInputValue<LogSchedulePolicyResponse, Map<String, dynamic>>(schedulePolicy, (value) => value.toMap()),
      'timeZone': ?timeZone,
      'vaultRetentionPolicy': ?pulumi.Input.mapOptionalInputValue<VaultRetentionPolicyResponse, Map<String, dynamic>>(vaultRetentionPolicy, (value) => value.toMap()),
      'workLoadType': ?workLoadType,
    };
  }

  factory AzureFileShareProtectionPolicyResponse.fromMap(Map<String, dynamic> map) {
    return AzureFileShareProtectionPolicyResponse(
      backupManagementType: (map['backupManagementType'] as String).input(),
      protectedItemsCount: map['protectedItemsCount'] == null ? null : (map['protectedItemsCount'] as int).input(),
      resourceGuardOperationRequests: map['resourceGuardOperationRequests'] == null ? null : ((map['resourceGuardOperationRequests'] as List).cast<String>()).input(),
      retentionPolicy: map['retentionPolicy'] == null ? null : (LongTermRetentionPolicyResponse.fromMap((map['retentionPolicy'] as Map).cast<String, dynamic>())).input(),
      schedulePolicy: map['schedulePolicy'] == null ? null : (LogSchedulePolicyResponse.fromMap((map['schedulePolicy'] as Map).cast<String, dynamic>())).input(),
      timeZone: map['timeZone'] == null ? null : (map['timeZone'] as String).input(),
      vaultRetentionPolicy: map['vaultRetentionPolicy'] == null ? null : (VaultRetentionPolicyResponse.fromMap((map['vaultRetentionPolicy'] as Map).cast<String, dynamic>())).input(),
      workLoadType: map['workLoadType'] == null ? null : (map['workLoadType'] as String).input(),
    );
  }
}

