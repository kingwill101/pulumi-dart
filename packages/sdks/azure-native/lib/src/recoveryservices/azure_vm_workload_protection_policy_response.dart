// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'settings_response.dart';
import 'sub_protection_policy_response.dart';

/// Azure VM (Mercury) workload-specific backup policy.
class AzureVmWorkloadProtectionPolicyResponse {
  /// This property will be used as the discriminator for deciding the specific types in the polymorphic chain of types.
  /// Expected value is 'AzureWorkload'.
  final pulumi.Input<String> backupManagementType;
  /// Fix the policy inconsistency
  final pulumi.Input<bool?>? makePolicyConsistent;
  /// Number of items associated with this policy.
  final pulumi.Input<int?>? protectedItemsCount;
  /// ResourceGuard Operation Requests
  final pulumi.Input<List<String>?>? resourceGuardOperationRequests;
  /// Common settings for the backup management
  final pulumi.Input<SettingsResponse?>? settings;
  /// List of sub-protection policies which includes schedule and retention
  final pulumi.Input<List<SubProtectionPolicyResponse>?>? subProtectionPolicy;
  /// Type of workload for the backup management
  final pulumi.Input<String?>? workLoadType;

  /// Creates a new [AzureVmWorkloadProtectionPolicyResponse].
  /// [backupManagementType] This property will be used as the discriminator for deciding the specific types in the polymorphic chain of types.
  /// [makePolicyConsistent] Fix the policy inconsistency
  /// [protectedItemsCount] Number of items associated with this policy.
  /// [resourceGuardOperationRequests] ResourceGuard Operation Requests
  /// [settings] Common settings for the backup management
  /// [subProtectionPolicy] List of sub-protection policies which includes schedule and retention
  /// [workLoadType] Type of workload for the backup management
  const AzureVmWorkloadProtectionPolicyResponse({
    required this.backupManagementType,
    this.makePolicyConsistent,
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
      'protectedItemsCount': ?protectedItemsCount,
      'resourceGuardOperationRequests': ?resourceGuardOperationRequests,
      'settings': ?pulumi.Input.mapOptionalInputValue<SettingsResponse, Map<String, dynamic>>(settings, (value) => value.toMap()),
      'subProtectionPolicy': ?pulumi.Input.mapOptionalInputValue<List<SubProtectionPolicyResponse>, List<Map<String, dynamic>>>(subProtectionPolicy, (value) => pulumi.Input.encodeList<SubProtectionPolicyResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'workLoadType': ?workLoadType,
    };
  }

  factory AzureVmWorkloadProtectionPolicyResponse.fromMap(Map<String, dynamic> map) {
    return AzureVmWorkloadProtectionPolicyResponse(
      backupManagementType: pulumi.Input.fromValue(map['backupManagementType'] as String),
      makePolicyConsistent: (() { final guardedValue = map['makePolicyConsistent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      protectedItemsCount: (() { final guardedValue = map['protectedItemsCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      resourceGuardOperationRequests: (() { final guardedValue = map['resourceGuardOperationRequests']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      settings: (() { final guardedValue = map['settings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      subProtectionPolicy: (() { final guardedValue = map['subProtectionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SubProtectionPolicyResponse>(guardedValue, (value) => SubProtectionPolicyResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      workLoadType: (() { final guardedValue = map['workLoadType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
