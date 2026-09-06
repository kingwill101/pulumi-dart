// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vault_retention_policy_response.dart';

/// AzureStorage backup policy.
class AzureFileShareProtectionPolicyResponse {
  /// This property will be used as the discriminator for deciding the specific types in the polymorphic chain of types.
  /// Expected value is 'AzureStorage'.
  final pulumi.Input<String> backupManagementType;
  /// Number of items associated with this policy.
  final pulumi.Input<int?>? protectedItemsCount;
  /// ResourceGuard Operation Requests
  final pulumi.Input<List<String>?>? resourceGuardOperationRequests;
  /// Retention policy with the details on backup copy retention ranges.
  final pulumi.Input<dynamic>? retentionPolicy;
  /// Backup schedule specified as part of backup policy.
  final pulumi.Input<dynamic>? schedulePolicy;
  /// TimeZone optional input as string. For example: TimeZone = "Pacific Standard Time".
  final pulumi.Input<String?>? timeZone;
  /// Retention policy with the details on hardened backup copy retention ranges.
  final pulumi.Input<VaultRetentionPolicyResponse?>? vaultRetentionPolicy;
  /// Type of workload for the backup management
  final pulumi.Input<String?>? workLoadType;

  /// Creates a new [AzureFileShareProtectionPolicyResponse].
  /// [backupManagementType] This property will be used as the discriminator for deciding the specific types in the polymorphic chain of types.
  /// [protectedItemsCount] Number of items associated with this policy.
  /// [resourceGuardOperationRequests] ResourceGuard Operation Requests
  /// [retentionPolicy] Retention policy with the details on backup copy retention ranges.
  /// [schedulePolicy] Backup schedule specified as part of backup policy.
  /// [timeZone] TimeZone optional input as string. For example: TimeZone = "Pacific Standard Time".
  /// [vaultRetentionPolicy] Retention policy with the details on hardened backup copy retention ranges.
  /// [workLoadType] Type of workload for the backup management
  const AzureFileShareProtectionPolicyResponse({
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
      'retentionPolicy': ?retentionPolicy,
      'schedulePolicy': ?schedulePolicy,
      'timeZone': ?timeZone,
      'vaultRetentionPolicy': ?pulumi.Input.mapOptionalInputValue<VaultRetentionPolicyResponse, Map<String, dynamic>>(vaultRetentionPolicy, (value) => value.toMap()),
      'workLoadType': ?workLoadType,
    };
  }

  factory AzureFileShareProtectionPolicyResponse.fromMap(Map<String, dynamic> map) {
    return AzureFileShareProtectionPolicyResponse(
      backupManagementType: pulumi.Input.fromValue(map['backupManagementType'] as String),
      protectedItemsCount: (() { final guardedValue = map['protectedItemsCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      resourceGuardOperationRequests: (() { final guardedValue = map['resourceGuardOperationRequests']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      retentionPolicy: (() { final guardedValue = map['retentionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      schedulePolicy: (() { final guardedValue = map['schedulePolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      timeZone: (() { final guardedValue = map['timeZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vaultRetentionPolicy: (() { final guardedValue = map['vaultRetentionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VaultRetentionPolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      workLoadType: (() { final guardedValue = map['workLoadType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
