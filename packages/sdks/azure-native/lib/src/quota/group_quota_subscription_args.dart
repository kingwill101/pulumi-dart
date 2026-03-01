// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_quota_group_quota_subscription_args_doc}
/// The set of arguments for GroupQuotaSubscription.
/// {@endtemplate}
/// {@macro pulumi_quota_group_quota_subscription_args_doc}
class GroupQuotaSubscriptionArgs {
  /// The GroupQuota name. The name should be unique for the provided context tenantId/MgId.
  final pulumi.Input<String> groupQuotaName;
  /// Management Group Id.
  final pulumi.Input<String> managementGroupId;

  /// Creates a new [GroupQuotaSubscriptionArgs].
  /// [groupQuotaName] The GroupQuota name. The name should be unique for the provided context tenantId/MgId.
  /// [managementGroupId] Management Group Id.
  GroupQuotaSubscriptionArgs({
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

  factory GroupQuotaSubscriptionArgs.fromMap(Map<String, dynamic> map) {
    return GroupQuotaSubscriptionArgs(
      groupQuotaName: pulumi.Output.create<String>(map['groupQuotaName'] as String),
      managementGroupId: pulumi.Output.create<String>(map['managementGroupId'] as String),
    );
  }
}

