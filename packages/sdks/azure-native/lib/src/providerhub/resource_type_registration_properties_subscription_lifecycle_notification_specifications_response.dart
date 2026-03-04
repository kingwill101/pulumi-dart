// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'subscription_state_override_action_response.dart';

/// The subscription lifecycle notification specifications.
class ResourceTypeRegistrationPropertiesSubscriptionLifecycleNotificationSpecificationsResponse {
  /// The soft delete TTL.
  final pulumi.Input<String>? softDeleteTTL;

  /// The subscription state override actions.
  final pulumi.Input<List<SubscriptionStateOverrideActionResponse>>?
  subscriptionStateOverrideActions;

  /// Creates a new [ResourceTypeRegistrationPropertiesSubscriptionLifecycleNotificationSpecificationsResponse].
  /// [softDeleteTTL] The soft delete TTL.
  /// [subscriptionStateOverrideActions] The subscription state override actions.
  ResourceTypeRegistrationPropertiesSubscriptionLifecycleNotificationSpecificationsResponse({
    this.softDeleteTTL,
    this.subscriptionStateOverrideActions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'softDeleteTTL': ?softDeleteTTL,
      'subscriptionStateOverrideActions':
          ?pulumi.Input.mapOptionalInputValue<
            List<SubscriptionStateOverrideActionResponse>,
            List<Map<String, dynamic>>
          >(
            subscriptionStateOverrideActions,
            (value) =>
                pulumi.Input.encodeList<
                  SubscriptionStateOverrideActionResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory ResourceTypeRegistrationPropertiesSubscriptionLifecycleNotificationSpecificationsResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return ResourceTypeRegistrationPropertiesSubscriptionLifecycleNotificationSpecificationsResponse(
      softDeleteTTL: (() {
        final guardedValue = map['softDeleteTTL'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      subscriptionStateOverrideActions: (() {
        final guardedValue = map['subscriptionStateOverrideActions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<SubscriptionStateOverrideActionResponse>(
            guardedValue,
            (value) => SubscriptionStateOverrideActionResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
