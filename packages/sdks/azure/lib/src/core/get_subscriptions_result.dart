// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_subscriptions_subscription.dart';

/// Result data returned by getSubscriptions.
class GetSubscriptionsResult {
  final String? displayNameContains;
  final String? displayNamePrefix;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// One or more `subscription` blocks as defined below.
  final List<GetSubscriptionsSubscription> subscriptions;

  /// Creates a new [GetSubscriptionsResult].
  /// [displayNameContains] Optional.
  /// [displayNamePrefix] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [subscriptions] One or more `subscription` blocks as defined below.
  const GetSubscriptionsResult({
    this.displayNameContains,
    this.displayNamePrefix,
    required this.id,
    required this.subscriptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayNameContains': ?displayNameContains,
      'displayNamePrefix': ?displayNamePrefix,
      'id': id,
      'subscriptions': pulumi.Input.encodeList<GetSubscriptionsSubscription, Map<String, dynamic>>(subscriptions, (value) => value.toMap()),
    };
  }

  factory GetSubscriptionsResult.fromMap(Map<String, dynamic> map) {
    return GetSubscriptionsResult(
      displayNameContains: (() { final guardedValue = map['displayNameContains']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayNamePrefix: (() { final guardedValue = map['displayNamePrefix']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      subscriptions: pulumi.Input.decodeList<GetSubscriptionsSubscription>(map['subscriptions']!, (value) => GetSubscriptionsSubscription.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
