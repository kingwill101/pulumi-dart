// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instant_rpadditional_details_response.dart';
import 'tiering_policy_response.dart';

/// IaaS VM workload-specific backup policy.
class AzureIaaSVMProtectionPolicyResponse {
  /// This property will be used as the discriminator for deciding the specific types in the polymorphic chain of types.
  /// Expected value is 'AzureIaasVM'.
  final pulumi.Input<String> backupManagementType;
  final pulumi.Input<InstantRPAdditionalDetailsResponse?>? instantRPDetails;
  /// Instant RP retention policy range in days
  final pulumi.Input<int?>? instantRpRetentionRangeInDays;
  final pulumi.Input<String?>? policyType;
  /// Number of items associated with this policy.
  final pulumi.Input<int?>? protectedItemsCount;
  /// ResourceGuard Operation Requests
  final pulumi.Input<List<String>?>? resourceGuardOperationRequests;
  /// Retention policy with the details on backup copy retention ranges.
  final pulumi.Input<dynamic>? retentionPolicy;
  /// Backup schedule specified as part of backup policy.
  final pulumi.Input<dynamic>? schedulePolicy;
  final pulumi.Input<String?>? snapshotConsistencyType;
  /// Tiering policy to automatically move RPs to another tier
  /// Key is Target Tier, defined in RecoveryPointTierType enum.
  /// Tiering policy specifies the criteria to move RP to the target tier.
  final pulumi.Input<Map<String, TieringPolicyResponse>?>? tieringPolicy;
  /// TimeZone optional input as string. For example: TimeZone = "Pacific Standard Time".
  final pulumi.Input<String?>? timeZone;

  /// Creates a new [AzureIaaSVMProtectionPolicyResponse].
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
  const AzureIaaSVMProtectionPolicyResponse({
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
      'instantRPDetails': ?pulumi.Input.mapOptionalInputValue<InstantRPAdditionalDetailsResponse, Map<String, dynamic>>(instantRPDetails, (value) => value.toMap()),
      'instantRpRetentionRangeInDays': ?instantRpRetentionRangeInDays,
      'policyType': ?policyType,
      'protectedItemsCount': ?protectedItemsCount,
      'resourceGuardOperationRequests': ?resourceGuardOperationRequests,
      'retentionPolicy': ?retentionPolicy,
      'schedulePolicy': ?schedulePolicy,
      'snapshotConsistencyType': ?snapshotConsistencyType,
      'tieringPolicy': ?pulumi.Input.mapOptionalInputValue<Map<String, TieringPolicyResponse>, Map<String, Map<String, dynamic>>>(tieringPolicy, (value) => pulumi.Input.encodeMapValues<TieringPolicyResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'timeZone': ?timeZone,
    };
  }

  factory AzureIaaSVMProtectionPolicyResponse.fromMap(Map<String, dynamic> map) {
    return AzureIaaSVMProtectionPolicyResponse(
      backupManagementType: pulumi.Input.fromValue(map['backupManagementType'] as String),
      instantRPDetails: (() { final guardedValue = map['instantRPDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstantRPAdditionalDetailsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      instantRpRetentionRangeInDays: (() { final guardedValue = map['instantRpRetentionRangeInDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      policyType: (() { final guardedValue = map['policyType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protectedItemsCount: (() { final guardedValue = map['protectedItemsCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      resourceGuardOperationRequests: (() { final guardedValue = map['resourceGuardOperationRequests']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      retentionPolicy: (() { final guardedValue = map['retentionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      schedulePolicy: (() { final guardedValue = map['schedulePolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      snapshotConsistencyType: (() { final guardedValue = map['snapshotConsistencyType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tieringPolicy: (() { final guardedValue = map['tieringPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<TieringPolicyResponse>(guardedValue, (value) => TieringPolicyResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      timeZone: (() { final guardedValue = map['timeZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
