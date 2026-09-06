// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instant_rpadditional_details.dart';
import 'tiering_policy.dart';

/// IaaS VM workload-specific backup policy.
class AzureIaaSVMProtectionPolicy {
  /// This property will be used as the discriminator for deciding the specific types in the polymorphic chain of types.
  /// Expected value is 'AzureIaasVM'.
  final pulumi.Input<String> backupManagementType;
  final pulumi.Input<InstantRPAdditionalDetails?>? instantRPDetails;
  /// Instant RP retention policy range in days
  final pulumi.Input<int?>? instantRpRetentionRangeInDays;
  final pulumi.Input<dynamic>? policyType;
  /// Number of items associated with this policy.
  final pulumi.Input<int?>? protectedItemsCount;
  /// ResourceGuard Operation Requests
  final pulumi.Input<List<String>?>? resourceGuardOperationRequests;
  /// Retention policy with the details on backup copy retention ranges.
  final pulumi.Input<dynamic>? retentionPolicy;
  /// Backup schedule specified as part of backup policy.
  final pulumi.Input<dynamic>? schedulePolicy;
  final pulumi.Input<dynamic>? snapshotConsistencyType;
  /// Tiering policy to automatically move RPs to another tier
  /// Key is Target Tier, defined in RecoveryPointTierType enum.
  /// Tiering policy specifies the criteria to move RP to the target tier.
  final pulumi.Input<Map<String, TieringPolicy>?>? tieringPolicy;
  /// TimeZone optional input as string. For example: TimeZone = "Pacific Standard Time".
  final pulumi.Input<String?>? timeZone;

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
  const AzureIaaSVMProtectionPolicy({
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
      'retentionPolicy': ?retentionPolicy,
      'schedulePolicy': ?schedulePolicy,
      'snapshotConsistencyType': ?snapshotConsistencyType,
      'tieringPolicy': ?pulumi.Input.mapOptionalInputValue<Map<String, TieringPolicy>, Map<String, Map<String, dynamic>>>(tieringPolicy, (value) => pulumi.Input.encodeMapValues<TieringPolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'timeZone': ?timeZone,
    };
  }

  factory AzureIaaSVMProtectionPolicy.fromMap(Map<String, dynamic> map) {
    return AzureIaaSVMProtectionPolicy(
      backupManagementType: pulumi.Input.fromValue(map['backupManagementType'] as String),
      instantRPDetails: (() { final guardedValue = map['instantRPDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstantRPAdditionalDetails.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      instantRpRetentionRangeInDays: (() { final guardedValue = map['instantRpRetentionRangeInDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      policyType: (() { final guardedValue = map['policyType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      protectedItemsCount: (() { final guardedValue = map['protectedItemsCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      resourceGuardOperationRequests: (() { final guardedValue = map['resourceGuardOperationRequests']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      retentionPolicy: (() { final guardedValue = map['retentionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      schedulePolicy: (() { final guardedValue = map['schedulePolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      snapshotConsistencyType: (() { final guardedValue = map['snapshotConsistencyType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      tieringPolicy: (() { final guardedValue = map['tieringPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<TieringPolicy>(guardedValue, (value) => TieringPolicy.fromMap((value as Map).cast<String, dynamic>()))); })(),
      timeZone: (() { final guardedValue = map['timeZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
