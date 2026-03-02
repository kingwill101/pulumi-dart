// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSubscriptionsSubscription {
  /// The subscription display name.
  final pulumi.Input<String> displayName;
  /// The ID of this subscription.
  final pulumi.Input<String> id;
  /// The subscription location placement ID.
  final pulumi.Input<String> locationPlacementId;
  /// The subscription quota ID.
  final pulumi.Input<String> quotaId;
  /// The subscription spending limit.
  final pulumi.Input<String> spendingLimit;
  /// The subscription state. Possible values are Enabled, Warned, PastDue, Disabled, and Deleted.
  final pulumi.Input<String> state;
  /// The subscription GUID.
  final pulumi.Input<String> subscriptionId;
  /// A mapping of tags assigned to the resource.
  final pulumi.Input<Map<String, String>> tags;
  /// The subscription tenant ID.
  final pulumi.Input<String> tenantId;

  /// Creates a new [GetSubscriptionsSubscription].
  /// [displayName] The subscription display name.
  /// [id] The ID of this subscription.
  /// [locationPlacementId] The subscription location placement ID.
  /// [quotaId] The subscription quota ID.
  /// [spendingLimit] The subscription spending limit.
  /// [state] The subscription state. Possible values are Enabled, Warned, PastDue, Disabled, and Deleted.
  /// [subscriptionId] The subscription GUID.
  /// [tags] A mapping of tags assigned to the resource.
  /// [tenantId] The subscription tenant ID.
  GetSubscriptionsSubscription({
    required this.displayName,
    required this.id,
    required this.locationPlacementId,
    required this.quotaId,
    required this.spendingLimit,
    required this.state,
    required this.subscriptionId,
    required this.tags,
    required this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': displayName,
      'id': id,
      'locationPlacementId': locationPlacementId,
      'quotaId': quotaId,
      'spendingLimit': spendingLimit,
      'state': state,
      'subscriptionId': subscriptionId,
      'tags': tags,
      'tenantId': tenantId,
    };
  }

  factory GetSubscriptionsSubscription.fromMap(Map<String, dynamic> map) {
    return GetSubscriptionsSubscription(
      displayName: (map['displayName'] as String).input(),
      id: (map['id'] as String).input(),
      locationPlacementId: (map['locationPlacementId'] as String).input(),
      quotaId: (map['quotaId'] as String).input(),
      spendingLimit: (map['spendingLimit'] as String).input(),
      state: (map['state'] as String).input(),
      subscriptionId: (map['subscriptionId'] as String).input(),
      tags: ((map['tags'] as Map).cast<String, String>()).input(),
      tenantId: (map['tenantId'] as String).input(),
    );
  }
}

