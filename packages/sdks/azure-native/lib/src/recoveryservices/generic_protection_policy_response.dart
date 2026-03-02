// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sub_protection_policy_response.dart';

/// Azure VM (Mercury) workload-specific backup policy.
class GenericProtectionPolicyResponse {
  /// This property will be used as the discriminator for deciding the specific types in the polymorphic chain of types.
  /// Expected value is 'GenericProtectionPolicy'.
  final pulumi.Input<String> backupManagementType;
  /// Name of this policy's fabric.
  final pulumi.Input<String>? fabricName;
  /// Number of items associated with this policy.
  final pulumi.Input<int>? protectedItemsCount;
  /// ResourceGuard Operation Requests
  final pulumi.Input<List<String>>? resourceGuardOperationRequests;
  /// List of sub-protection policies which includes schedule and retention
  final pulumi.Input<List<SubProtectionPolicyResponse>>? subProtectionPolicy;
  /// TimeZone optional input as string. For example: TimeZone = "Pacific Standard Time".
  final pulumi.Input<String>? timeZone;

  /// Creates a new [GenericProtectionPolicyResponse].
  /// [backupManagementType] This property will be used as the discriminator for deciding the specific types in the polymorphic chain of types.
  /// [fabricName] Name of this policy's fabric.
  /// [protectedItemsCount] Number of items associated with this policy.
  /// [resourceGuardOperationRequests] ResourceGuard Operation Requests
  /// [subProtectionPolicy] List of sub-protection policies which includes schedule and retention
  /// [timeZone] TimeZone optional input as string. For example: TimeZone = "Pacific Standard Time".
  GenericProtectionPolicyResponse({
    required this.backupManagementType,
    this.fabricName,
    this.protectedItemsCount,
    this.resourceGuardOperationRequests,
    this.subProtectionPolicy,
    this.timeZone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupManagementType': backupManagementType,
      'fabricName': ?fabricName,
      'protectedItemsCount': ?protectedItemsCount,
      'resourceGuardOperationRequests': ?resourceGuardOperationRequests,
      'subProtectionPolicy': ?pulumi.Input.mapOptionalInputValue<List<SubProtectionPolicyResponse>, List<Map<String, dynamic>>>(subProtectionPolicy, (value) => pulumi.Input.encodeList<SubProtectionPolicyResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'timeZone': ?timeZone,
    };
  }

  factory GenericProtectionPolicyResponse.fromMap(Map<String, dynamic> map) {
    return GenericProtectionPolicyResponse(
      backupManagementType: (map['backupManagementType'] as String).input(),
      fabricName: map['fabricName'] == null ? null : (map['fabricName']! as String).input(),
      protectedItemsCount: map['protectedItemsCount'] == null ? null : (map['protectedItemsCount']! as int).input(),
      resourceGuardOperationRequests: map['resourceGuardOperationRequests'] == null ? null : ((map['resourceGuardOperationRequests']! as List).cast<String>()).input(),
      subProtectionPolicy: map['subProtectionPolicy'] == null ? null : (pulumi.Input.decodeList<SubProtectionPolicyResponse>(map['subProtectionPolicy']!, (value) => SubProtectionPolicyResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      timeZone: map['timeZone'] == null ? null : (map['timeZone']! as String).input(),
    );
  }
}

