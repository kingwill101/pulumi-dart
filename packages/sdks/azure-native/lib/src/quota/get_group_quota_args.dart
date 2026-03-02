// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_quota_get_group_quota_args_doc}
/// Arguments for getGroupQuota.
/// {@endtemplate}
/// {@macro pulumi_quota_get_group_quota_args_doc}
class GetGroupQuotaArgs {
  /// The GroupQuota name. The name should be unique for the provided context tenantId/MgId.
  final pulumi.Input<String> groupQuotaName;
  /// Management Group Id.
  final pulumi.Input<String> managementGroupId;

  /// Creates a new [GetGroupQuotaArgs].
  /// [groupQuotaName] The GroupQuota name. The name should be unique for the provided context tenantId/MgId.
  /// [managementGroupId] Management Group Id.
  GetGroupQuotaArgs({
    required this.groupQuotaName,
    required this.managementGroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupQuotaName': groupQuotaName,
      'managementGroupId': managementGroupId,
    };
  }

  factory GetGroupQuotaArgs.fromMap(Map<String, dynamic> map) {
    return GetGroupQuotaArgs(
      groupQuotaName: (map['groupQuotaName'] as String).input(),
      managementGroupId: (map['managementGroupId'] as String).input(),
    );
  }
}

