// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getSubscription.
class GetSubscriptionResult {
  /// The subscription display name.
  final String displayName;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The subscription location placement ID.
  final String locationPlacementId;
  /// The subscription quota ID.
  final String quotaId;
  /// The subscription spending limit.
  final String spendingLimit;
  /// The subscription state. Possible values are Enabled, Warned, PastDue, Disabled, and Deleted.
  final String state;
  /// The subscription GUID.
  final String subscriptionId;
  /// A mapping of tags assigned to the Subscription.
  final Map<String, String> tags;
  /// The subscription tenant ID.
  final String tenantId;

  /// Creates a new [GetSubscriptionResult].
  /// [displayName] The subscription display name.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [locationPlacementId] The subscription location placement ID.
  /// [quotaId] The subscription quota ID.
  /// [spendingLimit] The subscription spending limit.
  /// [state] The subscription state. Possible values are Enabled, Warned, PastDue, Disabled, and Deleted.
  /// [subscriptionId] The subscription GUID.
  /// [tags] A mapping of tags assigned to the Subscription.
  /// [tenantId] The subscription tenant ID.
  const GetSubscriptionResult({
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

  factory GetSubscriptionResult.fromMap(Map<String, dynamic> map) {
    return GetSubscriptionResult(
      displayName: map['displayName'] as String,
      id: map['id'] as String,
      locationPlacementId: map['locationPlacementId'] as String,
      quotaId: map['quotaId'] as String,
      spendingLimit: map['spendingLimit'] as String,
      state: map['state'] as String,
      subscriptionId: map['subscriptionId'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      tenantId: map['tenantId'] as String,
    );
  }
}

