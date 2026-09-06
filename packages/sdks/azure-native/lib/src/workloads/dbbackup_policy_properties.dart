// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'settings.dart';
import 'sub_protection_policy.dart';

/// Defines the policy properties for database backup.
class DBBackupPolicyProperties {
  /// This property will be used as the discriminator for deciding the specific types in the polymorphic chain of types.
  /// Expected value is 'AzureWorkload'.
  final pulumi.Input<String> backupManagementType;
  /// Fix the policy inconsistency
  final pulumi.Input<bool?>? makePolicyConsistent;
  /// The name of the DB backup policy.
  final pulumi.Input<String> name;
  /// Number of items associated with this policy.
  final pulumi.Input<int?>? protectedItemsCount;
  /// ResourceGuard Operation Requests
  final pulumi.Input<List<String>?>? resourceGuardOperationRequests;
  /// Common settings for the backup management
  final pulumi.Input<Settings?>? settings;
  /// List of sub-protection policies which includes schedule and retention
  final pulumi.Input<List<SubProtectionPolicy>?>? subProtectionPolicy;
  /// Type of workload for the backup management
  final pulumi.Input<dynamic>? workLoadType;

  /// Creates a new [DBBackupPolicyProperties].
  /// [backupManagementType] This property will be used as the discriminator for deciding the specific types in the polymorphic chain of types.
  /// [makePolicyConsistent] Fix the policy inconsistency
  /// [name] The name of the DB backup policy.
  /// [protectedItemsCount] Number of items associated with this policy.
  /// [resourceGuardOperationRequests] ResourceGuard Operation Requests
  /// [settings] Common settings for the backup management
  /// [subProtectionPolicy] List of sub-protection policies which includes schedule and retention
  /// [workLoadType] Type of workload for the backup management
  const DBBackupPolicyProperties({
    required this.backupManagementType,
    this.makePolicyConsistent,
    required this.name,
    this.protectedItemsCount,
    this.resourceGuardOperationRequests,
    this.settings,
    this.subProtectionPolicy,
    this.workLoadType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupManagementType': backupManagementType,
      'makePolicyConsistent': ?makePolicyConsistent,
      'name': name,
      'protectedItemsCount': ?protectedItemsCount,
      'resourceGuardOperationRequests': ?resourceGuardOperationRequests,
      'settings': ?pulumi.Input.mapOptionalInputValue<Settings, Map<String, dynamic>>(settings, (value) => value.toMap()),
      'subProtectionPolicy': ?pulumi.Input.mapOptionalInputValue<List<SubProtectionPolicy>, List<Map<String, dynamic>>>(subProtectionPolicy, (value) => pulumi.Input.encodeList<SubProtectionPolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'workLoadType': ?workLoadType,
    };
  }

  factory DBBackupPolicyProperties.fromMap(Map<String, dynamic> map) {
    return DBBackupPolicyProperties(
      backupManagementType: pulumi.Input.fromValue(map['backupManagementType'] as String),
      makePolicyConsistent: (() { final guardedValue = map['makePolicyConsistent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      protectedItemsCount: (() { final guardedValue = map['protectedItemsCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      resourceGuardOperationRequests: (() { final guardedValue = map['resourceGuardOperationRequests']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      settings: (() { final guardedValue = map['settings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Settings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      subProtectionPolicy: (() { final guardedValue = map['subProtectionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SubProtectionPolicy>(guardedValue, (value) => SubProtectionPolicy.fromMap((value as Map).cast<String, dynamic>()))); })(),
      workLoadType: (() { final guardedValue = map['workLoadType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
