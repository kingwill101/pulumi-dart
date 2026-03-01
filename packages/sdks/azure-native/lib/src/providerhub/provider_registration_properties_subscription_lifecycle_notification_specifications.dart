// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'subscription_state_override_action.dart';

/// The subscription lifecycle notification specifications.
class ProviderRegistrationPropertiesSubscriptionLifecycleNotificationSpecifications {
  /// The soft delete TTL.
  final String? softDeleteTTL;
  /// The subscription state override actions.
  final List<SubscriptionStateOverrideAction>? subscriptionStateOverrideActions;

  /// Creates a new [ProviderRegistrationPropertiesSubscriptionLifecycleNotificationSpecifications].
  /// [softDeleteTTL] The soft delete TTL.
  /// [subscriptionStateOverrideActions] The subscription state override actions.
  ProviderRegistrationPropertiesSubscriptionLifecycleNotificationSpecifications({
    this.softDeleteTTL,
    this.subscriptionStateOverrideActions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'softDeleteTTL': ?softDeleteTTL,
      'subscriptionStateOverrideActions': ?subscriptionStateOverrideActions == null ? null : pulumi.Input.encodeList<SubscriptionStateOverrideAction, Map<String, dynamic>>(subscriptionStateOverrideActions!, (value) => value.toMap()),
    };
  }

  factory ProviderRegistrationPropertiesSubscriptionLifecycleNotificationSpecifications.fromMap(Map<String, dynamic> map) {
    return ProviderRegistrationPropertiesSubscriptionLifecycleNotificationSpecifications(
      softDeleteTTL: map['softDeleteTTL'] == null ? null : map['softDeleteTTL'] as String,
      subscriptionStateOverrideActions: map['subscriptionStateOverrideActions'] == null ? null : pulumi.Input.decodeList<SubscriptionStateOverrideAction>(map['subscriptionStateOverrideActions'], (value) => SubscriptionStateOverrideAction.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

