// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instant_rpadditional_details.dart';
import 'log_schedule_policy.dart';
import 'long_term_retention_policy.dart';
import 'tiering_policy.dart';

/// Defines the policy properties for virtual machine backup.
class VMBackupPolicyProperties {
  /// This property will be used as the discriminator for deciding the specific types in the polymorphic chain of types.
  /// Expected value is 'AzureIaasVM'.
  final pulumi.Input<String> backupManagementType;

  /// Instant recovery point additional details.
  final pulumi.Input<InstantRPAdditionalDetails>? instantRPDetails;

  /// Instant RP retention policy range in days
  final pulumi.Input<int>? instantRpRetentionRangeInDays;

  /// The name of the VM Backup policy.
  final pulumi.Input<String> name;

  /// The policy type.
  final pulumi.Input<String>? policyType;

  /// Number of items associated with this policy.
  final pulumi.Input<int>? protectedItemsCount;

  /// ResourceGuard Operation Requests
  final pulumi.Input<List<String>>? resourceGuardOperationRequests;

  /// Retention policy with the details on backup copy retention ranges.
  final pulumi.Input<LongTermRetentionPolicy>? retentionPolicy;

  /// Backup schedule specified as part of backup policy.
  final pulumi.Input<LogSchedulePolicy>? schedulePolicy;

  /// Tiering policy to automatically move RPs to another tier
  /// Key is Target Tier, defined in RecoveryPointTierType enum.
  /// Tiering policy specifies the criteria to move RP to the target tier.
  final pulumi.Input<Map<String, TieringPolicy>>? tieringPolicy;

  /// Time zone optional input as string. For example: "Pacific Standard Time".
  final pulumi.Input<String>? timeZone;

  /// Creates a new [VMBackupPolicyProperties].
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
  VMBackupPolicyProperties({
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
      'instantRPDetails':
          ?pulumi.Input.mapOptionalInputValue<
            InstantRPAdditionalDetails,
            Map<String, dynamic>
          >(instantRPDetails, (value) => value.toMap()),
      'instantRpRetentionRangeInDays': ?instantRpRetentionRangeInDays,
      'name': name,
      'policyType': ?policyType,
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
      'tieringPolicy':
          ?pulumi.Input.mapOptionalInputValue<
            Map<String, TieringPolicy>,
            Map<String, Map<String, dynamic>>
          >(
            tieringPolicy,
            (value) =>
                pulumi.Input.encodeMapValues<
                  TieringPolicy,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'timeZone': ?timeZone,
    };
  }

  factory VMBackupPolicyProperties.fromMap(Map<String, dynamic> map) {
    return VMBackupPolicyProperties(
      backupManagementType: pulumi.Input.fromValue(
        map['backupManagementType'] as String,
      ),
      instantRPDetails: (() {
        final guardedValue = map['instantRPDetails'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          InstantRPAdditionalDetails.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      instantRpRetentionRangeInDays: (() {
        final guardedValue = map['instantRpRetentionRangeInDays'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      policyType: (() {
        final guardedValue = map['policyType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
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
      tieringPolicy: (() {
        final guardedValue = map['tieringPolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeMapValues<TieringPolicy>(
            guardedValue,
            (value) =>
                TieringPolicy.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      timeZone: (() {
        final guardedValue = map['timeZone'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
