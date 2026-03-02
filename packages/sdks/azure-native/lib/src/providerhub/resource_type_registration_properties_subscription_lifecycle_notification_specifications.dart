// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'subscription_state_override_action.dart';

/// The subscription lifecycle notification specifications.
class ResourceTypeRegistrationPropertiesSubscriptionLifecycleNotificationSpecifications {
  /// The soft delete TTL.
  final pulumi.Input<String>? softDeleteTTL;
  /// The subscription state override actions.
  final pulumi.Input<List<SubscriptionStateOverrideAction>>? subscriptionStateOverrideActions;

  /// Creates a new [ResourceTypeRegistrationPropertiesSubscriptionLifecycleNotificationSpecifications].
  /// [softDeleteTTL] The soft delete TTL.
  /// [subscriptionStateOverrideActions] The subscription state override actions.
  ResourceTypeRegistrationPropertiesSubscriptionLifecycleNotificationSpecifications({
    this.softDeleteTTL,
    this.subscriptionStateOverrideActions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'softDeleteTTL': ?softDeleteTTL,
      'subscriptionStateOverrideActions': ?pulumi.Input.mapOptionalInputValue<List<SubscriptionStateOverrideAction>, List<Map<String, dynamic>>>(subscriptionStateOverrideActions, (value) => pulumi.Input.encodeList<SubscriptionStateOverrideAction, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ResourceTypeRegistrationPropertiesSubscriptionLifecycleNotificationSpecifications.fromMap(Map<String, dynamic> map) {
    return ResourceTypeRegistrationPropertiesSubscriptionLifecycleNotificationSpecifications(
      softDeleteTTL: map['softDeleteTTL'] == null ? null : (map['softDeleteTTL']! as String).input(),
      subscriptionStateOverrideActions: map['subscriptionStateOverrideActions'] == null ? null : (pulumi.Input.decodeList<SubscriptionStateOverrideAction>(map['subscriptionStateOverrideActions']!, (value) => SubscriptionStateOverrideAction.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

