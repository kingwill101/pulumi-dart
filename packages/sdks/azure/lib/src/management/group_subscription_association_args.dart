// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_management_group_subscription_association_group_subscription_association_args_doc}
/// The set of arguments for GroupSubscriptionAssociation.
/// {@endtemplate}
/// {@macro pulumi_management_group_subscription_association_group_subscription_association_args_doc}
class GroupSubscriptionAssociationArgs {
  /// The ID of the Management Group to associate the Subscription with. Changing this forces a new Management to be created.
  final pulumi.Input<String> managementGroupId;
  /// The ID of the Subscription to be associated with the Management Group. Changing this forces a new Management to be created.
  final pulumi.Input<String> subscriptionId;

  /// Creates a new [GroupSubscriptionAssociationArgs].
  /// [managementGroupId] The ID of the Management Group to associate the Subscription with. Changing this forces a new Management to be created.
  /// [subscriptionId] The ID of the Subscription to be associated with the Management Group. Changing this forces a new Management to be created.
  GroupSubscriptionAssociationArgs({
    required this.managementGroupId,
    required this.subscriptionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managementGroupId': managementGroupId,
      'subscriptionId': subscriptionId,
    };
  }

  factory GroupSubscriptionAssociationArgs.fromMap(Map<String, dynamic> map) {
    return GroupSubscriptionAssociationArgs(
      managementGroupId: pulumi.Input.fromValue(map['managementGroupId'] as String),
      subscriptionId: pulumi.Input.fromValue(map['subscriptionId'] as String),
    );
  }
}

