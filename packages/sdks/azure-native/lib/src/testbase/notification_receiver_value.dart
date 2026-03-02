// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'distribution_group_list_receiver_value.dart';
import 'subscription_receiver_value.dart';
import 'user_object_receiver_value.dart';

/// A notification event receiver value.
class NotificationReceiverValue {
  /// The user object receiver value.
  final pulumi.Input<DistributionGroupListReceiverValue>? distributionGroupListReceiverValue;
  /// The user object receiver value.
  final pulumi.Input<SubscriptionReceiverValue>? subscriptionReceiverValue;
  /// The user object receiver value.
  final pulumi.Input<UserObjectReceiverValue>? userObjectReceiverValue;

  /// Creates a new [NotificationReceiverValue].
  /// [distributionGroupListReceiverValue] The user object receiver value.
  /// [subscriptionReceiverValue] The user object receiver value.
  /// [userObjectReceiverValue] The user object receiver value.
  NotificationReceiverValue({
    this.distributionGroupListReceiverValue,
    this.subscriptionReceiverValue,
    this.userObjectReceiverValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'distributionGroupListReceiverValue': ?pulumi.Input.mapOptionalInputValue<DistributionGroupListReceiverValue, Map<String, dynamic>>(distributionGroupListReceiverValue, (value) => value.toMap()),
      'subscriptionReceiverValue': ?pulumi.Input.mapOptionalInputValue<SubscriptionReceiverValue, Map<String, dynamic>>(subscriptionReceiverValue, (value) => value.toMap()),
      'userObjectReceiverValue': ?pulumi.Input.mapOptionalInputValue<UserObjectReceiverValue, Map<String, dynamic>>(userObjectReceiverValue, (value) => value.toMap()),
    };
  }

  factory NotificationReceiverValue.fromMap(Map<String, dynamic> map) {
    return NotificationReceiverValue(
      distributionGroupListReceiverValue: map['distributionGroupListReceiverValue'] == null ? null : (DistributionGroupListReceiverValue.fromMap((map['distributionGroupListReceiverValue'] as Map).cast<String, dynamic>())).input(),
      subscriptionReceiverValue: map['subscriptionReceiverValue'] == null ? null : (SubscriptionReceiverValue.fromMap((map['subscriptionReceiverValue'] as Map).cast<String, dynamic>())).input(),
      userObjectReceiverValue: map['userObjectReceiverValue'] == null ? null : (UserObjectReceiverValue.fromMap((map['userObjectReceiverValue'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

