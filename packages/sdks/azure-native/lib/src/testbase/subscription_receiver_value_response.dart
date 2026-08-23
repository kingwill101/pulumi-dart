// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The subscription role receiver value.
class SubscriptionReceiverValueResponse {
  /// The role of the notification receiver.
  final pulumi.Input<String>? role;
  /// The subscription id of the notification receiver.
  final pulumi.Input<String>? subscriptionId;
  /// The subscription name of the notification receiver.
  final pulumi.Input<String>? subscriptionName;

  /// Creates a new [SubscriptionReceiverValueResponse].
  /// [role] The role of the notification receiver.
  /// [subscriptionId] The subscription id of the notification receiver.
  /// [subscriptionName] The subscription name of the notification receiver.
  const SubscriptionReceiverValueResponse({
    this.role,
    this.subscriptionId,
    this.subscriptionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'role': ?role,
      'subscriptionId': ?subscriptionId,
      'subscriptionName': ?subscriptionName,
    };
  }

  factory SubscriptionReceiverValueResponse.fromMap(Map<String, dynamic> map) {
    return SubscriptionReceiverValueResponse(
      role: (() { final guardedValue = map['role']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subscriptionId: (() { final guardedValue = map['subscriptionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subscriptionName: (() { final guardedValue = map['subscriptionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
