// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getSubscription.
class GetSubscriptionResult {
  /// The subscription display name.
  final String? displayName;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The subscription location placement ID.
  final String? locationPlacementId;
  /// The subscription quota ID.
  final String? quotaId;
  /// The subscription spending limit.
  final String? spendingLimit;
  /// The subscription state. Possible values are Enabled, Warned, PastDue, Disabled, and Deleted.
  final String? state;
  /// The subscription GUID.
  final String? subscriptionId;
  /// A mapping of tags assigned to the Subscription.
  final Map<String, String>? tags;
  /// The subscription tenant ID.
  final String? tenantId;

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
    this.displayName,
    this.id,
    this.locationPlacementId,
    this.quotaId,
    this.spendingLimit,
    this.state,
    this.subscriptionId,
    this.tags,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'id': ?id,
      'locationPlacementId': ?locationPlacementId,
      'quotaId': ?quotaId,
      'spendingLimit': ?spendingLimit,
      'state': ?state,
      'subscriptionId': ?subscriptionId,
      'tags': ?tags,
      'tenantId': ?tenantId,
    };
  }

  factory GetSubscriptionResult.fromMap(Map<String, dynamic> map) {
    return GetSubscriptionResult(
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      locationPlacementId: (() { final guardedValue = map['locationPlacementId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      quotaId: (() { final guardedValue = map['quotaId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      spendingLimit: (() { final guardedValue = map['spendingLimit']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      subscriptionId: (() { final guardedValue = map['subscriptionId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
