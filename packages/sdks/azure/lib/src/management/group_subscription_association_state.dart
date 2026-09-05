// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering GroupSubscriptionAssociation resources.
class GroupSubscriptionAssociationState {
  /// The ID of the Management Group to associate the Subscription with. Changing this forces a new Management to be created.
  final pulumi.Input<String?>? managementGroupId;
  /// The ID of the Subscription to be associated with the Management Group. Changing this forces a new Management to be created.
  final pulumi.Input<String?>? subscriptionId;

  /// Creates a new [GroupSubscriptionAssociationState].
  /// [managementGroupId] The ID of the Management Group to associate the Subscription with. Changing this forces a new Management to be created.
  /// [subscriptionId] The ID of the Subscription to be associated with the Management Group. Changing this forces a new Management to be created.
  const GroupSubscriptionAssociationState({
    this.managementGroupId,
    this.subscriptionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managementGroupId': ?managementGroupId,
      'subscriptionId': ?subscriptionId,
    };
  }

  factory GroupSubscriptionAssociationState.fromMap(Map<String, dynamic> map) {
    return GroupSubscriptionAssociationState(
      managementGroupId: (() { final guardedValue = map['managementGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subscriptionId: (() { final guardedValue = map['subscriptionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
