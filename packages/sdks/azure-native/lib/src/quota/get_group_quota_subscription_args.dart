// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_quota_get_group_quota_subscription_args_doc}
/// Arguments for getGroupQuotaSubscription.
/// {@endtemplate}
/// {@macro pulumi_quota_get_group_quota_subscription_args_doc}
class GetGroupQuotaSubscriptionArgs {
  /// The GroupQuota name. The name should be unique for the provided context tenantId/MgId.
  final pulumi.Input<String> groupQuotaName;
  /// Management Group Id.
  final pulumi.Input<String> managementGroupId;

  /// Creates a new [GetGroupQuotaSubscriptionArgs].
  /// [groupQuotaName] The GroupQuota name. The name should be unique for the provided context tenantId/MgId.
  /// [managementGroupId] Management Group Id.
  const GetGroupQuotaSubscriptionArgs({
    required this.groupQuotaName,
    required this.managementGroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupQuotaName': groupQuotaName,
      'managementGroupId': managementGroupId,
    };
  }

  factory GetGroupQuotaSubscriptionArgs.fromMap(Map<String, dynamic> map) {
    return GetGroupQuotaSubscriptionArgs(
      groupQuotaName: pulumi.Input.fromValue(map['groupQuotaName'] as String),
      managementGroupId: pulumi.Input.fromValue(map['managementGroupId'] as String),
    );
  }
}

