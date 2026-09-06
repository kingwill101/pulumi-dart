// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Mab container-specific backup policy.
class MabProtectionPolicy {
  /// This property will be used as the discriminator for deciding the specific types in the polymorphic chain of types.
  /// Expected value is 'MAB'.
  final pulumi.Input<String> backupManagementType;
  /// Number of items associated with this policy.
  final pulumi.Input<int?>? protectedItemsCount;
  /// ResourceGuard Operation Requests
  final pulumi.Input<List<String>?>? resourceGuardOperationRequests;
  /// Retention policy details.
  final pulumi.Input<dynamic>? retentionPolicy;
  /// Backup schedule of backup policy.
  final pulumi.Input<dynamic>? schedulePolicy;

  /// Creates a new [MabProtectionPolicy].
  /// [backupManagementType] This property will be used as the discriminator for deciding the specific types in the polymorphic chain of types.
  /// [protectedItemsCount] Number of items associated with this policy.
  /// [resourceGuardOperationRequests] ResourceGuard Operation Requests
  /// [retentionPolicy] Retention policy details.
  /// [schedulePolicy] Backup schedule of backup policy.
  const MabProtectionPolicy({
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
      'retentionPolicy': ?retentionPolicy,
      'schedulePolicy': ?schedulePolicy,
    };
  }

  factory MabProtectionPolicy.fromMap(Map<String, dynamic> map) {
    return MabProtectionPolicy(
      backupManagementType: pulumi.Input.fromValue(map['backupManagementType'] as String),
      protectedItemsCount: (() { final guardedValue = map['protectedItemsCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      resourceGuardOperationRequests: (() { final guardedValue = map['resourceGuardOperationRequests']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      retentionPolicy: (() { final guardedValue = map['retentionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      schedulePolicy: (() { final guardedValue = map['schedulePolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
