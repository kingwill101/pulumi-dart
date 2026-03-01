// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instant_rpadditional_details_response.dart';
import 'log_schedule_policy_response.dart';
import 'long_term_retention_policy_response.dart';
import 'tiering_policy_response.dart';

/// Defines the policy properties for virtual machine backup.
class VMBackupPolicyPropertiesResponse {
  /// This property will be used as the discriminator for deciding the specific types in the polymorphic chain of types.
  /// Expected value is 'AzureIaasVM'.
  final String backupManagementType;
  /// Instant recovery point additional details.
  final InstantRPAdditionalDetailsResponse? instantRPDetails;
  /// Instant RP retention policy range in days
  final int? instantRpRetentionRangeInDays;
  /// The name of the VM Backup policy.
  final String name;
  /// The policy type.
  final String? policyType;
  /// Number of items associated with this policy.
  final int? protectedItemsCount;
  /// ResourceGuard Operation Requests
  final List<String>? resourceGuardOperationRequests;
  /// Retention policy with the details on backup copy retention ranges.
  final LongTermRetentionPolicyResponse? retentionPolicy;
  /// Backup schedule specified as part of backup policy.
  final LogSchedulePolicyResponse? schedulePolicy;
  /// Tiering policy to automatically move RPs to another tier
  /// Key is Target Tier, defined in RecoveryPointTierType enum.
  /// Tiering policy specifies the criteria to move RP to the target tier.
  final Map<String, TieringPolicyResponse>? tieringPolicy;
  /// Time zone optional input as string. For example: "Pacific Standard Time".
  final String? timeZone;

  /// Creates a new [VMBackupPolicyPropertiesResponse].
  /// [backupManagementType] This property will be used as the discriminator for deciding the specific types in the polymorphic chain of types.
  /// [instantRPDetails] Instant recovery point additional details.
  /// [instantRpRetentionRangeInDays] Instant RP retention policy range in days
  /// [name] The name of the VM Backup policy.
  /// [policyType] The policy type.
  /// [protectedItemsCount] Number of items associated with this policy.
  /// [resourceGuardOperationRequests] ResourceGuard Operation Requests
  /// [retentionPolicy] Retention policy with the details on backup copy retention ranges.
  /// [schedulePolicy] Backup schedule specified as part of backup policy.
  /// [tieringPolicy] Tiering policy to automatically move RPs to another tier
  /// [timeZone] Time zone optional input as string. For example: "Pacific Standard Time".
  VMBackupPolicyPropertiesResponse({
    required this.backupManagementType,
    this.instantRPDetails,
    this.instantRpRetentionRangeInDays,
    required this.name,
    this.policyType,
    this.protectedItemsCount,
    this.resourceGuardOperationRequests,
    this.retentionPolicy,
    this.schedulePolicy,
    this.tieringPolicy,
    this.timeZone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupManagementType': backupManagementType,
      'instantRPDetails': ?instantRPDetails == null ? null : instantRPDetails!.toMap(),
      'instantRpRetentionRangeInDays': ?instantRpRetentionRangeInDays,
      'name': name,
      'policyType': ?policyType,
      'protectedItemsCount': ?protectedItemsCount,
      'resourceGuardOperationRequests': ?resourceGuardOperationRequests,
      'retentionPolicy': ?retentionPolicy == null ? null : retentionPolicy!.toMap(),
      'schedulePolicy': ?schedulePolicy == null ? null : schedulePolicy!.toMap(),
      'tieringPolicy': ?tieringPolicy == null ? null : pulumi.Input.encodeMapValues<TieringPolicyResponse, Map<String, dynamic>>(tieringPolicy!, (value) => value.toMap()),
      'timeZone': ?timeZone,
    };
  }

  factory VMBackupPolicyPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return VMBackupPolicyPropertiesResponse(
      backupManagementType: map['backupManagementType'] as String,
      instantRPDetails: map['instantRPDetails'] == null ? null : InstantRPAdditionalDetailsResponse.fromMap((map['instantRPDetails'] as Map).cast<String, dynamic>()),
      instantRpRetentionRangeInDays: map['instantRpRetentionRangeInDays'] == null ? null : map['instantRpRetentionRangeInDays'] as int,
      name: map['name'] as String,
      policyType: map['policyType'] == null ? null : map['policyType'] as String,
      protectedItemsCount: map['protectedItemsCount'] == null ? null : map['protectedItemsCount'] as int,
      resourceGuardOperationRequests: map['resourceGuardOperationRequests'] == null ? null : (map['resourceGuardOperationRequests'] as List).cast<String>(),
      retentionPolicy: map['retentionPolicy'] == null ? null : LongTermRetentionPolicyResponse.fromMap((map['retentionPolicy'] as Map).cast<String, dynamic>()),
      schedulePolicy: map['schedulePolicy'] == null ? null : LogSchedulePolicyResponse.fromMap((map['schedulePolicy'] as Map).cast<String, dynamic>()),
      tieringPolicy: map['tieringPolicy'] == null ? null : pulumi.Input.decodeMapValues<TieringPolicyResponse>(map['tieringPolicy'], (value) => TieringPolicyResponse.fromMap((value as Map).cast<String, dynamic>())),
      timeZone: map['timeZone'] == null ? null : map['timeZone'] as String,
    );
  }
}

