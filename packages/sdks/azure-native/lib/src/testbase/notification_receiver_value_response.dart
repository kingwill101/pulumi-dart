// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'distribution_group_list_receiver_value_response.dart';
import 'subscription_receiver_value_response.dart';
import 'user_object_receiver_value_response.dart';

/// A notification event receiver value.
class NotificationReceiverValueResponse {
  /// The user object receiver value.
  final pulumi.Input<DistributionGroupListReceiverValueResponse>? distributionGroupListReceiverValue;
  /// The user object receiver value.
  final pulumi.Input<SubscriptionReceiverValueResponse>? subscriptionReceiverValue;
  /// The user object receiver value.
  final pulumi.Input<UserObjectReceiverValueResponse>? userObjectReceiverValue;

  /// Creates a new [NotificationReceiverValueResponse].
  /// [distributionGroupListReceiverValue] The user object receiver value.
  /// [subscriptionReceiverValue] The user object receiver value.
  /// [userObjectReceiverValue] The user object receiver value.
  const NotificationReceiverValueResponse({
    this.distributionGroupListReceiverValue,
    this.subscriptionReceiverValue,
    this.userObjectReceiverValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'distributionGroupListReceiverValue': ?pulumi.Input.mapOptionalInputValue<DistributionGroupListReceiverValueResponse, Map<String, dynamic>>(distributionGroupListReceiverValue, (value) => value.toMap()),
      'subscriptionReceiverValue': ?pulumi.Input.mapOptionalInputValue<SubscriptionReceiverValueResponse, Map<String, dynamic>>(subscriptionReceiverValue, (value) => value.toMap()),
      'userObjectReceiverValue': ?pulumi.Input.mapOptionalInputValue<UserObjectReceiverValueResponse, Map<String, dynamic>>(userObjectReceiverValue, (value) => value.toMap()),
    };
  }

  factory NotificationReceiverValueResponse.fromMap(Map<String, dynamic> map) {
    return NotificationReceiverValueResponse(
      distributionGroupListReceiverValue: (() { final guardedValue = map['distributionGroupListReceiverValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DistributionGroupListReceiverValueResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      subscriptionReceiverValue: (() { final guardedValue = map['subscriptionReceiverValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubscriptionReceiverValueResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      userObjectReceiverValue: (() { final guardedValue = map['userObjectReceiverValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UserObjectReceiverValueResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

