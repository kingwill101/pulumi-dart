// ignore_for_file: unused_element, unnecessary_cast

import 'distribution_group_list_receiver_value_response.dart';
import 'subscription_receiver_value_response.dart';
import 'user_object_receiver_value_response.dart';

/// A notification event receiver value.
class NotificationReceiverValueResponse {
  /// The user object receiver value.
  final DistributionGroupListReceiverValueResponse? distributionGroupListReceiverValue;
  /// The user object receiver value.
  final SubscriptionReceiverValueResponse? subscriptionReceiverValue;
  /// The user object receiver value.
  final UserObjectReceiverValueResponse? userObjectReceiverValue;

  /// Creates a new [NotificationReceiverValueResponse].
  /// [distributionGroupListReceiverValue] The user object receiver value.
  /// [subscriptionReceiverValue] The user object receiver value.
  /// [userObjectReceiverValue] The user object receiver value.
  NotificationReceiverValueResponse({
    this.distributionGroupListReceiverValue,
    this.subscriptionReceiverValue,
    this.userObjectReceiverValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'distributionGroupListReceiverValue': ?distributionGroupListReceiverValue == null ? null : distributionGroupListReceiverValue!.toMap(),
      'subscriptionReceiverValue': ?subscriptionReceiverValue == null ? null : subscriptionReceiverValue!.toMap(),
      'userObjectReceiverValue': ?userObjectReceiverValue == null ? null : userObjectReceiverValue!.toMap(),
    };
  }

  factory NotificationReceiverValueResponse.fromMap(Map<String, dynamic> map) {
    return NotificationReceiverValueResponse(
      distributionGroupListReceiverValue: map['distributionGroupListReceiverValue'] == null ? null : DistributionGroupListReceiverValueResponse.fromMap((map['distributionGroupListReceiverValue'] as Map).cast<String, dynamic>()),
      subscriptionReceiverValue: map['subscriptionReceiverValue'] == null ? null : SubscriptionReceiverValueResponse.fromMap((map['subscriptionReceiverValue'] as Map).cast<String, dynamic>()),
      userObjectReceiverValue: map['userObjectReceiverValue'] == null ? null : UserObjectReceiverValueResponse.fromMap((map['userObjectReceiverValue'] as Map).cast<String, dynamic>()),
    );
  }
}

