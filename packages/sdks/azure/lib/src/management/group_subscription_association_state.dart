// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering GroupSubscriptionAssociation resources.
class GroupSubscriptionAssociationState {
  /// The ID of the Management Group to associate the Subscription with. Changing this forces a new Management to be created.
  final pulumi.Input<String>? managementGroupId;
  /// The ID of the Subscription to be associated with the Management Group. Changing this forces a new Management to be created.
  final pulumi.Input<String>? subscriptionId;

  /// Creates a new [GroupSubscriptionAssociationState].
  /// [managementGroupId] The ID of the Management Group to associate the Subscription with. Changing this forces a new Management to be created.
  /// [subscriptionId] The ID of the Subscription to be associated with the Management Group. Changing this forces a new Management to be created.
  GroupSubscriptionAssociationState({
    pulumi.Output<String>? managementGroupId,
    pulumi.Output<String>? subscriptionId,
  }) :
      managementGroupId = pulumi.Input.asOptionalInput<String>(managementGroupId),
      subscriptionId = pulumi.Input.asOptionalInput<String>(subscriptionId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managementGroupId': ?managementGroupId,
      'subscriptionId': ?subscriptionId,
    };
  }

  factory GroupSubscriptionAssociationState.fromMap(Map<String, dynamic> map) {
    return GroupSubscriptionAssociationState(
      managementGroupId: map['managementGroupId'] == null ? null : pulumi.Output.create<String>(map['managementGroupId'] as String),
      subscriptionId: map['subscriptionId'] == null ? null : pulumi.Output.create<String>(map['subscriptionId'] as String),
    );
  }
}

