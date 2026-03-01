// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'subscription_state_override_action_response.dart';

/// The subscription lifecycle notification specifications.
class ProviderRegistrationPropertiesSubscriptionLifecycleNotificationSpecificationsResponse {
  /// The soft delete TTL.
  final String? softDeleteTTL;
  /// The subscription state override actions.
  final List<SubscriptionStateOverrideActionResponse>? subscriptionStateOverrideActions;

  /// Creates a new [ProviderRegistrationPropertiesSubscriptionLifecycleNotificationSpecificationsResponse].
  /// [softDeleteTTL] The soft delete TTL.
  /// [subscriptionStateOverrideActions] The subscription state override actions.
  ProviderRegistrationPropertiesSubscriptionLifecycleNotificationSpecificationsResponse({
    this.softDeleteTTL,
    this.subscriptionStateOverrideActions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'softDeleteTTL': ?softDeleteTTL,
      'subscriptionStateOverrideActions': ?subscriptionStateOverrideActions == null ? null : pulumi.Input.encodeList<SubscriptionStateOverrideActionResponse, Map<String, dynamic>>(subscriptionStateOverrideActions!, (value) => value.toMap()),
    };
  }

  factory ProviderRegistrationPropertiesSubscriptionLifecycleNotificationSpecificationsResponse.fromMap(Map<String, dynamic> map) {
    return ProviderRegistrationPropertiesSubscriptionLifecycleNotificationSpecificationsResponse(
      softDeleteTTL: map['softDeleteTTL'] == null ? null : map['softDeleteTTL'] as String,
      subscriptionStateOverrideActions: map['subscriptionStateOverrideActions'] == null ? null : pulumi.Input.decodeList<SubscriptionStateOverrideActionResponse>(map['subscriptionStateOverrideActions'], (value) => SubscriptionStateOverrideActionResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

