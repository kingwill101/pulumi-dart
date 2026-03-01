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
    required pulumi.Output<String> groupQuotaName,
    required pulumi.Output<String> managementGroupId,
  }) :
      groupQuotaName = pulumi.Input.asInput<String>(groupQuotaName),
      managementGroupId = pulumi.Input.asInput<String>(managementGroupId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupQuotaName': groupQuotaName,
      'managementGroupId': managementGroupId,
    };
  }

  factory GetGroupQuotaArgs.fromMap(Map<String, dynamic> map) {
    return GetGroupQuotaArgs(
      groupQuotaName: pulumi.Output.create<String>(map['groupQuotaName'] as String),
      managementGroupId: pulumi.Output.create<String>(map['managementGroupId'] as String),
    );
  }
}

