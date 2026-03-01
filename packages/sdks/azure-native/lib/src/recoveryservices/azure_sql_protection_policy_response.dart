// ignore_for_file: unused_element, unnecessary_cast

import 'long_term_retention_policy_response.dart';

/// Azure SQL workload-specific backup policy.
class AzureSqlProtectionPolicyResponse {
  /// This property will be used as the discriminator for deciding the specific types in the polymorphic chain of types.
  /// Expected value is 'AzureSql'.
  final String backupManagementType;
  /// Number of items associated with this policy.
  final int? protectedItemsCount;
  /// ResourceGuard Operation Requests
  final List<String>? resourceGuardOperationRequests;
  /// Retention policy details.
  final LongTermRetentionPolicyResponse? retentionPolicy;

  /// Creates a new [AzureSqlProtectionPolicyResponse].
  /// [backupManagementType] This property will be used as the discriminator for deciding the specific types in the polymorphic chain of types.
  /// [protectedItemsCount] Number of items associated with this policy.
  /// [resourceGuardOperationRequests] ResourceGuard Operation Requests
  /// [retentionPolicy] Retention policy details.
  AzureSqlProtectionPolicyResponse({
    required this.backupManagementType,
    this.protectedItemsCount,
    this.resourceGuardOperationRequests,
    this.retentionPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupManagementType': backupManagementType,
      'protectedItemsCount': ?protectedItemsCount,
      'resourceGuardOperationRequests': ?resourceGuardOperationRequests,
      'retentionPolicy': ?retentionPolicy == null ? null : retentionPolicy!.toMap(),
    };
  }

  factory AzureSqlProtectionPolicyResponse.fromMap(Map<String, dynamic> map) {
    return AzureSqlProtectionPolicyResponse(
      backupManagementType: map['backupManagementType'] as String,
      protectedItemsCount: map['protectedItemsCount'] == null ? null : map['protectedItemsCount'] as int,
      resourceGuardOperationRequests: map['resourceGuardOperationRequests'] == null ? null : (map['resourceGuardOperationRequests'] as List).cast<String>(),
      retentionPolicy: map['retentionPolicy'] == null ? null : LongTermRetentionPolicyResponse.fromMap((map['retentionPolicy'] as Map).cast<String, dynamic>()),
    );
  }
}

