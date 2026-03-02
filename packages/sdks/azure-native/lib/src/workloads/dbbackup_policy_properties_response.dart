// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'settings_response.dart';
import 'sub_protection_policy_response.dart';

/// Defines the policy properties for database backup.
class DBBackupPolicyPropertiesResponse {
  /// This property will be used as the discriminator for deciding the specific types in the polymorphic chain of types.
  /// Expected value is 'AzureWorkload'.
  final pulumi.Input<String> backupManagementType;
  /// Fix the policy inconsistency
  final pulumi.Input<bool>? makePolicyConsistent;
  /// The name of the DB backup policy.
  final pulumi.Input<String> name;
  /// Number of items associated with this policy.
  final pulumi.Input<int>? protectedItemsCount;
  /// ResourceGuard Operation Requests
  final pulumi.Input<List<String>>? resourceGuardOperationRequests;
  /// Common settings for the backup management
  final pulumi.Input<SettingsResponse>? settings;
  /// List of sub-protection policies which includes schedule and retention
  final pulumi.Input<List<SubProtectionPolicyResponse>>? subProtectionPolicy;
  /// Type of workload for the backup management
  final pulumi.Input<String>? workLoadType;

  /// Creates a new [DBBackupPolicyPropertiesResponse].
  /// [backupManagementType] This property will be used as the discriminator for deciding the specific types in the polymorphic chain of types.
  /// [makePolicyConsistent] Fix the policy inconsistency
  /// [name] The name of the DB backup policy.
  /// [protectedItemsCount] Number of items associated with this policy.
  /// [resourceGuardOperationRequests] ResourceGuard Operation Requests
  /// [settings] Common settings for the backup management
  /// [subProtectionPolicy] List of sub-protection policies which includes schedule and retention
  /// [workLoadType] Type of workload for the backup management
  DBBackupPolicyPropertiesResponse({
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
      'settings': ?pulumi.Input.mapOptionalInputValue<SettingsResponse, Map<String, dynamic>>(settings, (value) => value.toMap()),
      'subProtectionPolicy': ?pulumi.Input.mapOptionalInputValue<List<SubProtectionPolicyResponse>, List<Map<String, dynamic>>>(subProtectionPolicy, (value) => pulumi.Input.encodeList<SubProtectionPolicyResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'workLoadType': ?workLoadType,
    };
  }

  factory DBBackupPolicyPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return DBBackupPolicyPropertiesResponse(
      backupManagementType: (map['backupManagementType'] as String).input(),
      makePolicyConsistent: map['makePolicyConsistent'] == null ? null : (map['makePolicyConsistent'] as bool).input(),
      name: (map['name'] as String).input(),
      protectedItemsCount: map['protectedItemsCount'] == null ? null : (map['protectedItemsCount'] as int).input(),
      resourceGuardOperationRequests: map['resourceGuardOperationRequests'] == null ? null : ((map['resourceGuardOperationRequests'] as List).cast<String>()).input(),
      settings: map['settings'] == null ? null : (SettingsResponse.fromMap((map['settings'] as Map).cast<String, dynamic>())).input(),
      subProtectionPolicy: map['subProtectionPolicy'] == null ? null : (pulumi.Input.decodeList<SubProtectionPolicyResponse>(map['subProtectionPolicy'], (value) => SubProtectionPolicyResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      workLoadType: map['workLoadType'] == null ? null : (map['workLoadType'] as String).input(),
    );
  }
}

