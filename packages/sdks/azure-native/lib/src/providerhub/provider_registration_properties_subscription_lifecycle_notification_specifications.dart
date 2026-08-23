// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'subscription_state_override_action.dart';

/// The subscription lifecycle notification specifications.
class ProviderRegistrationPropertiesSubscriptionLifecycleNotificationSpecifications {
  /// The soft delete TTL.
  final pulumi.Input<String>? softDeleteTTL;
  /// The subscription state override actions.
  final pulumi.Input<List<SubscriptionStateOverrideAction>>? subscriptionStateOverrideActions;

  /// Creates a new [ProviderRegistrationPropertiesSubscriptionLifecycleNotificationSpecifications].
  /// [softDeleteTTL] The soft delete TTL.
  /// [subscriptionStateOverrideActions] The subscription state override actions.
  const ProviderRegistrationPropertiesSubscriptionLifecycleNotificationSpecifications({
    this.softDeleteTTL,
    this.subscriptionStateOverrideActions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'softDeleteTTL': ?softDeleteTTL,
      'subscriptionStateOverrideActions': ?pulumi.Input.mapOptionalInputValue<List<SubscriptionStateOverrideAction>, List<Map<String, dynamic>>>(subscriptionStateOverrideActions, (value) => pulumi.Input.encodeList<SubscriptionStateOverrideAction, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ProviderRegistrationPropertiesSubscriptionLifecycleNotificationSpecifications.fromMap(Map<String, dynamic> map) {
    return ProviderRegistrationPropertiesSubscriptionLifecycleNotificationSpecifications(
      softDeleteTTL: (() { final guardedValue = map['softDeleteTTL']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subscriptionStateOverrideActions: (() { final guardedValue = map['subscriptionStateOverrideActions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SubscriptionStateOverrideAction>(guardedValue, (value) => SubscriptionStateOverrideAction.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
